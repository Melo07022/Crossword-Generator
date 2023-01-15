import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsApp extends StatelessWidget {
  const SettingsApp({Key? key}) : super(key: key);

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
                Text("Zrób po swojemu!", style: GoogleFonts.ubuntu(textStyle:  TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),),
                Image.asset("images/mechanic.png", width: 120, height: 120,)
              ],
            ),

            Expanded(
              child: ClipRRect(
                child: Container(
                  color: Colors.white,

                  child: Column(

                    children: [
                      Padding(padding: EdgeInsets.only(top: 20,),),
                      Row(
                        children: [
                          Text("  Tryb Ciemny:", style: GoogleFonts.alice(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),)
                        ],
                      ),
                      SizedBox(height: 20,),

                      Row(
                        children: [
                          Text("  Muzyka:", style: GoogleFonts.alice(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),)
                        ],
                      )
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