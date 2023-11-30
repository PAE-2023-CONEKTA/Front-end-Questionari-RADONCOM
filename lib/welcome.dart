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
            margin: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              crossAxisAlignment: CrossAxisAlignment.center, 
              children: <Widget>[
                const Text('Bienvenido al proyecto',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w300),
                ),
                const Text('R E B O R N',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 99, 50, 212)),
                ),
                const SizedBox(height: 20,),
                Container(
                  padding:EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 203, 166, 240),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text( 'Esta investigación busca estudiar el conocimiento y percepción de riesgo en relación con la exposición al RADÓN en nuestra sociedad.',
                    textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(255, 63, 63, 63), fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 40.0),
                Image.asset('assets/images/radon.png', scale: 5,),
                const SizedBox(height: 40.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 60, 56, 71), 
                    elevation: 0,
                    padding: EdgeInsets.all(20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EmailChecker()),
                    );
                  }, 
                  child: const Text('Ir al questionario', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),), 
                ),
                const SizedBox(height: 15.0),
                TextButton(
                  onPressed: doNothing,
                  child: const Text('¡Ya he participado!', style: TextStyle(color: Colors.blueGrey)),
                )          
              ],
            ),
        ),
      ),
    );
  }}