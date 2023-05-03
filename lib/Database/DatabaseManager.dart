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
        insertQuestion(const Question(id: 3, question: 'Co nazywa się małym miasteczkiem? ', answer: 'Wioska', difficulty: 1), db);
        insertQuestion(const Question(id: 4, question: 'Włoska potrawa z sosem pomidorowym? ', answer: 'Spaghetti', difficulty: 1), db);
        insertQuestion(const Question(id: 5, question: 'Który kontynent jest największy? ', answer: 'Azja', difficulty: 1), db);
        insertQuestion(const Question(id: 6, question: 'Jak nazywa się przyrząd służący do mielenia kawy? ', answer: 'Młynek', difficulty: 1), db);
        insertQuestion(const Question(id: 7, question: ' Jak nazywa się instrument muzyczny z dęciakami?', answer: 'Saksofon', difficulty: 1), db);
        insertQuestion(const Question(id: 8, question: ' Jak nazywa się przyrząd do mycia podłogi?', answer: 'Mop', difficulty: 1), db);
        insertQuestion(const Question(id: 9, question: 'Jak nazywa się przyrząd do usuwania śniegu z ulicy? ', answer: 'Pług', difficulty: 1), db);
        insertQuestion(const Question(id: 10, question: 'Co to jest narzędzie służące do cięcia drewna? ', answer: 'Piła', difficulty: 1), db);
        insertQuestion(const Question(id: 11, question: 'Co to jest narzędzie służące do wiercenia otworów? ', answer: 'Wiertarka', difficulty: 1), db);
        insertQuestion(const Question(id: 12, question: ' narzędzie służące do szycia? ', answer: 'Igła', difficulty: 1), db);
        insertQuestion(const Question(id: 13, question: 'małe zwierzątko z piórami i dziobem? ', answer: 'kaczka', difficulty: 1), db);
        insertQuestion(const Question(id: 14, question: 'instrument muzyczny z metalowymi blaszkami? ', answer: 'Cymbałki', difficulty: 1), db);
        insertQuestion(const Question(id: 15, question: 'narzędzie służące do cięcia papieru? ', answer: 'Nożyczki', difficulty: 1), db);
        insertQuestion(const Question(id: 16, question: 'Jak nazywa się przyrząd służący do mieszania ciasta?', answer: 'Mikser', difficulty: 1), db);
        insertQuestion(const Question(id: 17, question: ' Jak nazywa się duże, szare zwierzę z długim trąbą?', answer: 'Słoń', difficulty: 1), db);
        insertQuestion(const Question(id: 18, question: 'Jak nazywa się przyrząd służący do gotowania na parze? ', answer: 'Parowar', difficulty: 1), db);
        insertQuestion(const Question(id: 19, question: ' Jak nazywa się instrument muzyczny z długą szyjką i strunami?', answer: 'Gitara', difficulty: 1), db);
        insertQuestion(const Question(id: 20, question: 'Napój od krowy ', answer: 'mleko ', difficulty: 1), db);
        insertQuestion(const Question(id: 21, question: 'Jakie miasto jest stolicą Grecji? ', answer: 'Ateny', difficulty: 2), db);
        insertQuestion(const Question(id: 22, question: 'Jak nazywa się stolica Egiptu? ', answer: 'Kair', difficulty: 2), db);
        insertQuestion(const Question(id: 23, question: 'Jakie miasto jest stolicą Zambii? ', answer: 'Lusaka', difficulty: 2), db);
        insertQuestion(const Question(id: 24, question: ' Jakie miasto jest stolicą Słowenii? ', answer: 'Lublana', difficulty: 2), db);
        insertQuestion(const Question(id: 25, question: 'Jakie miasto jest stolicą Portugalii? ', answer: 'Lizbona', difficulty: 2), db);
        insertQuestion(const Question(id: 26, question: 'Jakie miasto jest stolicą Korei Południowej? ', answer: 'Seul', difficulty: 2), db);
        insertQuestion(const Question(id: 27, question: 'Jak nazywa się najwyższa góra w Ameryce Północnej? ', answer: 'Denali', difficulty: 2), db);
        insertQuestion(const Question(id: 28, question: 'Jak nazywa się męski narząd płciowy u ptaków? ', answer: 'Jądro', difficulty: 2), db);
        insertQuestion(const Question(id: 29, question: 'Jakie miasto jest stolicą Australii? ', answer: 'Canberra', difficulty: 2), db);
        insertQuestion(const Question(id: 30, question: 'Jak nazywa się planetoida odkryta w 1801 roku przez Giuseppe Piazzi? ', answer: 'Ceres', difficulty: 2), db);
        insertQuestion(const Question(id: 31, question: 'Jak nazywa się największa rzeka w Europie? ', answer: 'Wołga', difficulty: 2), db);
        insertQuestion(const Question(id: 32, question: ' Jakie miasto jest stolicą Danii?', answer: 'Kopenhaga', difficulty: 2), db);
        insertQuestion(const Question(id: 33, question: 'Jak nazywa się stolica Francji? ', answer: 'Paryż', difficulty: 2), db);
        insertQuestion(const Question(id: 34, question: 'Jakie miasto jest stolicą Kanady? ', answer: 'Ottawa', difficulty: 2), db);
        insertQuestion(const Question(id: 35, question: 'Najlepsza liga koszykarska ', answer: 'NBA', difficulty: 2), db);
        insertQuestion(const Question(id: 36, question: 'Jak nazywa się stolica Libii? ', answer: 'Trypolis', difficulty: 2), db);
        insertQuestion(const Question(id: 37, question: 'Jak miał na imię Mickiewicz? ', answer: 'Adam', difficulty: 2), db);
        insertQuestion(const Question(id: 38, question: 'Jakie miasto jest stolicą Włoch? ', answer: 'Rzym', difficulty: 2), db);
        insertQuestion(const Question(id: 39, question: 'Jakie zwierzę jest uważane za symbol Chin? ', answer: 'Panda', difficulty: 2), db);
        insertQuestion(const Question(id: 40, question: 'Jakie państwo jest największe pod względem powierzchni na świecie? ', answer: 'Rosja', difficulty: 2), db);
        insertQuestion(const Question(id: 41, question: 'Ile członków ma zespół BTS? ', answer: 'Siedem ', difficulty: 3), db);
        insertQuestion(const Question(id: 42, question: ' Jak nazywa się instrument muzyczny z drążkiem i dźwiękową skrzynką?', answer: 'Kalimba', difficulty: 3), db);
        insertQuestion(const Question(id: 43, question: 'W którym kraju leży Kapsztad? ', answer: 'RPA ', difficulty: 3), db);
        insertQuestion(const Question(id: 44, question: 'W jakim mieście znajduje się Pałac Kultury i Nauki? ', answer: 'Warszawa', difficulty: 3), db);
        insertQuestion(const Question(id: 45, question: 'Jaka jest stolica Finlandii? ', answer: 'Helsinki ', difficulty: 3), db);
        insertQuestion(const Question(id: 46, question: 'W którym kraju urodził się Adolf Hitler? ', answer: 'Austria', difficulty: 3), db);
        insertQuestion(const Question(id: 47, question: 'Jak nazywa się największe jezioro w Europie? ', answer: 'Ładoga', difficulty: 3), db);
        insertQuestion(const Question(id: 48, question: 'Która planeta Układu Słonecznego jest największa? ', answer: 'Jowisz', difficulty: 3), db);
        insertQuestion(const Question(id: 49, question: 'Jak nazywa się rzeka przepływająca przez Kraków? ', answer: 'Wisła', difficulty: 3), db);
        insertQuestion(const Question(id: 50, question: 'Jakie są największe góry w Polsce? ', answer: 'Tatry', difficulty: 3), db);
        insertQuestion(const Question(id: 51, question: 'W jakim kraju znajduje się Kanał Sueski? ', answer: 'Egipt', difficulty: 3), db);
        insertQuestion(const Question(id: 52, question: 'ryba z rodziny dorszowatych, znana z charakterystycznego zapachu ', answer: 'Śledź', difficulty: 3), db);
        insertQuestion(const Question(id: 53, question: 'W jakim kraju leży miasto Rio de Janeiro?  ', answer: 'Brazylia', difficulty: 3), db);
        insertQuestion(const Question(id: 54, question: 'Która dynastia rządziła w Chinach w latach 1368-1644? ', answer: 'Ming', difficulty: 3), db);
        insertQuestion(const Question(id: 55, question: 'W którym kraju leży miasto Marrakesz? ', answer: 'Maroko', difficulty: 3), db);
        insertQuestion(const Question(id: 56, question: 'Jakie jest najdłuższe jezioro w Polsce? ', answer: 'Śniardwy', difficulty: 3), db);
        insertQuestion(const Question(id: 57, question: 'jak nazywa się najdłuższa rzeka w Afryce?  ', answer: 'Nil', difficulty: 3), db);
        insertQuestion(const Question(id: 58, question: 'W jakim kraju leży Czarnobyl? ', answer: 'Ukraina', difficulty: 3), db);
        insertQuestion(const Question(id: 59, question: 'Jak nazywa się jednostka prądu elektrycznego? ', answer: 'Amper', difficulty: 3), db);
        insertQuestion(const Question(id: 60, question: 'W którym kraju znajduje się Machu Picchu?  ', answer: 'Peru', difficulty: 3), db);
        insertQuestion(const Question(id: 61, question: 'W jakim kraju leży Wielkie Jezioro Słone?  ', answer: 'USA', difficulty: 3), db);
        insertQuestion(const Question(id: 63, question: 'Nazwisko twórcy Tesli  ', answer: 'Musk', difficulty: 1), db);
        insertQuestion(const Question(id: 64, question: 'Głowa kościoła ', answer: 'Papież', difficulty: 1), db);
        insertQuestion(const Question(id: 65, question: 'Szczekające zwierze ', answer: 'pies', difficulty: 1), db);
        insertQuestion(const Question(id: 66, question: 'Kraj który napadł na ukraine ', answer: 'Rosja', difficulty: 1), db);
        insertQuestion(const Question(id: 67, question: 'Która wojna była w latach 1939-1945 ', answer: 'Druga', difficulty: 1), db);
        insertQuestion(const Question(id: 68, question: 'Imię jana Pawła 2? ', answer: 'Karol', difficulty: 2), db);
        insertQuestion(const Question(id: 69, question: 'Bajka o ogrze ', answer: 'Shrek ', difficulty: 1), db);
        insertQuestion(const Question(id: 70, question: ' Z jakiego miejsca uciekły zwierzeta z filmu Madagascar', answer: 'Zoo', difficulty: 1), db);
        insertQuestion(const Question(id: 71, question: ' Najnowsza Popularna aplikacja do filmików ', answer: 'TikTok', difficulty: 1), db);
        insertQuestion(const Question(id: 72, question: 'Koń w paski ', answer: 'Zebra ', difficulty: 1), db);
        insertQuestion(const Question(id: 73, question: ' Z jakiego kraju pochodził Fidel Castro', answer: 'Kuba', difficulty: 3), db);
        insertQuestion(const Question(id: 74, question: 'Z jakiego kraju Pochodził Hitler ', answer: 'Austria', difficulty: 3), db);
        insertQuestion(const Question(id: 75, question: ' Z jakiego kraju pochodził Stalin', answer: 'Gruzja', difficulty: 3), db);
        insertQuestion(const Question(id: 76, question: 'Imię snajpera o pseudonimie Białą Smierć ', answer: 'Simo ', difficulty: 3), db);
        insertQuestion(const Question(id: 77, question: 'język programowania stworzony i używany do tworzenia aplikacji biznesowych. ', answer: 'Cobol', difficulty: 3), db);
        insertQuestion(const Question(id: 78, question: 'Skrot związku radzieckiego  ', answer: 'ZSRR ', difficulty: 2), db);
        insertQuestion(const Question(id: 79, question: 'Niedojjrzałe są zielone, a dojrzałe żółte ', answer: 'Banany', difficulty: 1), db);
        insertQuestion(const Question(id: 80, question: ' Największe miasto województwa opolskiego', answer: 'Opole', difficulty: 1), db);
        insertQuestion(const Question(id: 81, question: 'Stolica Niemiec ', answer: 'Berlin', difficulty: 1), db);
        insertQuestion(const Question(id: 82, question: 'Z jakiego uniwersum jest Deadpool? ', answer: 'Marvel', difficulty: 3), db);
        insertQuestion(const Question(id: 83, question: 'Konkurencja CocaColi ', answer: 'Pepsi', difficulty: 1), db);
        insertQuestion(const Question(id: 84, question: 'Modlitwa żydowska ', answer: 'Kadisz', difficulty: 3), db);
        insertQuestion(const Question(id: 85, question: 'Ciepłe słowa nadziei, ze bedzie lepiej ', answer: 'Otucha', difficulty: 2), db);
        insertQuestion(const Question(id: 86, question: 'Bułgarski dopływ w dunaju ', answer: 'Jantra', difficulty: 3), db);
        insertQuestion(const Question(id: 87, question: 'Pojedynek na słowa ', answer: 'Debata', difficulty: 2), db);
        insertQuestion(const Question(id: 88, question: 'Kim jest ważna osoba w biznesie - Gruba', answer: 'Ryba', difficulty: 2), db);
        insertQuestion(const Question(id: 89, question: ' Ryba po angielsku', answer: 'Fish', difficulty: 1), db);
        insertQuestion(const Question(id: 90, question: 'Obrazliwe słowo ', answer: 'Obelga', difficulty: 2), db);
        insertQuestion(const Question(id: 91, question: 'Zwierze, które chodzi po strychu ', answer: 'Kuna', difficulty: 2), db);
        insertQuestion(const Question(id: 92, question: 'Zwierze, które kopie w ziemi ', answer: 'Kret', difficulty: 1), db);
        insertQuestion(const Question(id: 93, question: 'Stara śpiewka, czcze słowa ', answer: 'Truizm', difficulty: 2), db);
        insertQuestion(const Question(id: 94, question: 'Co to był Titanic ', answer: 'Statek ', difficulty: 2), db);
        insertQuestion(const Question(id: 95, question: 'Nazwisko najsłynniejszego koszykarza ', answer: 'Jordan', difficulty: 2), db);
        insertQuestion(const Question(id: 96, question: 'Jeden z apostołów jezusa ', answer: 'Jan', difficulty: 1), db);
        insertQuestion(const Question(id: 97, question: 'Brat Jarosława Kaczyńskiego ', answer: 'Lech', difficulty: 1), db);
        insertQuestion(const Question(id: 98, question: 'zabójca po angielsku ', answer: 'Killer', difficulty: 2), db);
        insertQuestion(const Question(id: 99, question: 'Gatunek muzyczny w Korei ', answer: 'Kpop', difficulty: 3), db);
        insertQuestion(const Question(id: 100, question: 'Dawna nazwa niemiec ', answer: 'Prusy', difficulty: 2), db);
        insertQuestion(const Question(id: 101, question: 'Harry (czarodziej) ', answer: 'Potter', difficulty: 3), db);
        insertQuestion(const Question(id: 102, question: 'inaczej szlaban ', answer: 'Kara', difficulty: 2), db);
        insertQuestion(const Question(id: 103, question: 'Miejsce gdzie jest dużo drzew', answer: 'Las', difficulty: 1), db);
        insertQuestion(const Question(id: 104, question: 'Youtuber który stworzył Ekipe ', answer: 'Friz', difficulty: 1), db);
        insertQuestion(const Question(id: 105, question: 'Nazwa religii muzułmanów ', answer: 'Islam', difficulty: 1), db);
        insertQuestion(const Question(id: 106, question: 'W jakim kraju leży warszawa ', answer: 'Polska', difficulty: 1), db);
        insertQuestion(const Question(id: 107, question: 'W jakim kraju leży instanbuł ', answer: 'Turcja', difficulty: 2), db);
        insertQuestion(const Question(id: 108, question: 'Mięso z warzywami w bułce', answer: 'Kebab', difficulty: 1), db);
        insertQuestion(const Question(id: 109, question: 'Jakie zwierze robi kwa kwa ', answer: 'kaczka', difficulty: 1), db);
        insertQuestion(const Question(id: 110, question: 'Raper z poznania ', answer: 'Peja', difficulty: 3), db);
        insertQuestion(const Question(id: 111, question: 'Duzą ilość żołnierzy ', answer: 'Armia', difficulty: 1), db);
        insertQuestion(const Question(id: 112, question: ' Pomocnik batmana', answer: 'Robin', difficulty: 3), db);
        insertQuestion(const Question(id: 113, question: 'Co to jest H20 ', answer: 'Woda', difficulty: 2), db);
        insertQuestion(const Question(id: 114, question: 'ile to 60', answer: 'Kopa', difficulty: 2), db);
        insertQuestion(const Question(id: 115, question: 'Czy studia są irytujące? ', answer: 'Tak', difficulty: 1), db);
        insertQuestion(const Question(id: 116, question: 'Imie dziecka które zostało samo w domu w filmie ', answer: 'Kevin', difficulty: 2), db);
        insertQuestion(const Question(id: 117, question: 'Zwierze które daje mleko oproczy krowy ', answer: 'Koza', difficulty: 1), db);
        insertQuestion(const Question(id: 118, question: ' Słynny Kot z bajki', answer: 'Tom', difficulty: 2), db);
        insertQuestion(const Question(id: 119, question: ' Słynna mysz z bajki', answer: 'Jerry', difficulty: 2), db);
        insertQuestion(const Question(id: 120, question: 'Firma produkująca bajki ', answer: 'Disney', difficulty: 2), db);
        insertQuestion(const Question(id: 121, question: 'Popularna Platforma streamingowa z bajkami ', answer: 'Disney', difficulty: 1), db);
        insertQuestion(const Question(id: 122, question: 'Ziemniaki w gwarze poznańskiej ', answer: 'Pyry', difficulty: 3), db);
        insertQuestion(const Question(id: 123, question: 'Smietnik w gwarze śląskiej ', answer: 'Hasiok', difficulty: 3), db);
        insertQuestion(const Question(id: 124, question: 'Gdańsk, Gdynia i... ', answer: 'Sopot', difficulty: 2), db);
        insertQuestion(const Question(id: 125, question: 'Kim jest cezary pazura ', answer: 'Aktor', difficulty: 2), db);
        insertQuestion(const Question(id: 126, question: 'Imię Vegi ', answer: 'Patryk', difficulty: 3), db);
        insertQuestion(const Question(id: 127, question: 'Przedmiot do zupy ', answer: 'łyżka', difficulty: 1), db);
        insertQuestion(const Question(id: 128, question: 'Skoczek naraciarski Piotr .... ', answer: 'żyła', difficulty: 3), db);
        insertQuestion(const Question(id: 129, question: 'Skoczek narciarski Małysz... ', answer: 'Adam', difficulty: 3), db);
        insertQuestion(const Question(id: 130, question: 'Nazwisko polskiego kierowcy w F1 ', answer: 'Kubica', difficulty: 2), db);
        insertQuestion(const Question(id: 131, question: ' Osoba która podaje obiad w restauracji', answer: 'Kelner', difficulty: 1), db);
        insertQuestion(const Question(id: 132, question: 'Kto pokonał goliata ', answer: 'Dawid', difficulty: 3), db);
        insertQuestion(const Question(id: 132, question: 'Dłuższe życie każdej pralki to... ', answer: 'Calgon', difficulty: 2), db);

      },

      onCreate: (db, version) {
         db.execute(

          'CREATE TABLE questions(id INTEGER PRIMARY KEY, question TEXT, answer TEXT, difficulty INTEGER)',
        );



      },
      version: 7,

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
  static Future<int> getQuestionsMaxId(Database db) async {
    // Get a reference to the database.

    // Query the table for all The Dogs.
    var maxId = await db.rawQuery("select MAX(id) as id from questions;");

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return (maxId.first as dynamic) ['id'];
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


