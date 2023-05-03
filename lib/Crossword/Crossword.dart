import 'package:cros_gen/Database/DatabaseManager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sqflite/sqflite.dart';

import '../Database/Questions.dart';
import '../Ending/Lose.dart';
import '../Ending/Win.dart';


class CrosswordGame extends StatefulWidget {
  final int Difficulty;
  const CrosswordGame( int difficulty,{Key? key }) :  Difficulty = difficulty, super(key: key);
  
  @override
  _CrosswordGameState createState() => _CrosswordGameState(Difficulty);
}

class _CrosswordGameState extends State<CrosswordGame> {
  bool _showCrossword = true;
  bool _showQuestions = false;
  int Difficulty;
  List<Question>? _questions;
  List<List<bool>> _answers;
  
  _CrosswordGameState(int difficulty) : Difficulty = difficulty, _answers = []{
    DatabaseManager.getQuestions(DatabaseManager.database, Difficulty, 5).then((value) =>  setState(() {
      _questions = value;
      _answers = List.generate(_questions!.length, (i) => List.generate(_questions![i].answer.length, (j)=> false, growable: false), growable: false);
    }));
  }

  @override
  Widget build(BuildContext context) {
    var questions = _questions?.asMap().entries.map((e) => Text((e.key +1).toString() + ". " + e.value.question)).toList() ??[];
    return Scaffold(
      backgroundColor: Colors.white,
      body: _showCrossword
          ? LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final crosswordsCount = (constraints.maxWidth / 40).floor();
          final crosswordsWidth = constraints.maxWidth / crosswordsCount;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 ...(_questions?.asMap().entries.map((question) =>  Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [Text((question.key + 1).toString()), ...List.generate(
                    question.value.answer.length,
                        (index) => Container(
                      width: crosswordsWidth,
                      height: crosswordsWidth,
                      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 5),
                      decoration: BoxDecoration(
                        color:
                             Colors.grey[400],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: TextField(
                        onChanged: (value){
                          _answers [question.key][index] = value == question.value.answer[index];
                          if (value == question.value.answer[index]){
                            print("Trafiłeś literke");
                          }
                          else {
                            print("Ups, nie ta lterka");
                          }
                        },
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  )],
                )) ??[]),
                SizedBox(height: 16),
                ElevatedButton(
                  child: Text("Zakończ"),
                  onPressed: () {
                    if(_answers.every((element) => element.every((element2) => element2)))
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WinPage()));
                    else {
                      int score = _answers.expand((e) => e.map((e) => e == true ? 1:0)).reduce((value, element) => value + element); // to samo ale zamienia wszystkie true na 1 i je sumuje
                      int maxScore = _answers.expand((element) => element.map((e) => 1)).reduce((value, element) => value + element); //lista list, expand robi liste, rozrzuca na kazdym elemence, robi pojedyncza liste w zagniezdzonej listach, elementy wewnatrz przechodzi zewnetrzenej listy, zamienia elemeny na 1 i sumuje.
                      Navigator.push(context, MaterialPageRoute(builder: (
                          context) => LosePage(score, maxScore)));
                    };
                  },
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _showQuestions = !_showQuestions;
                    });
                  },
                  child: Text(_showQuestions ? 'Ukryj pytania' : 'Pytania'),
                ),
                SizedBox(height: 16),
                _showQuestions
                    ? Column(
                  children:
                    questions
                )
                    : SizedBox.shrink(),
              ],

            ),
          );
        },
      )
          : SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ],
        ),
      ),
    );
  }
}