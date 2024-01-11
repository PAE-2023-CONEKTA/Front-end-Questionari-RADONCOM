import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'test_8.dart';

class Test7 extends StatefulWidget {
    Test7({Key? key}) : super(key: key);

  @override
  _Test7State createState() => _Test7State();
}

class _Test7State extends State<Test7> {
  
  bool tick1 = false;
  bool cross1 = false;
  bool qm1 = false;

  bool tick2 = false;
  bool cross2 = false;
  bool qm2 = false;

  bool tick3 = false;
  bool cross3 = false;
  bool qm3 = false;

  bool zero = false;
  bool one = false;
  bool two = false;
  bool three = false;
  

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
                  '¿Hasta qué punto está de acuerdo o en desacuerdo con las siguientes afirmaciones?',
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
                        child: Text('Niveles altos de radón en mi casa sería un peligro para mi salud y la de la gente que vive conmigo.', style: TextStyle(fontSize: 16),)
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
                        child: Text('No hacer nada frente al radón en mi casa sería un peligro para mi salud y la de mis convivientes.', style: TextStyle(fontSize: 16),)
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
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text('¿Se puede hacer algo para disminuir la concentración de radón en el domicilio?', style: TextStyle(fontSize: 16),)
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
                      '¿Cree que unas concentraciones elevadas de radón en domicilio podrían hacerle enfermar? ',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    const Text('Determine su percepción de peligro siendo 0 nulo y 3 mucho.'),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: (){
                            setState(() {
                              zero = true;
                              one = false;
                              two = false;
                              three = false;
                            });
                          }, 
                          child: Text('0', style: TextStyle(color: zero ? Colors.purple : Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)
                        ),
                        TextButton(
                          onPressed: (){
                              setState(() {
                              zero = false;
                              one = true;
                              two = false;
                              three = false;
                            });
                          }, 
                          child: Text('1', style: TextStyle(color: one ? Colors.purple : Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)
                        ),
                        TextButton(
                          onPressed: (){
                            setState(() {
                              zero = false;
                              one = false;
                              two = true;
                              three = false;
                            });
                          }, 
                          child: Text('2', style: TextStyle(color: two ? Colors.purple : Colors.black, fontSize: 20, fontWeight: FontWeight.bold))
                        ),
                        TextButton(
                          onPressed: (){
                            setState(() {
                              zero = false;
                              one = false;
                              two = false;
                              three = true;
                            });
                          }, 
                          child: Text('3', style: TextStyle(color: three ? Colors.purple : Colors.black, fontSize: 20, fontWeight: FontWeight.bold))
                        ),

                      ],
                    )
                  ], 
                )
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
                    MaterialPageRoute(builder: (context) => Test8()),
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
