import 'package:cros_gen/Database/DatabaseManager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sqflite/sqflite.dart';

import '../Database/Questions.dart';


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
  
  _CrosswordGameState(int difficulty) : Difficulty = difficulty{
    DatabaseManager.getQuestions(DatabaseManager.database, Difficulty, 5).then((value) =>  setState(() {
      _questions = value; }));
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