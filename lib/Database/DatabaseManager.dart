import 'package:path/path.dart';
import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';

import 'Questions.dart';


class DatabaseManager {
  static late Database database;
  static Future InitializeDatabase(

      )async{
    WidgetsFlutterBinding.ensureInitialized();
     database = await openDatabase(


      join(await getDatabasesPath(), 'Question_database.db'),
      onUpgrade: (db, oldVersion, newVersion) {
        db.delete("questions");
        insertQuestion(const Question(id: 1, question: 'Zieloe Warzywo?', answer: 'Ogórek', difficulty: 1), db);
        insertQuestion(const Question(id: 2, question: 'Ostry przedmiot?', answer: 'Nóż', difficulty: 1), db);
        insertQuestion(const Question(id: 3, question: 'Co nazywa się małym miasteczkiem? ', answer: 'Wioska ', difficulty: 1), db);
        insertQuestion(const Question(id: 4, question: 'Włoska potrawa z sosem pomidorowym? ', answer: 'Spaghetti ', difficulty: 1), db);
        insertQuestion(const Question(id: 5, question: 'Który kontynent jest największy? ', answer: ' Azja', difficulty: 1), db);
        insertQuestion(const Question(id: 6, question: 'Jak nazywa się przyrząd służący do mielenia kawy? ', answer: ' Młynek', difficulty: 1), db);
        insertQuestion(const Question(id: 7, question: ' Jak nazywa się instrument muzyczny z dęciakami?', answer: 'Saksofon ', difficulty: 1), db);
        insertQuestion(const Question(id: 8, question: ' Jak nazywa się przyrząd do mycia podłogi?', answer: 'Mop ', difficulty: 1), db);
        insertQuestion(const Question(id: 9, question: 'Jak nazywa się przyrząd do usuwania śniegu z ulicy? ', answer: 'Pług ', difficulty: 1), db);
        insertQuestion(const Question(id: 10, question: 'Co to jest narzędzie służące do cięcia drewna? ', answer: ' Piła', difficulty: 1), db);
        insertQuestion(const Question(id: 11, question: 'Co to jest narzędzie służące do wiercenia otworów? ', answer: ' Wiertarka', difficulty: 1), db);
        insertQuestion(const Question(id: 12, question: ' narzędzie służące do szycia? ', answer: 'Igła', difficulty: 1), db);
        insertQuestion(const Question(id: 13, question: 'małe zwierzątko z piórami i dziobem? ', answer: ' kaczka ', difficulty: 1), db);
        insertQuestion(const Question(id: 14, question: 'instrument muzyczny z metalowymi blaszkami? ', answer: 'Cymbałki ', difficulty: 1), db);
        insertQuestion(const Question(id: 15, question: 'narzędzie służące do cięcia papieru? ', answer: ' Nożyczki', difficulty: 1), db);
        insertQuestion(const Question(id: 16, question: 'Jak nazywa się przyrząd służący do mieszania ciasta?', answer: 'Mikser ', difficulty: 1), db);
        insertQuestion(const Question(id: 17, question: ' Jak nazywa się duże, szare zwierzę z długim trąbą?', answer: 'Słoń ', difficulty: 1), db);
        insertQuestion(const Question(id: 18, question: 'Jak nazywa się przyrząd służący do gotowania na parze? ', answer: 'Parowar ', difficulty: 1), db);
        insertQuestion(const Question(id: 19, question: ' Jak nazywa się instrument muzyczny z długą szyjką i strunami?', answer: 'Gitara ', difficulty: 1), db);
        insertQuestion(const Question(id: 20, question: 'Napój od krowy ', answer: 'mleko ', difficulty: 1), db);
        insertQuestion(const Question(id: 21, question: 'Jakie miasto jest stolicą Grecji? ', answer: 'Ateny ', difficulty: 2), db);
        insertQuestion(const Question(id: 22, question: 'Jak nazywa się stolica Egiptu? ', answer: 'Kair ', difficulty: 2), db);
        insertQuestion(const Question(id: 23, question: 'Jakie miasto jest stolicą Zambii? ', answer: ' Lusaka', difficulty: 2), db);
        insertQuestion(const Question(id: 24, question: ' Jakie miasto jest stolicą Słowenii? ', answer: ' Lublana', difficulty: 2), db);
        insertQuestion(const Question(id: 25, question: 'Jakie miasto jest stolicą Portugalii? ', answer: 'Lizbona ', difficulty: 2), db);
        insertQuestion(const Question(id: 26, question: 'Jakie miasto jest stolicą Korei Południowej? ', answer: ' Seul', difficulty: 2), db);
        insertQuestion(const Question(id: 27, question: 'Jak nazywa się najwyższa góra w Ameryce Północnej? ', answer: 'Denali ', difficulty: 2), db);
        insertQuestion(const Question(id: 28, question: 'Jak nazywa się męski narząd płciowy u ptaków? ', answer: 'Jądro ', difficulty: 2), db);
        insertQuestion(const Question(id: 29, question: 'Jakie miasto jest stolicą Australii? ', answer: 'Canberra ', difficulty: 2), db);
        insertQuestion(const Question(id: 30, question: 'Jak nazywa się planetoida odkryta w 1801 roku przez Giuseppe Piazzi? ', answer: 'Ceres ', difficulty: 2), db);
        insertQuestion(const Question(id: 31, question: 'Jak nazywa się największa rzeka w Europie? ', answer: ' Wołga', difficulty: 2), db);
        insertQuestion(const Question(id: 32, question: ' Jakie miasto jest stolicą Danii?', answer: 'Kopenhaga ', difficulty: 2), db);
        insertQuestion(const Question(id: 33, question: 'Jak nazywa się stolica Francji? ', answer: 'Paryż ', difficulty: 2), db);
        insertQuestion(const Question(id: 34, question: 'Jakie miasto jest stolicą Kanady? ', answer: 'Ottawa ', difficulty: 2), db);
        insertQuestion(const Question(id: 35, question: 'Najlepsza liga koszykarska ', answer: 'NBA ', difficulty: 2), db);
        insertQuestion(const Question(id: 36, question: 'Jak nazywa się stolica Libii? ', answer: 'Trypolis ', difficulty: 2), db);
        insertQuestion(const Question(id: 37, question: 'Jak miał na imię Mickiewicz? ', answer: 'Adam ', difficulty: 2), db);
        insertQuestion(const Question(id: 38, question: 'Jakie miasto jest stolicą Włoch? ', answer: 'Rzym ', difficulty: 2), db);
        insertQuestion(const Question(id: 39, question: 'Jak nazywa się najwyższa góra w Afryce? ', answer: 'Kilimandżaro ', difficulty: 2), db);
        insertQuestion(const Question(id: 40, question: 'Jakie państwo jest największe pod względem powierzchni na świecie? ', answer: 'Rosja ', difficulty: 2), db);
        insertQuestion(const Question(id: 41, question: 'Ile członków ma zespół BTS? ', answer: 'Siedem ', difficulty: 3), db);
        insertQuestion(const Question(id: 42, question: ' Jak nazywa się instrument muzyczny z drążkiem i dźwiękową skrzynką?', answer: 'Kalimba ', difficulty: 3), db);
        insertQuestion(const Question(id: 43, question: 'W którym kraju leży Kapsztad? ', answer: 'RPA ', difficulty: 3), db);
        insertQuestion(const Question(id: 44, question: 'W jakim mieście znajduje się Pałac Kultury i Nauki? ', answer: 'Warszawa ', difficulty: 3), db);
        insertQuestion(const Question(id: 45, question: 'Jaka jest stolica Finlandii? ', answer: 'Helsinki ', difficulty: 3), db);
        insertQuestion(const Question(id: 46, question: 'W którym kraju urodził się Adolf Hitler? ', answer: 'Austria ', difficulty: 3), db);
        insertQuestion(const Question(id: 47, question: 'Jak nazywa się największe jezioro w Europie? ', answer: 'Ładoga ', difficulty: 3), db);
        insertQuestion(const Question(id: 48, question: 'Która planeta Układu Słonecznego jest największa? ', answer: 'Jowisz ', difficulty: 3), db);
        insertQuestion(const Question(id: 49, question: 'Jak nazywa się rzeka przepływająca przez Kraków? ', answer: 'Wisła ', difficulty: 3), db);
        insertQuestion(const Question(id: 50, question: 'Jakie są największe góry w Polsce? ', answer: 'Tatry ', difficulty: 3), db);
        insertQuestion(const Question(id: 51, question: 'W jakim kraju znajduje się Kanał Sueski? ', answer: 'Egipt ', difficulty: 3), db);
        insertQuestion(const Question(id: 52, question: 'ryba z rodziny dorszowatych, znana z charakterystycznego zapachu ', answer: 'Śledź ', difficulty: 3), db);
        insertQuestion(const Question(id: 53, question: 'W jakim kraju leży miasto Rio de Janeiro?  ', answer: 'Brazylia ', difficulty: 3), db);
        insertQuestion(const Question(id: 54, question: 'Która dynastia rządziła w Chinach w latach 1368-1644? ', answer: 'Ming ', difficulty: 3), db);
        insertQuestion(const Question(id: 55, question: 'W którym kraju leży miasto Marrakesz? ', answer: 'Maroko ', difficulty: 3), db);
        insertQuestion(const Question(id: 56, question: 'Jakie jest najdłuższe jezioro w Polsce? ', answer: 'Śniardwy ', difficulty: 3), db);
        insertQuestion(const Question(id: 57, question: 'jak nazywa się najdłuższa rzeka w Afryce?  ', answer: 'Nil ', difficulty: 3), db);
        insertQuestion(const Question(id: 58, question: 'W jakim kraju leży Czarnobyl? ', answer: 'Ukraina ', difficulty: 3), db);
        insertQuestion(const Question(id: 59, question: 'Jak nazywa się jednostka prądu elektrycznego? ', answer: 'Amper ', difficulty: 3), db);
        insertQuestion(const Question(id: 60, question: 'W którym kraju znajduje się Machu Picchu?  ', answer: 'Peru ', difficulty: 3), db);
        insertQuestion(const Question(id: 61, question: 'W jakim kraju leży Wielkie Jezioro Słone?  ', answer: ' USA', difficulty: 3), db);
        insertQuestion(const Question(id: 62, question: 'Nazwisko twórcy Tesli  ', answer: ' Musk', difficulty: 1), db);
      },

      onCreate: (db, version) {
         db.execute(

          'CREATE TABLE questions(id INTEGER PRIMARY KEY, question TEXT, answer TEXT, difficulty INTEGER)',
        );



      },
      // Set the version. This executes the onCreate function and provides a
      // path to perform database upgrades and downgrades.
      version: 5,

    );
  }

   static Future<void> insertQuestion(Question question, Database db) async {



    await db.insert(
      'questions',

      question.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<Question>> getAllQuestions(Database db) async {
    // Get a reference to the database.

    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await db.query('questions');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return Question(
        id: maps[i]['id'],
        question: maps[i]['question'],
        answer: maps[i]['answer'],
        difficulty: maps[i]['difficulty']
      );
    });
  }


  static Future<List<Question>> getQuestions(Database db, int difficulty, int numberOfQuestions) async {
    // Get a reference to the database.

    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await db.query('questions',
        where: "difficulty = ?",
        whereArgs: [difficulty],
        orderBy: "random()",
        limit: numberOfQuestions,
    );

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return Question(
          id: maps[i]['id'],
          question: maps[i]['question'],
          answer: maps[i]['answer'],
          difficulty: maps[i]['difficulty']
      );
    });
  }
}


