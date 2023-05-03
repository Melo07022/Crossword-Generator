import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LosePage extends StatelessWidget {
  final int _score;
  final int _maxScore;
  const LosePage(int score, int maxScore, {Key? key}) : _score = score, _maxScore = maxScore, super(key: key);

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
                Text("Wynik Końcowy", style: GoogleFonts.ubuntu(textStyle:  TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),),
                Image.asset("images/autor.png", width: 100, height: 100,)
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
                      Text("Przegrałeś! :(", style: GoogleFonts.ubuntu(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),textAlign: TextAlign.center),
                      SizedBox(height: 20,),
                      Text("Twój wynik: " + _score.toString() + "/" + _maxScore.toString())


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

