import 'package:flutter/material.dart';
import 'test_11.dart';

class Test10 extends StatefulWidget {
  Test10({Key? key}) : super(key: key);

  @override
  _Test10State createState() => _Test10State();
}


class _Test10State extends State<Test10> {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      
        backgroundColor: Color.fromARGB(255, 203, 166, 240),
        elevation: 0,
        iconTheme: const IconThemeData(
            color: Colors.white, // Change the icon color here
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [ 
            
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
              margin: EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: const Text(
                      'Por favor, lea atentamente la información que aparece a continuación:',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),

                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 245, 244, 244), 
                      borderRadius: BorderRadius.circular(15),
                      
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column( 
                        mainAxisAlignment: MainAxisAlignment.start, 
                        crossAxisAlignment: CrossAxisAlignment.start, 
                        children: <Widget>[
                          const Text('¿Se puede reducir los niveles de radón en mi casa? según la Organización Mundial de la Salud (OMS)', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
                          const SizedBox(height: 20,),
                          const Text(style: TextStyle(fontSize: 17) ,'Para la mayoría de las personas, la exposición al radón tiene lugar sobre todo en el hogar, donde pasan gran parte de su tiempo. Debido a esto, actualmente, al construir una edificación hay que tener en cuenta la posible exposición a este gas, sobre todo en aquellas zonas donde esté muy concentrado. En muchos países de Europa, en los Estados Unidos de América y en China las normas para las nuevas edificaciones ya incluyen medidas protectoras.\n\nEn los edificios ya existentes construidos antes de la implementación de estas medidas, existen métodos eficaces para prevenir la filtración de radón en viviendas en caso de detectarse niveles altos de radón [en España, los niveles máximos de referencia en el interior de edificios son de 300 Bq/m3]. Algunas formas habituales de reducir los niveles de radón en los edificios son: (a) aumentar la ventilación de la casa, (b) instalar sistemas de evacuación mecánica de radón, (c) hacer asilamiento de soleras (sellar pisos y paredes) y (d) mejorar la ventilación del edificio. Se ha demostrado que los sistemas de mitigación pasivos pueden reducir en más de un 50% los niveles de radón en espacios interiores y que, si se añade un sistema de ventilación, estos niveles pueden descender todavía más.\n\n'),
                        ]
                        
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
              
                  Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 60, 56, 71), 
                        elevation: 0,
                        padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Test11()),
                      );  
                      },
                      child: const Text('Continuar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
                    ),
                  ),
                ],
              ),
              ),
            ),
          const SizedBox(height: 10,),
        ]),
      ),
    );
  }
}