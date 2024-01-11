import 'package:flutter/material.dart';
import 'test_6.dart';

class Test5 extends StatefulWidget {
    Test5({Key? key}) : super(key: key);

  @override
  _Test5State createState() => _Test5State();
}

class _Test5State extends State<Test5> {

  bool isClickedRed1 = false;
  bool isClickedOrange1 = false;
  bool isClickedYellow1 = false;
  bool isClickedGreen1 = false;

  bool isClickedRed2 = false;
  bool isClickedOrange2 = false;
  bool isClickedYellow2 = false;
  bool isClickedGreen2 = false;

  bool isClickedRed3 = false;
  bool isClickedOrange3 = false;
  bool isClickedYellow3 = false;
  bool isClickedGreen3 = false;

  bool isClickedRed4 = false;
  bool isClickedOrange4 = false;
  bool isClickedYellow4 = false;
  bool isClickedGreen4 = false;

  bool isClickedRed5 = false;
  bool isClickedOrange5 = false;
  bool isClickedYellow5 = false;
  bool isClickedGreen5 = false;

  bool isClickedRed6 = false;
  bool isClickedOrange6 = false;
  bool isClickedYellow6 = false;
  bool isClickedGreen6 = false;

  bool isClickedRed7 = false;
  bool isClickedOrange7 = false;
  bool isClickedYellow7 = false;
  bool isClickedGreen7 = false;

  bool isClickedRed8 = false;
  bool isClickedOrange8 = false;
  bool isClickedYellow8 = false;
  bool isClickedGreen8 = false;

  bool isClickedRed9 = false;
  bool isClickedOrange9 = false;
  bool isClickedYellow9 = false;
  bool isClickedGreen9 = false;

  List<String> options_Q25 = <String>[
    'Sí',
    'Me sonaba',
    'No',
    'No lo sé',
  ];

  bool previosKnowladge = false; 

  List<String> options_Q26 = <String>[
    'Nada confiado ',
    'Poco confiado',
    'Bastante confiado',
    'Muy confiado',
  ];
  List<String> options_Q27 = <String>[
    'Medios de comunicación tradicionales (periódicos, revistas, televisión, radio…)',
    'A través de redes sociales (Twitter, Instagram, Facebook, etc.)',
    'Por personas de mi entorno',
    'Por personal sanitario',
    'En la escuela o instituto',
    'En la universidad',
    'Otros',
  ];

  bool otros = false;

