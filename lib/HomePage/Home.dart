


import 'package:cros_gen/AddQuestions/AddQuestionPage.dart';
import 'package:cros_gen/DifficultyLevel/LevelDifficulty.dart';
import 'package:cros_gen/More/MorePage.dart';
import 'package:cros_gen/Settings/SettingPage.dart';
import 'package:cros_gen/UserProfile/UserProfilePage.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override



  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color(0xFF1A237E),

      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20.0)),

            //Powitanie
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/whitelogo.png', width: 110, height: 110,),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Text("Cześć Użytkowniku", style: GoogleFonts.ubuntu(textStyle:  TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),),
                    SizedBox(height: 4,),
                    Text("Dobrej Zabawy!", style: TextStyle(color: Colors.grey[200]), )
                  ],
                ),
                SizedBox(width: 13,),
                Image.asset("images/hearts.png", width: 50, height: 50,),
              ],
            ),
            //Reszta Strony głównej
            SizedBox(height: 20,),

            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(50.0), topLeft: Radius.circular(50.0)),
                child: ListView(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 700,
                      child: Center(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 30, height: 60,),
                                Icon(Icons.home, size: 34, color: Colors.deepPurple,),
                                SizedBox(width: 13,),
                                Text("Strona Główna", style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurple)),),
                              ],
                            ),
                            SizedBox.fromSize(
                              size: Size(345,120),
                              child: ClipRRect(
                                child: Material(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Colors.deepPurple,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => GameLevel()));
                                    },
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SizedBox(height: 115,),

                                            Image.asset("images/gamepad.png", width: 100,height: 100, ),
                                            Column(
                                              children: [

                                                Text("Rozpocznij", style: GoogleFonts.ubuntu(textStyle:  TextStyle(fontSize: 35, color: Colors.orange, fontWeight: FontWeight.bold,),),),
                                                Text("Wygeneruj krzyżówkę", style: TextStyle(color: Colors.grey[200]),)

                                              ],

                                            )
                                          ],
                                        )

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [

                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 40.0, right: 20.0),
                                    child: Divider(

                                      height: 50,
                                      color: Colors.deepPurple,
                                      thickness: 2,
                                    ),
                                  ),

                                ),
                                Text("Pozostałe funkcje", style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 20.0, right: 40.0),
                                    child: Divider(

                                      height: 50,
                                      color: Colors.deepPurple,
                                      thickness: 2,
                                    ),
                                  ),

                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [


                                SizedBox.fromSize(
                                  size: Size(170,170),
                                  child: ClipRRect(
                                    child: Material(
                                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                      color: Colors.deepPurple,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileUser()));
                                        },
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image.asset("images/profile.png", width: 50, height: 50,),
                                            Text("Profil", style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 28, color: Colors.orange, fontWeight: FontWeight.bold,)) ,),
                                            Text("Śledź swoje poczynania", style: TextStyle(color: Colors.grey[200]), textAlign: TextAlign.center,)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox.fromSize(
                                  size: Size(170,170),
                                  child: ClipRRect(
                                    child: Material(
                                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                      color: Colors.deepPurple,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsApp()));
                                        },
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image.asset("images/settings.png", width: 50, height: 50,),
                                            Text("Ustawienia", style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 28, color: Colors.orange, fontWeight: FontWeight.bold,),),),
                                            Text("Dopasuj pod siebie", style: TextStyle(color: Colors.grey[200]), textAlign: TextAlign.center,)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 23,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox.fromSize(
                                  size: Size(170,170),
                                  child: ClipRRect(
                                    child: Material(
                                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                      color: Colors.deepPurple,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => AddQuestions()));
                                        },
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image.asset("images/database.png", width: 50, height: 50,),
                                            Text("Dodaj", style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 28, color: Colors.orange, fontWeight: FontWeight.bold,), )),
                                            Text("Zaproponuj pytanie", style: TextStyle(color: Colors.grey[200]), textAlign: TextAlign.center,)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox.fromSize(
                                  size: Size(170,170),
                                  child: ClipRRect(
                                    child: Material(
                                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                      color: Colors.deepPurple,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => MorePageHome()));
                                        },
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image.asset("images/more.png", width: 50, height: 50,),
                                            Text("Więcej", style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 28, color: Colors.orange, fontWeight: FontWeight.bold,),)),
                                            Text("Pozostałe opcje", style: TextStyle(color: Colors.grey[200]), textAlign: TextAlign.center,)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ) ,

    );
  }
}


