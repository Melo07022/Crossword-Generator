import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddQuestions extends StatefulWidget {
  const AddQuestions({Key? key}) : super(key: key);

  @override
  State<AddQuestions> createState() => _AddQuestionsState();
}

class _AddQuestionsState extends State<AddQuestions> {
  final controllerTo = TextEditingController();
  final controllerQuestions = TextEditingController();
  final controllerPassword = TextEditingController();

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
                Text("Zaproponuj Pytanie", style: GoogleFonts.ubuntu(textStyle:  TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),),
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
                      buildTextField(title: "Do", controller: controllerTo),
                      const SizedBox(height: 16),
                      buildTextField(title: "Pytanie", controller: controllerQuestions),
                      const SizedBox(height: 16),
                      buildTextField(title: "Hasło", controller: controllerPassword, maxLines: 8),
                      const SizedBox(height: 32,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          minimumSize: Size.fromHeight(50),
                          textStyle: TextStyle(fontSize: 20),
                        ),
                        child: Text('Wyślij'),
                        onPressed: () {},
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
