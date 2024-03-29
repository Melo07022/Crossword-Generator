import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'HomePage/Home.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'Database/DatabaseManager.dart';



void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseManager.InitializeDatabase();
  var questions = await DatabaseManager.getAllQuestions(DatabaseManager.database);
  for(int i = 0; i<questions.length; i++){
    print(questions[i]);
  }
  print("-------------------------------");
  var questions2 = await DatabaseManager.getQuestions(DatabaseManager.database, 2,5);
  for(int i = 0; i<questions2.length; i++){
    print(questions2[i]);
  }

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}





class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Generator Krzyżówek",
      home: HomePageScreen(),
    );


  }
}




//scaffold - całe okno aplikacji
//Floating ActionButton - pojedyncze kontrolki
//Row - rząd (pozioma kolumna)
//Center - pozycjonuje coś
//Padding - margines
//home - strona główna w apliakcji
//instancja - czyli konkretny jeden byt stworzony w oparciu o wzór opisany w ramach klasy.
/*style — klasa określająca style tekstu. Udostępnia właściwości, które pozwalają
na zmianę koloru tekstu, tła, rodziny czcionek (umożliwiając użycie niestandardowej
czcionki z zasobów; zobacz rozdział 3.), wysokość linii, rozmiar czcionki i tak dalej. */

/*textAlign — kontroluje wyrównanie tekstu w poziomie. Dostępne są opcje takie
jak wyśrodkowanie lub wyjustowanie.
*/

/*
 maxLines — umożliwia określenie maksymalnej liczby wierszy tekstu, które
zostaną obcięte w przypadku przekroczenia limitu
 */

/*
overflow — określa, w jaki sposób tekst zostanie obcięty w przypadku przepełnienia.
Dostępne są opcje takie jak limit maksymalnej liczby wierszy. Tę właściwość
można wykorzystać, aby np. na końcu zdania dodać wielokropek.
 */

// => - uzywane do skracania funkcji, jest skrotem dla return, tzw "składnia strzałek"
// ListTile - Komponent, ktory pozwala zbudowac prosta liste.
// leading - dodanie czegos przed czyms, z lewej strony zazwuczaj

/*

  Różnica miedzy "child", a "children":

  Child zajmuje sie jednym widgetem np. child: Text('tak')
  A
  children listą widgetow  np. children: <Widget>[Text('foo'), Text('bar')]

 */

//Subtitle - podtytuł
// trailing - dodaje do prawej storny cos