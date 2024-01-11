import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:questionari_app/last.dart';
import 'last.dart';

class Test11 extends StatefulWidget {
    Test11({Key? key}) : super(key: key);

  @override
  _Test11State createState() => _Test11State();
}

class _Test11State extends State<Test11> {
  
  bool tick1 = false;
  bool cross1 = false;
  bool qm1 = false;

  bool tick2 = false;
  bool cross2 = false;
  bool qm2 = false;
  

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
                  'Teniendo en cuenta esta información, responda a las siguientes preguntas...',
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
                    'Para las siguientes preguntas, marque tick si está de acuerdo, X si no está de acuerdo, o ? si no conoce la respuesta.',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                  ), 
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text('¿Estaría usted dispuesto a hacer obras en su domicilio en caso de tener niveles altos de radón?', style: TextStyle(fontSize: 16),)
                      ),
                      Expanded(
                        flex: 1,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: [
                              SizedBox(width: 20,),
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
                  const SizedBox(height: 30,),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text('¿Cree que debería informarse de los niveles de radón de una vivienda antes de entrar a vivir en ella?', style: TextStyle(fontSize: 16),)
                      ),
                      Expanded(
                        flex: 1,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.end,
                            children: [
                              SizedBox(width: 20,),
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
                  const SizedBox(height: 30,),
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
                      '¿Cree que unas concentraciones elevadas de radón en domicilio podrían hacerle enfermar? ',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    TextField(),
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
                    MaterialPageRoute(builder: (context) => Last()),
                  );  
                  },
                  child: const Text('ACABAR CUESTIONARIO', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
