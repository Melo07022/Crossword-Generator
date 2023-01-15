import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileUser extends StatelessWidget {
  const ProfileUser({Key? key}) : super(key: key);

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
                Text("Twój Profil", style: GoogleFonts.ubuntu(textStyle:  TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),),
                Image.asset("images/userprofile.png", width: 100, height: 100,)
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
                      Text("Twórca aplikacji", style: GoogleFonts.ubuntu(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),textAlign: TextAlign.center),
                      SizedBox(height: 20,),
                      Text("Kamil Michalski", style: TextStyle(fontSize: 16),textAlign: TextAlign.center),
                      SizedBox(height: 20,),


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

