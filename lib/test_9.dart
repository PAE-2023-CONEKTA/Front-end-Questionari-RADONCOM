import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'test_10.dart';

class Test9 extends StatefulWidget {
    Test9({Key? key}) : super(key: key);

  @override
  _Test9State createState() => _Test9State();
}

class _Test9State extends State<Test9> {
  TextEditingController emailController = TextEditingController();
  List<String> options_Q43 = <String>[
    'Sí, ya lo he medido',
    'No',
    'No sé',
  ];

  bool alreadyMeasuredHouse = false; 

  List<String> options_Q44 = <String>[
    'Sí, ya lo han medido',
    'No',
    'No sé',
  ];

  bool alreadyMeasuredWork = false; 

  List<String> options_Q45 = <String>[
    'Sí',
    'No',
    'No sé',
  ];


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 203, 166, 240),
        elevation: 0,
        iconTheme: const IconThemeData(
            color: Colors.white, 
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: const Text(
                  'Ahora responda las siguientes preguntas',
                  style: TextStyle(fontSize: 20),
                ),
              ),

              SizedBox(height: 20,),
          
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 244, 244), 
                  borderRadius: BorderRadius.circular(15),
                  
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Teniendo esta información en cuenta, ¿estaría dispuesto a medir los niveles de radón en su domicilio?',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q43.map((e) {
                        return DropdownMenuItem(child: Text(e), value: e);
                      }).toList(),
                      onChanged: (String? value) {
                        if (value == 'Sí, ya lo he medido') {
                          setState(() {
                            alreadyMeasuredHouse = true;
                          });
                        } else {
                          setState(() {
                            alreadyMeasuredHouse = false;
                          });
                        }
                      },
                      isDense: true,
                      isExpanded: true,
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Change color when selected
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Visibility(
                      visible: alreadyMeasuredHouse,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 30,),
                          Text('¿Cuáles son los niveles de radón en su casa?'),
                          TextField(),
                        ],
                      ),
                    )
                  ]
                ),
              ),
              
              SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 244, 244), 
                  borderRadius: BorderRadius.circular(15),
                  
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '¿Le gustaría que midiesen el radón en su lugar de trabajo?',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q44.map((e) {
                        return DropdownMenuItem(child: Text(e), value: e);
                      }).toList(),
                      onChanged: (String? value) {
                        if (value == 'Sí, ya lo han medido') {
                          setState(() {
                            alreadyMeasuredWork = true;
                          });
                        } else {
                          setState(() {
                            alreadyMeasuredWork = false;
                          });
                        }
                      },
                      isDense: true,
                      isExpanded: true,
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Change color when selected
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Visibility(
                      visible: alreadyMeasuredWork,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 30,),
                          Text('¿Cuáles son los niveles de radón en su lugar de trabajo?'),
                          TextField(),
                        ],
                      ),
                    )
                  ]
                ),
              ),

              SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 244, 244), 
                  borderRadius: BorderRadius.circular(15),
                  
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '¿Conoce los niveles de radón del área en el que vive?',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q45.map((e) {
                        return DropdownMenuItem(child: Text(e), value: e);
                      }).toList(),
                      onChanged: (String? value) {},
                      isDense: true,
                      isExpanded: true,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey), // Change color when selected
                        ),
                      ),
                    ),
                  ])
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
                    MaterialPageRoute(builder: (context) => Test10()),
                  );  
                  },
                  child: const Text('Continuar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
