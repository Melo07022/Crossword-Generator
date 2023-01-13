import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Faq extends StatelessWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A237E),

      body: SafeArea(

        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Najczęstsze Pytania", style: GoogleFonts.ubuntu(textStyle:  TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),),
                Image.asset("images/question.png", width: 100, height: 100,)
              ],
            ),
            Expanded(
              child: ClipRRect(
                child: Container(

                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text("Na czym polega aplikacja?", style: GoogleFonts.ubuntu(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),textAlign: TextAlign.center),
                      SizedBox(height: 20,),
                      Text("  Aplikacja polega na rozwiązywaniu krzyżówki oraz zdobyciem nowej wiedzy.", style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
                      SizedBox(height: 20,),

                      Text("Czy aplikacja będzie rozwijana?", style: GoogleFonts.ubuntu(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),textAlign: TextAlign.center),
                      SizedBox(height: 20,),
                      Text("  Tak, aplikacja będzie cały czas rozwijana poprzez ulepszenia funkcyjne, graficzne oraz tworzenie coraz to większej i różnorodnej bazy pytań", style: TextStyle(fontSize: 16), textAlign: TextAlign.center),

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