  List<String> options_Q29 = <String>[
    'No',
    'Sí, poco',
    'Sí, bastante',
    'Sí, mucho',
    'No lo sé',
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
                  'Ahora nos interesa saber qué piensa sobre los siguientes temas:',
                  style: TextStyle(fontSize: 20),
                ),
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
                      '¿Antes de hacer esta encuesta sabía algo sobre el radón? ',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    const SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q25.map((e) {
                        return DropdownMenuItem(child: Text(e), value: e);
                      }).toList(),
                      onChanged: (String? value) {
                      if (value == 'Sí' || value == 'Me sonaba') {
                        setState(() {
                          previosKnowladge = true;
                        });
                      } else {
                        setState(() {
                          previosKnowladge = false;
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
                      visible: previosKnowladge,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('¿Cómo de seguro está de su conocimiento sobre el radón?', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
                          const SizedBox(height: 10,),
                          DropdownButtonFormField(
                            items: options_Q26.map((e) {
                              return DropdownMenuItem(child: Text(e), value: e);
                            }).toList(),
                            onChanged: (String? value) {},                    
                            isDense: true,
                            isExpanded: true,
                            decoration: const InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey), // Change color when selected
                              ),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          const Text('Si ya conocía el radón antes de hacer la encuesta, ¿dónde ha oído hablar de él? ', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
                          const SizedBox(height: 10,),
                          DropdownButtonFormField(
                            items: options_Q27.map((e) {
                              return DropdownMenuItem(child: Text(e), value: e);
                            }).toList(),
                            onChanged: (String? value) {
                              if (value == 'Otros') {
                                setState(() {
                                  otros = true;
                                });
                              } else {
                                setState(() {
                                  otros = false;
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
                          const SizedBox(height: 10,),
                          Visibility(
                            visible: otros,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SizedBox(height: 30,),
                                Text('¿Dónde ha oído hablar de él?'),
                                TextField(),
                              ],
                            ),
                          )
                        ],
                      )
                    )
                  ], 
                )
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
                      'Señale cómo de peligroso le parecen los siguientes elementos:',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ), 
                    SizedBox(height: 10,),
                    const Text('ROJO: MUY PELIGROSO ', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600)),
                    SizedBox(height: 5,),
                    const Text('VERDE: NADA PELIGROSO', style: TextStyle(color: Color.fromARGB(255, 85, 199, 89), fontWeight: FontWeight.w600),),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text('La contaminación ambiental')
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
                                      isClickedRed1 = true;
                                      isClickedOrange1 = false;
                                      isClickedYellow1 = false;
                                      isClickedGreen1 = false;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedRed1 ? Colors.red :  Color.fromARGB(255, 255, 153, 153) )
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed1 = false;
                                      isClickedOrange1 = true;
                                      isClickedYellow1 = false;
                                      isClickedGreen1 = false;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedOrange1 ? Colors.orange : Color.fromARGB(255, 245, 197, 125),)
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed1 = false;
                                      isClickedOrange1 = false;
                                      isClickedYellow1 = true;
                                      isClickedGreen1 = false;
                                    });
                                  },  
                                  icon: Icon(Icons.circle, color: isClickedYellow1 ? Colors.yellow : Color.fromARGB(255, 245, 235, 148))
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed1 = false;
                                      isClickedOrange1 = false;
                                      isClickedYellow1 = false;
                                      isClickedGreen1 = true;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedGreen1 ? Colors.green : Color.fromARGB(255, 152, 250, 155))
                                )
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
                          child: Text('La radiación solar')
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
                                      isClickedRed2 = true;
                                      isClickedOrange2 = false;
                                      isClickedYellow2 = false;
                                      isClickedGreen2 = false;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedRed2 ? Colors.red :  Color.fromARGB(255, 255, 153, 153) )
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed2 = false;
                                      isClickedOrange2 = true;
                                      isClickedYellow2 = false;
                                      isClickedGreen2 = false;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedOrange2 ? Colors.orange : Color.fromARGB(255, 245, 197, 125),)
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed2 = false;
                                      isClickedOrange2 = false;
                                      isClickedYellow2 = true;
                                      isClickedGreen2 = false;
                                    });
                                  },  
                                  icon: Icon(Icons.circle, color: isClickedYellow2 ? Colors.yellow : Color.fromARGB(255, 245, 235, 148))
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed2 = false;
                                      isClickedOrange2 = false;
                                      isClickedYellow2 = false;
                                      isClickedGreen2 = true;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedGreen2 ? Colors.green : Color.fromARGB(255, 152, 250, 155))
                                )
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
                          child: Text('El radón')
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
                                      isClickedRed3 = true;
                                      isClickedOrange3 = false;
                                      isClickedYellow3 = false;
                                      isClickedGreen3 = false;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedRed3 ? Colors.red :  Color.fromARGB(255, 255, 153, 153) )
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed3 = false;
                                      isClickedOrange3 = true;
                                      isClickedYellow3 = false;
                                      isClickedGreen3 = false;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedOrange3 ? Colors.orange : Color.fromARGB(255, 245, 197, 125),)
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed3 = false;
                                      isClickedOrange3 = false;
                                      isClickedYellow3 = true;
                                      isClickedGreen3 = false;
                                    });
                                  },  
                                  icon: Icon(Icons.circle, color: isClickedYellow3 ? Colors.yellow : Color.fromARGB(255, 245, 235, 148))
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed3 = false;
                                      isClickedOrange3 = false;
                                      isClickedYellow3 = false;
                                      isClickedGreen3 = true;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedGreen3 ? Colors.green : Color.fromARGB(255, 152, 250, 155))
                                )
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
                          child: Text('La radiación por motivos médicos')
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
                                      isClickedRed4 = true;
                                      isClickedOrange4 = false;
                                      isClickedYellow4 = false;
                                      isClickedGreen4 = false;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedRed4 ? Colors.red :  Color.fromARGB(255, 255, 153, 153) )
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed4 = false;
                                      isClickedOrange4 = true;
                                      isClickedYellow4 = false;
                                      isClickedGreen4 = false;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedOrange4 ? Colors.orange : Color.fromARGB(255, 245, 197, 125),)
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed4 = false;
                                      isClickedOrange4 = false;
                                      isClickedYellow4 = true;
                                      isClickedGreen4 = false;
                                    });
                                  },  
                                  icon: Icon(Icons.circle, color: isClickedYellow4 ? Colors.yellow : Color.fromARGB(255, 245, 235, 148))
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed4 = false;
                                      isClickedOrange4 = false;
                                      isClickedYellow4 = false;
                                      isClickedGreen4 = true;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedGreen4 ? Colors.green : Color.fromARGB(255, 152, 250, 155))
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                     Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text('La crisis climática')
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
                                      isClickedRed5 = true;
                                      isClickedOrange5 = false;
                                      isClickedYellow5 = false;
                                      isClickedGreen5 = false;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedRed5 ? Colors.red :  Color.fromARGB(255, 255, 153, 153) )
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed5 = false;
                                      isClickedOrange5 = true;
                                      isClickedYellow5 = false;
                                      isClickedGreen5 = false;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedOrange5 ? Colors.orange : Color.fromARGB(255, 245, 197, 125),)
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed5 = false;
                                      isClickedOrange5 = false;
                                      isClickedYellow5 = true;
                                      isClickedGreen5 = false;
                                    });
                                  },  
                                  icon: Icon(Icons.circle, color: isClickedYellow5 ? Colors.yellow : Color.fromARGB(255, 245, 235, 148))
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed5 = false;
                                      isClickedOrange5 = false;
                                      isClickedYellow5 = false;
                                      isClickedGreen5 = true;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedGreen5 ? Colors.green : Color.fromARGB(255, 152, 250, 155))
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                     Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text('La energía nuclear')
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
                                      isClickedRed6 = true;
                                      isClickedOrange6 = false;
                                      isClickedYellow6 = false;
                                      isClickedGreen6 = false;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedRed6 ? Colors.red :  Color.fromARGB(255, 255, 153, 153) )
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed6 = false;
                                      isClickedOrange6 = true;
                                      isClickedYellow6 = false;
                                      isClickedGreen6 = false;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedOrange6 ? Colors.orange : Color.fromARGB(255, 245, 197, 125),)
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed6 = false;
                                      isClickedOrange6 = false;
                                      isClickedYellow6 = true;
                                      isClickedGreen6 = false;
                                    });
                                  },  
                                  icon: Icon(Icons.circle, color: isClickedYellow6 ? Colors.yellow : Color.fromARGB(255, 245, 235, 148))
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed6 = false;
                                      isClickedOrange6 = false;
                                      isClickedYellow6 = false;
                                      isClickedGreen6 = true;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedGreen6 ? Colors.green : Color.fromARGB(255, 152, 250, 155))
                                )
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
                          child: Text('El tabaco')
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
                                      isClickedRed7 = true;
                                      isClickedOrange7 = false;
                                      isClickedYellow7 = false;
                                      isClickedGreen7 = false;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedRed7 ? Colors.red :  Color.fromARGB(255, 255, 153, 153) )
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed7 = false;
                                      isClickedOrange7 = true;
                                      isClickedYellow7 = false;
                                      isClickedGreen7 = false;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedOrange7 ? Colors.orange : Color.fromARGB(255, 245, 197, 125),)
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed7 = false;
                                      isClickedOrange7 = false;
                                      isClickedYellow7 = true;
                                      isClickedGreen7 = false;
                                    });
                                  },  
                                  icon: Icon(Icons.circle, color: isClickedYellow7 ? Colors.yellow : Color.fromARGB(255, 245, 235, 148))
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed7 = false;
                                      isClickedOrange7 = false;
                                      isClickedYellow7 = false;
                                      isClickedGreen7 = true;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedGreen7 ? Colors.green : Color.fromARGB(255, 152, 250, 155))
                                )
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
                          child: Text('La marihuana')
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
                                      isClickedRed8 = true;
                                      isClickedOrange8 = false;
                                      isClickedYellow8 = false;
                                      isClickedGreen8 = false;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedRed8 ? Colors.red :  Color.fromARGB(255, 255, 153, 153) )
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed8 = false;
                                      isClickedOrange8 = true;
                                      isClickedYellow8 = false;
                                      isClickedGreen8 = false;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedOrange8 ? Colors.orange : Color.fromARGB(255, 245, 197, 125),)
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed8 = false;
                                      isClickedOrange8 = false;
                                      isClickedYellow8 = true;
                                      isClickedGreen8 = false;
                                    });
                                  },  
                                  icon: Icon(Icons.circle, color: isClickedYellow8 ? Colors.yellow : Color.fromARGB(255, 245, 235, 148))
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed8 = false;
                                      isClickedOrange8 = false;
                                      isClickedYellow8 = false;
                                      isClickedGreen8 = true;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedGreen8 ? Colors.green : Color.fromARGB(255, 152, 250, 155))
                                )
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
                          child: Text('El amianto')
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
                                      isClickedRed9 = true;
                                      isClickedOrange9 = false;
                                      isClickedYellow9 = false;
                                      isClickedGreen9 = false;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedRed9 ? Colors.red :  Color.fromARGB(255, 255, 153, 153) )
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed9 = false;
                                      isClickedOrange9 = true;
                                      isClickedYellow9 = false;
                                      isClickedGreen9 = false;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedOrange9 ? Colors.orange : Color.fromARGB(255, 245, 197, 125),)
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed9 = false;
                                      isClickedOrange9 = false;
                                      isClickedYellow9 = true;
                                      isClickedGreen9 = false;
                                    });
                                  },  
                                  icon: Icon(Icons.circle, color: isClickedYellow9 ? Colors.yellow : Color.fromARGB(255, 245, 235, 148))
                                ),
                                SizedBox(width: 3,),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isClickedRed9 = false;
                                      isClickedOrange9 = false;
                                      isClickedYellow9 = false;
                                      isClickedGreen9 = true;
                                    });
                                  }, 
                                  icon: Icon(Icons.circle, color: isClickedGreen9 ? Colors.green : Color.fromARGB(255, 152, 250, 155))
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),

                  ], 
                )
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
                      '¿cree que el radón supone un riesgo para su salud? ',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q29.map((e) {
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
                    MaterialPageRoute(builder: (context) => Test6()),
                  );  
                  },
                  child: const Text('Continuar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
                ),
              ),
            ]
          )
        )
       )
    );
  }
}