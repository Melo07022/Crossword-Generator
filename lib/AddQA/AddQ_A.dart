import 'dart:convert';
import 'package:cros_gen/Database/DatabaseManager.dart';
import 'package:cros_gen/Database/Questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class AddQuestionsPage extends StatefulWidget {
  const AddQuestionsPage({Key? key}) : super(key: key);

  @override
  State<AddQuestionsPage> createState() => _AddQuestionsState();
}

class _AddQuestionsState extends State<AddQuestionsPage> {
  final controllerAnswers = TextEditingController();
  final controllerQuestions = TextEditingController();
  final controllerDifficulty = TextEditingController();


  Future sendQuestionToDb(
      ) async {
    var id = await DatabaseManager.getQuestionsMaxId(DatabaseManager.database);
    await DatabaseManager.insertQuestion( Question(id: id, question: controllerQuestions.text, answer: controllerAnswers.text , difficulty: int.parse(controllerDifficulty.text)), DatabaseManager.database);
    print("Dodano pytanie");

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Zapisano Pomyślnie! :D", style: TextStyle(color: Colors.green),)));
  }

  @override
  Widget build(BuildContext context) {

    Widget buildTextField({
      required String title,
      required TextEditingController controller,
      int maxLines = 1,
    }) =>
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const SizedBox(height: 8),
            TextField(controller: controller,
                maxLines: maxLines,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                )
            ),



          ],
        );

    return Scaffold(
      backgroundColor: Color(0xFF1A237E),
      body: SafeArea(
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Dodaj Pytanie", style: GoogleFonts.ubuntu(textStyle:  TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),),
                Image.asset("images/qa.png", width: 100, height: 100,)
              ],
            ),
            Expanded(
              child: ClipRRect(
                child: Container(
                  width: 900,

                  color: Colors.white,
                  child: ListView(
                    padding: EdgeInsets.all(16),
                    children: [
                      Text(" Jeśli masz pomysł na pytanie, które miałoby się znaleźć w krzyżówkach to wypełnij pola i wyślij je do nas!",
                        style: GoogleFonts.ubuntu(textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),textAlign: TextAlign.center,),

                      const SizedBox(height: 16),
                      buildTextField(title: "Pytanie", controller: controllerQuestions, maxLines: 2),
                      const SizedBox(height: 16),
                      buildTextField(title: "Hasło", controller: controllerAnswers),
                      const SizedBox(height: 16),
                      buildTextField(title: "Poziom trudności", controller: controllerDifficulty, maxLines: 1),
                      const SizedBox(height: 16),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          minimumSize: Size.fromHeight(50),
                          textStyle: TextStyle(fontSize: 20),
                        ),
                        child: Text('Wyślij'),
                        onPressed: () {
                          if (controllerQuestions.text.isEmpty ||
                              controllerAnswers.text.isEmpty ||
                              controllerDifficulty.text.isEmpty ) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Wypełnij wszystkie pola!")

                              ),

                            );
                            return;
                          }

                          sendQuestionToDb();
                        },
                      ),

                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
