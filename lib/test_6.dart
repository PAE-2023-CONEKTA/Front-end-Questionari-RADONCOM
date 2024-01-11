import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'test_7.dart';

class Test6 extends StatefulWidget {
    Test6({Key? key}) : super(key: key);

  @override
  _Test6State createState() => _Test6State();
}

class _Test6State extends State<Test6> {
  
  List<String> options_Q30 = <String>[
    'Líquido',
    'Sólido',
    'Gas',
    'No sé/no aplica'
  ];
  List<String> options_Q34 = <String>[
    'La calle',
    'Las casas/espacios cerrados',
    'No sé/no aplica',
  ];
  List<String> options_Q35 = <String>[
    'Ático',
    'Sótano',
    'No sé/no aplica',
  ];
  List<String> options_Q36 = <String>[
    'El suelo',
    'Materiales de construcción de las casas',
    'No sé/no aplica',
  ];
  List<String> options_Q38 = <String>[
    '50bq',
    '100bq',
    '300bq',
    '500bp',
    'No lo sé',
  ];
  
  //opciones para controlar enfermedades seleccionadas
  bool celiaquiaIsChecked = false;
  bool infartoIsChecked = false;
  bool cancerIsChecked = false;
  bool alzheimerIsChecked = false;
  bool noneIsChecked = false;

  bool tick1 = false;
  bool cross1 = false;
  bool qm1 = false;

  bool tick2 = false;
  bool cross2 = false;
  bool qm2 = false;

  bool tick3 = false;
  bool cross3 = false;
  bool qm3 = false;
  

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
                  '¿Está de acuerdo o en desacuerdo con las siguientes afirmaciones?',
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
                      'El radón es un...',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    const SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q30.map((e) {
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
                    'Para las siguientes preguntas, marque tick si está de acuerdo, X si no está de acuerdo, o ? si no conoce la respuesta.',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                  ), 
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text('¿El radón tiene olor?')
                      ),
                      Expanded(
                        flex: 1,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: [
                              SizedBox(width: 3,),
                              IconButton(
                                onPressed: (){
                                  setState(() {
                                    tick1 = true;
                                    cross1 = false;
                                    qm1 = false;
                                  });
                                }, 
                                icon: Icon(Icons.check, color: tick1 ? Colors.green :  Colors.black )
                              ),
                              SizedBox(width: 3,),
                              IconButton(
                                onPressed: (){
                                  setState(() {
                                    tick1 = false;
                                    cross1 = true;
                                    qm1 = false;
                                  });
                                }, 
                                icon: Icon(Icons.close , color: cross1 ? Colors.red : Colors.black,)
                              ),
                              SizedBox(width: 3,),
                              IconButton(
                                onPressed: (){
                                  setState(() {
                                    tick1 = false;
                                    cross1 = false;
                                    qm1 = true;
                                  });
                                },  
                                icon: Icon(Icons.question_mark, color: qm1 ? Colors.orange : Colors.black)
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text('¿El radón es radiactivo?')
                      ),
                      Expanded(
                        flex: 1,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: [
                              SizedBox(width: 3,),
                              IconButton(
                                onPressed: (){
                                  setState(() {
                                    tick2 = true;
                                    cross2 = false;
                                    qm2 = false;
                                  });
                                }, 
                                icon: Icon(Icons.check, color: tick2 ? Colors.green :  Colors.black )
                              ),
                              SizedBox(width: 3,),
                              IconButton(
                                onPressed: (){
                                  setState(() {
                                    tick2 = false;
                                    cross2 = true;
                                    qm2 = false;
                                  });
                                }, 
                                icon: Icon(Icons.close , color: cross2 ? Colors.red : Colors.black,)
                              ),
                              SizedBox(width: 3,),
                              IconButton(
                                onPressed: (){
                                  setState(() {
                                    tick2 = false;
                                    cross2 = false;
                                    qm2 = true;
                                  });
                                },  
                                icon: Icon(Icons.question_mark, color: qm2 ? Colors.orange : Colors.black)
                              ),
                            ],
                          ),
                          
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text('¿El radón es visible?')
                      ),
                      Expanded(
                        flex: 1,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: [
                              SizedBox(width: 3,),
                              IconButton(
                                onPressed: (){
                                  setState(() {
                                    tick3 = true;
                                    cross3 = false;
                                    qm3 = false;
                                  });
                                }, 
                                icon: Icon(Icons.check, color: tick3 ? Colors.green :  Colors.black )
                              ),
                              SizedBox(width: 3,),
                              IconButton(
                                onPressed: (){
                                  setState(() {
                                    tick3 = false;
                                    cross3 = true;
                                    qm3 = false;
                                  });
                                }, 
                                icon: Icon(Icons.close , color: cross3 ? Colors.red : Colors.black,)
                              ),
                              SizedBox(width: 3,),
                              IconButton(
                                onPressed: (){
                                  setState(() {
                                    tick3 = false;
                                    cross3 = false;
                                    qm3 = true;
                                  });
                                },  
                                icon: Icon(Icons.question_mark, color: qm3 ? Colors.orange : Colors.black)
                              ),
                            ],
                          ),
                          
                        ),
                      )
                    ],
                  ),

              ])),
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
                      'Sobre el radón, se tiende a acumular en...',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q34.map((e) {
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
                      'Los niveles de radón son normalmente más elevados en...',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q35.map((e) {
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
                  'El radón procede de...',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                  ),
                  SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q36.map((e) {
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

              const SizedBox(height: 20,),

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
                      'De las siguientes enfermedades, ¿cuál/les crees que se relaciona/n con el radón?',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    
                    Column(
                      children: [
                        CheckboxListTile(title: const Text('Celiaquía'), value: celiaquiaIsChecked, onChanged: (bool? newValue) {setState(() {
                          celiaquiaIsChecked = newValue!;
                        });}),
                        CheckboxListTile(title: const Text('Infarto agudo de miocardio'), value: infartoIsChecked, onChanged: (bool? newValue) {setState(() {
                          infartoIsChecked = newValue!;
                        });}),
                        CheckboxListTile(title: const Text('Cáncer de pulmón'), value: cancerIsChecked, onChanged: (bool? newValue) {setState(() {
                          cancerIsChecked = newValue!;
                        });}),
                        CheckboxListTile(title: const Text('Alzheimer'), value: alzheimerIsChecked, onChanged: (bool? newValue) {setState(() {
                          alzheimerIsChecked = newValue!;
                        });}),
                        CheckboxListTile(title: const Text('Ninguna de las previas'), value: noneIsChecked, onChanged: (bool? newValue) {setState(() {
                          noneIsChecked = newValue!;
                        });})
                        
                      ],
                    ),
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
                      'Los niveles máximos de radón en domicilio recomendados según la Organización Mundial de la Salud (OMS) son:',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q38.map((e) {
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
                  ]
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
                    MaterialPageRoute(builder: (context) => Test7()),
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
