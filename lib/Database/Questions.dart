import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:cros_gen/main.dart';

class Question {
   final int id;
   final String question;
   final String answer;
   final int difficulty;

   const Question({
     required this.id,
     required this.question,
     required this.answer,
     required this.difficulty
   });

   Map<String, dynamic> toMap() {
     return {
       'id': id,
       'question': question,
       'answer': answer,
       'difficulty': difficulty,
     };
   }
   @override
   String toString() {
     return 'question{id: $id, question: $question, answer: $answer, difficulty: $difficulty}';
   }
}






