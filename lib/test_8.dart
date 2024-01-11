import 'package:flutter/material.dart';
import 'test_9.dart';

class Test8 extends StatefulWidget {
  Test8({Key? key}) : super(key: key);

  @override
  _Test8State createState() => _Test8State();
}


class _Test8State extends State<Test8> {
  
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
                          const Text('¿Qué es el radón? según la Organización Mundial de la Salud (OMS)', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
                          const SizedBox(height: 20,),
                          const Text(style: TextStyle(fontSize: 17) ,'El radón es un gas sin olor, sin color y sin sabor que se produce por desintegración radiactiva natural del uranio presente en suelos y rocas. Además, el agua también puede contener radón. \n Este gas emana fácilmente del suelo y pasa al aire, donde se desintegra y emite otras partículas radiactivas. Al respirar, se inhalan estas partículas y se depositan en las células que recubren las vías respiratorias, donde pueden dañar el ADN y provocar cáncer de pulmón.\n\n Al aire libre, el radón se diluye rápidamente hasta alcanzar concentraciones muy bajas (de 5 a 15 Bq/m 3 ) y no suele ser peligroso. En cambio, en espacios cerrados la concentración es más evada, sobre todo en los lugares poco ventilados y espacios habitables que están en contacto directo con el terreno (como, por ejemplo, sótanos o bodegas). Las minas, las cuevas y las centrales de tratamiento de aguas son algunos de los lugares donde se registran los niveles más altos. En los edificios como las viviendas, las escuelas y las oficinas, sus concentraciones oscilan entre 10 y más de 10,000 Bq/m 3 . Así pues, debido a las propiedades de este gas, los ocupantes de tales edificios podrían estar viviendo o trabajando con niveles muy altos sin saberlo.\n\n'),
                          const SizedBox(height: 40,),
                          const Text('¿Qué riesgos para la salud derivan de la exposición al radón? según la Organización Mundial de la Salud (OMS)', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
                          const SizedBox(height: 20,),
                          const Text(style: TextStyle(fontSize: 17) ,'El radón es una de las principales causas de cáncer de pulmón. Actualmente, se estima que la proporción de casos de cáncer de pulmón atribuibles a este gas varían entre un 3 y un 14% según la concentración media de radón en el correspondiente país y el consumo de tabaco.\n\n Se conoce que el riesgo de desarrollar cáncer de pulmón aumenta de forma proporcional con el aumento de la exposición al radón. Concretamente, el riesgo aumenta en un 16% con cada incremento de 100 Bq/m3 en la concentración media de radón a largo plazo. Por otro lado, la probabilidad de que el gas radón provoque cáncer de pulmón es mayor en fumadores y, de hecho, se ha calculado que el riesgo asociado al radón que corre un fumador es 25 veces superior al de una persona que no fuma tabaco.\n\n Hasta la fecha, no se ha demostrado que este gas provoque otros tipos de cáncer u otros efectos para la salud, aunque, tras ser inhalado, puede llegar a otros órganos, si bien a un nivel mucho menor que a los pulmones.'),
                          const SizedBox(height: 20,)
                          
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
                        MaterialPageRoute(builder: (context) => Test9()),
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