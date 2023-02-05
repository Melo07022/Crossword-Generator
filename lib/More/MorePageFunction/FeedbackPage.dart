import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class FeedbackP extends StatefulWidget {
  const FeedbackP({Key? key}) : super(key: key);

  @override
  State<FeedbackP> createState() => _FeedbackPState();
}


class _FeedbackPState extends State<FeedbackP> {
  final controllerFrom = TextEditingController();
  final controllerSubject = TextEditingController();
  final controllerMessage = TextEditingController();
  final controllerName = TextEditingController();

  Future sendEmail(
      ) async {


    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    const serviceId = 'service_dxgvmsw';
    const templateId = 'template_35csymd';
    const userId = 'Xm-KYiSw1yZzWFLZr';

    final response = await http.post(url,
      headers: {
        'Content-Type': 'application/json',
        'origin': 'http://localhost',
      },
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'name': controllerName.text,
          'subject': controllerSubject.text,
          'message': controllerMessage.text,
          'user_email': controllerFrom.text,


        },
      }),
    );

    print(response.body);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Wysłano Pomyślnie! :D", style: TextStyle(color: Colors.green),)));
  }

  @override
  Widget build(BuildContext context) {

    Widget buildTextField({
      required String title,
      required TextEditingController controller,
      int maxLines = 1,
    }) =>
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const SizedBox(height: 8),
            TextField(controller: controller,
                maxLines: maxLines,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                )
            ),



          ],
        );

    return Scaffold(
      backgroundColor: Color(0xFF1A237E),
      body: SafeArea(
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Dodaj swoją opinie", style: GoogleFonts.ubuntu(textStyle:  TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),),
                Image.asset("images/feedback2.png", width: 100, height: 100,)
              ],
            ),
            Expanded(
              child: ClipRRect(
                child: Container(
                  width: 900,

                  color: Colors.white,
                  child: ListView(
                    padding: EdgeInsets.all(16),
                    children: [
                      Text("Jeśli masz pomysły jak ulepszyć aplikację, lub poprostu chcesz napisać co ci się podoba, a co nie podoba to wypełnij formularz i wyślij do nas",
                        style: GoogleFonts.ubuntu(textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),textAlign: TextAlign.center,),

                      const SizedBox(height: 16),
                      buildTextField(title: "Imię", controller: controllerName),
                      const SizedBox(height: 16),
                      buildTextField(title: "Email", controller: controllerFrom),
                      const SizedBox(height: 16),
                      buildTextField(title: "Temat", controller: controllerSubject),
                      const SizedBox(height: 16),
                      buildTextField(title: "Wiadomość", controller: controllerMessage, maxLines: 8),
                      const SizedBox(height: 32,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          minimumSize: Size.fromHeight(50),
                          textStyle: TextStyle(fontSize: 20),
                        ),
                        child: Text('Wyślij'),
                        onPressed: () {
                          if (controllerName.text.isEmpty ||
                          controllerFrom.text.isEmpty ||
                          controllerMessage.text.isEmpty ||
                          controllerSubject.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Wypełnij wszystkie pola!")

                              ),

                            );
                          return;
                          }

                          sendEmail();
                        },
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

