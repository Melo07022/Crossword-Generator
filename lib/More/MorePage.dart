import 'package:cros_gen/AddQA/AddQ_A.dart';
import 'package:cros_gen/More/MorePageFunction/AboutAppPage.dart';
import 'package:cros_gen/More/MorePageFunction/FaqPage.dart';
import 'package:cros_gen/More/MorePageFunction/FeedbackPage.dart';
import 'package:cros_gen/More/MorePageFunction/SocialMediaPage.dart';
import 'package:cros_gen/More/MorePageFunction/WhatsNew.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../Settings/SettingPage.dart';
import 'MorePageFunction/Authors.dart';

class MorePageHome extends StatelessWidget {
  const MorePageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF1A237E),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Więcej opcji!", style: GoogleFonts.ubuntu(textStyle:  TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),),
              Image.asset("images/moreicon.png", width: 120, height: 120,)
            ],
          ),
          Container(
            child: ClipRRect(
              child: Container(
                color: Colors.white,
                height: 900,
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 20)),

                    ListTile(
                      leading: Image.asset('images/loudspeaker.png', width: 50, height: 50,),
                      title: Text('Co nowego?', style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 20)),),
                      trailing: Image.asset('images/arrow.png', width: 40, height: 40,),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => WhatNew()));
                      },
                    ),
                    Divider(
                      thickness: 1.4,
                    ),
                    ListTile(
                      leading: Image.asset('images/chat.png', width: 50, height: 50,),
                      title: Text('FAQ', style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 20)),),
                      trailing: Image.asset('images/arrow.png', width: 40, height: 40,),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Faq()));
                      },
                    ),
                    Divider(
                      thickness: 1.4,
                    ),
                    ListTile(
                      leading: Image.asset('images/feedback.png', width: 50, height: 50,),
                      title: Text('Feedback', style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 20)),),
                      trailing: Image.asset('images/arrow.png', width: 40, height: 40,),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FeedbackP()));
                      },
                    ),
                    Divider(
                      thickness: 1.4,
                    ),
                    ListTile(
                      leading: Image.asset('images/star.png', width: 50, height: 50,),
                      title: Text('Oceń Aplikacje', style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 20)),),
                      trailing: Image.asset('images/arrow.png', width: 40, height: 40,),
                      onTap: () {},
                    ),
                    Divider(
                      thickness: 1.4,
                    ),
                    ListTile(
                      leading: Image.asset('images/share.png', width: 50, height: 50,),
                      title: Text('Udostępnij', style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 20)),),
                      trailing: Image.asset('images/arrow.png', width: 40, height: 40,),
                      onTap: () {},
                    ),
                    Divider(
                      thickness: 1.4,
                    ),
                    ListTile(
                      leading: Image.asset('images/socialmedia.png', width: 50, height: 50,),
                      title: Text('Social Media', style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 20)),),
                      trailing: Image.asset('images/arrow.png', width: 40, height: 40,),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SocialMedia()));
                      },
                    ),
                    Divider(
                      thickness: 1.4,
                    ),
                    ListTile(
                      leading: Image.asset('images/author.png', width: 50, height: 50,),
                      title: Text('Autorzy', style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 20)),),
                      trailing: Image.asset('images/arrow.png', width: 40, height: 40,),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AuthorsPage()));
                      },
                    ),
                    Divider(
                      thickness: 1.4,
                    ),
                    ListTile(
                      leading: Image.asset('images/about-us.png', width: 50, height: 50,),
                      title: Text('O Aplikacji', style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 20)),),
                      trailing: Image.asset('images/arrow.png', width: 40, height: 40,),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AboutApp()));
                      },
                    ),
                    Divider(
                      thickness: 1.4,
                    ),
                    ListTile(
                      leading: Image.asset('images/about-us.png', width: 50, height: 50,),
                      title: Text('Dodaj Wpis', style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 20)),),
                      trailing: Image.asset('images/arrow.png', width: 40, height: 40,),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AddQuestionsPage()));
                      },
                    ),

                  ],
                ),

              ),
            ),
          )

        ],
      ),
    );
  }
}
