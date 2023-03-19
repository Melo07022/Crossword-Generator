import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';

class ProfileUser extends StatefulWidget {
  const ProfileUser({Key? key}) : super(key: key);

  @override
  State<ProfileUser> createState() => _ProfileUserState();
}



class _ProfileUserState extends State<ProfileUser> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF1A237E),

      body:SafeArea(

        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Twój Profil", style: GoogleFonts.ubuntu(textStyle:  TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),),
                Image.asset("images/userprofile.png", width: 100, height: 100,),

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

