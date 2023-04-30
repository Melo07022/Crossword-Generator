import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Crossword/Crossword.dart';

class GameLevel extends StatelessWidget {
  const GameLevel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A237E),
      body: SafeArea(

        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(top: 100.0)),
                Text("Wybierz Poziom", style: GoogleFonts.ubuntu(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),)),
                Image.asset("images/ps19.png", width: 150, height: 150,)

              ],
            ),

            Expanded(
              child: Container(
                color: Colors.white,
                width: 500,

                child: Column(
                  children: [
                    SizedBox(height: 80,),
                    Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19.0)
                        ),
                        minimumSize: Size(295, 50),
                        backgroundColor: Colors.deepPurple,
                        textStyle: TextStyle(fontSize: 30),
                      ),
                      child: Text("Łatwy", style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CrosswordGame(1)));
                      },
                    ),
                  ),
                    SizedBox(height: 20,),

                    Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19.0)
                          ),
                          minimumSize: Size(295, 50),
                          backgroundColor: Colors.deepPurple,
                          textStyle: TextStyle(fontSize: 30),
                        ),
                        child: Text("Średni", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CrosswordGame(2)));
                        },
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19.0)
                          ),
                          minimumSize: Size(295, 50),
                          backgroundColor: Colors.deepPurple,
                          textStyle: TextStyle(fontSize: 30),
                        ),
                        child: Text("Trudny", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CrosswordGame(3)));
                        },
                      ),
                    ),
                    SizedBox(height: 20,),

                ]),
              ),
            )

          ],
        ),
      ),
    );
  }
}
