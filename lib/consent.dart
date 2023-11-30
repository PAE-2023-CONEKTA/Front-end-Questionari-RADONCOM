import 'package:flutter/material.dart';
import 'test_1.dart';

class Consent extends StatefulWidget {
  Consent({Key? key}) : super(key: key);

  @override
  _ConsentState createState() => _ConsentState();
}


class _ConsentState extends State<Consent> {

  TextEditingController emailController = TextEditingController();
  bool accepted = false; 

   
  @override
  Widget build(BuildContext context) {

    Future openDialog() => showDialog(
      context: context, 
      builder: (context) => const AlertDialog(
        content: Text("No ha consentido su participación en el proyecto.", style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromARGB(255, 243, 106, 106),
      ),
    );


    return Scaffold(
      appBar: AppBar(
        //title: const Text("PREGUNTAS PERSONALES"),
        backgroundColor: Color.fromARGB(255, 203, 166, 240),
        elevation: 0,
        iconTheme: const IconThemeData(
            color: Colors.white, // Change the icon color here
        ),
      ),
      body: Column(
        children: [ Container(
          margin: EdgeInsets.all(30),
          child: Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 245, 244, 244), 
              borderRadius: BorderRadius.circular(15),
              
            ),
            child: Column( 
              mainAxisAlignment: MainAxisAlignment.start, 
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: <Widget>[
                const Text('No usaremos su nombre en ninguna fase de la gestión de datos. En todo momento puede retirarse o no responder a alguna pregunta. La información que proporcione será utilizada únicamente para esta encuesta y será guardada de forma anónima y confidencial. De acuerdo con el Reglamento General de Protección de Datos (GDPR), todos los datos de los participantes se destruirán tan pronto se finalice el análisis de datos. Lea las siguientes declaraciones antes de aceptar participar en la encuesta.'),
                const SizedBox(height: 30,),
                const Text('·Entiendo de qué trata el proyecto y para qué se utilizarán los resultados.'),
                const SizedBox(height: 15,),
                const Text('·Sé que mi participación es voluntaria y que puedo retirarme del proyecto en cualquier momento sin dar el motivo.'),
                const SizedBox(height: 15,),
                const Text('·Soy consciente de que mi información y mis respuestas se mantendrán confidenciales.'),
                const SizedBox(height: 40,),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                  color: Color.fromARGB(255, 227, 226, 228), 
                  borderRadius: BorderRadius.circular(15),
                  
                ),
                  child: CheckboxListTile(
                    title: const Text('Habiendo leído la información anterior, ¿consiente participar en el cuestionario?', style: TextStyle(fontSize: 15),),
                    value: accepted, 
                    onChanged: (bool? value) {
                      setState(() {
                        accepted = value ?? false;
                      });
                    }
                  ),
                ),
              ]
              
            ),
          ),
        ),
        const SizedBox(height: 10,),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 60, 56, 71), 
            elevation: 0,
            padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
          ),
          onPressed: () {
            if (accepted) {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Test1()),
            ); 
            } else {
              openDialog();
            }
            
          },
          child: const Text('Empezar cuestionario', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
        ),
      ]),
    );
  }
}