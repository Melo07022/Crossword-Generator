import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class WhatNew extends StatelessWidget {
  const WhatNew({Key? key}) : super(key: key);

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
                Text("Co się zmieniło?", style: GoogleFonts.ubuntu(textStyle:  TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),),
                Image.asset("images/promotion.png", width: 110, height: 110,)
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
                      Text("Nowości w Aplikacji!", style: GoogleFonts.ubuntu(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),textAlign: TextAlign.center),
                      SizedBox(height: 20,),
                      Text("Tutaj będzie przykładowy tekst opisujący co się znajduje w aplikacji po aktualizacji", style: TextStyle(fontSize: 16),textAlign: TextAlign.center)

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
