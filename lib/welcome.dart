import 'package:flutter/material.dart';
import 'email_checker.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});


  void doNothing() {
  // Esta función no hace nada.
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Center(
          child: Container(
            color: Color.fromARGB(255, 203, 166, 240),
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              crossAxisAlignment: CrossAxisAlignment.center, 
              children: <Widget>[
                const Text('Bienvenido al proyecto',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                const Text('R A D O N C O M',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 40.0),
                Image.asset('assets/images/radon.png', scale: 5,),
                const SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurple,
                        spreadRadius: 0,
                        blurRadius: 1,
                        offset: Offset(7, 7), // changes position of shadow
                      ),
                    ], //B
                  ),
                  padding:EdgeInsets.all(20),
                  child: const Text( 'Esta investigación busca estudiar el conocimiento y percepción de riesgo en relación con la exposición al RADÓN en nuestra sociedad.',
                  textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 16, ),
                  ),
                ),
                const SizedBox(height: 40.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple, 
                    elevation: 0,
                    padding: EdgeInsets.all(20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EmailChecker()),
                    );
                  }, 
                  child: const Text('IR AL CUESTIONARIO', style: TextStyle(color: Colors.white, ),), 
                ),
                const SizedBox(height: 15.0),
                TextButton(
                  onPressed: doNothing,
                  child: const Text('¡Ya he participado!', style: TextStyle(color: Colors.white)),
                )          
              ],
            ),
        ),
      ),
    );
  }}