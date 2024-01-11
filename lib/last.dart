import 'package:flutter/material.dart';

class Last extends StatelessWidget {
  const Last({super.key});


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
                const Text('Gracias por responder a esta encuesta',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 99, 50, 212)),
                ),
                const Text('Con su ayuda, ha contribuido a mejorar el conocimiento de la población sobre el radón y los puntos a mejorar en materia de prevención.',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 40.0),
                  
              ],
            ),
        ),
      ),
    );
  }}