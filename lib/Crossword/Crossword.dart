import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CrosswordGame extends StatelessWidget {
  const CrosswordGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(

        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Wybierz poziom trudności'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextButton(
                                onPressed: () {
                                  // kod dla poziomu łatwego
                                },
                                child: Text('Łatwy'),
                              ),
                              TextButton(
                                onPressed: () {
                                  // kod dla poziomu średniego
                                },
                                child: Text('Średni'),
                              ),
                              TextButton(
                                onPressed: () {
                                  // kod dla poziomu trudnego
                                },
                                child: Text('Trudny'),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Text('Wybierz poziom trudności'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}