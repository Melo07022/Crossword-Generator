import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

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
                Text("O Aplikacji", style: GoogleFonts.ubuntu(textStyle:  TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),),
                Image.asset("images/smartphone.png", width: 100, height: 100,)
              ],
            ),
            Expanded(
              child: ClipRRect(
                child: Container(
                  width: 900,

                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text("O Aplikacji", style: GoogleFonts.ubuntu(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),),
                      SizedBox(height: 20,),
                      Text("Generator krzyżówek ma za zadanie umilić spędzanie wolnego czasu poprzez rozwiązywanie krzyżówek, a także zaczerpnąc nowej "
                          "wiedzy na różne tematy.\n\nAplikacja jest dla każdego kto lubi rozwiązywać krzyżówki.", style: TextStyle(fontSize: 16),),
                      SizedBox(height: 20,),
                      Text("Wersja", style: GoogleFonts.ubuntu(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),),
                      SizedBox(height: 20,),
                      Text("1.0", style: TextStyle(fontSize: 20),),



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

