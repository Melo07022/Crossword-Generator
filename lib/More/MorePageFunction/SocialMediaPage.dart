import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri tiktok = Uri.parse('https://www.tiktok.com');
    final Uri instagram = Uri.parse('https://www.instagram.com/nba/');
    final Uri twitter = Uri.parse('https://twitter.com/');
    final Uri facebook = Uri.parse('https://www.facebook.com/');
    final Uri email= Uri.parse('mailto: kamilmichalski047@gmail.com');
    final Uri youtube = Uri.parse('https://www.youtube.com/');
    return Scaffold(
      backgroundColor: Color(0xFF1A237E),

      body: SafeArea(

        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Social Media", style: GoogleFonts.ubuntu(textStyle:  TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),),
                Image.asset("images/socialmediapage.png", width: 100, height: 100,)
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
                      Text("Jeśli chcesz zadać pytanie, albo śledzić nasz rozwój to znajdziesz nas tutaj.",
                          style: GoogleFonts.ubuntu(textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),textAlign: TextAlign.center,),
                      SizedBox(height: 20,),
                      Icon(Icons.arrow_downward, size: 40,),
                      SizedBox(height: 60,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: (() async {
                              launchUrl(tiktok);
                            }),
                            child: Image.asset("images/tiktok.png", width: 100, height: 100,),
                          ),

                          GestureDetector(
                            onTap: (() async {
                              launchUrl(instagram);
                            }),
                            child: Image.asset("images/instagram.png", width: 100, height: 100,),
                          )
                        ],
                      ),
                      SizedBox(height: 30,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: (() async {
                              launchUrl(twitter);
                            }),
                            child: Image.asset("images/twitter.png", width: 100, height: 100,),
                          ),

                          GestureDetector(
                            onTap: (() async {
                              launchUrl(facebook);
                            }),
                            child: Image.asset("images/facebook.png", width: 100, height: 100,),
                          )
                        ],
                      ),
                      SizedBox(height: 30,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: (() async {
                              launchUrl(email);
                            }),
                            child: Image.asset("images/email.png", width: 100, height: 100,),
                          ),
                          GestureDetector(
                            onTap: (() async {
                              launchUrl(youtube);
                            }),
                            child: Image.asset("images/youtube.png", width: 100, height: 100,),
                          ),
                        ],
                      ),
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
