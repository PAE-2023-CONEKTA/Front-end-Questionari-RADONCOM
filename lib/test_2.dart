import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'test_3.dart';

class Test2 extends StatefulWidget {
    Test2({Key? key}) : super(key: key);

  @override
  _Test2State createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  TextEditingController emailController = TextEditingController();
  List<String> siNo = <String>[
    'Sí',
    'No',
  ];

  //opciones para controlar los tipos de tabaco seleccionados
  bool rubioIsChecked = false;
  bool negroIsChecked = false;
  bool liarIsChecked = false;
  bool pipaIsChecked = false;
  bool othersIsChecked = false;

  //opciones para controlar otros productos
  bool purosIsChecked = false;
  bool vaperIsChecked = false;
  bool cannabisIsChecked = false;
  bool noProductIsChecked = false;
  bool otherProductsIsChecked = false;


  //para controlar visibilities
  int smoke = 3;
  int previousSmoker = 3;
  
 

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
                  'Seguimos con algunas preguntas sobre tabaquismo...',
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
                      '¿Actualmente usted fuma?',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: siNo.map((e) {
                        return DropdownMenuItem(child: Text(e), value: e);
                      }).toList(),
                       onChanged: (String? value) {
                      if (value == 'Sí') {
                        setState(() {
                          smoke = 0;
                          previousSmoker = 3;
                        });
                      } else if (value == 'No'){
                        setState(() {
                          smoke = 1;
                          previousSmoker = 3;
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
                    Visibility(
                      visible: smoke != 3 && smoke.isEven, //FUMA 
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 30,),
                          Text('¿Cuantos cigarrillos de media al día fuma aproxiadamente? '),
                          TextField(),
                          SizedBox(height: 15,),
                          Text('¿A qué edad empezó a fumar?'),
                          TextField(),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: smoke != 3 && smoke.isOdd, //NO FUMA
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 30,),
                            const Text(
                              '¿Fumava previamente?',
                            ),
                            const SizedBox(height: 10,),
                            DropdownButtonFormField(
                              items: siNo.map((e) {
                                return DropdownMenuItem(child: Text(e), value: e);
                              }).toList(),
                              onChanged: (String? value) {
                              if (value == 'Si') {
                                setState(() {
                                  previousSmoker = 0;
                                });
                              } else if (value == 'No'){
                                setState(() {
                                  previousSmoker = 1;
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
                          ],
                        ),
                      ),
                       Visibility(
                          visible: smoke != 3 && smoke.isOdd && previousSmoker != 3 && previousSmoker.isEven, //NO FUMA PERO FUMABA
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 30,),
                              Text('¿Cuantos cigarrillos de media al día fumaba aproxiadamente? '),
                              TextField(),
                              SizedBox(height: 15,),
                              Text('¿A qué edad empezó a fumar?'),
                              TextField(),
                              SizedBox(height: 15,),
                              Text('¿A qué edad dejó a fumar?'),
                              TextField(),
                            ],
                          ),
                        ),
                  ]
                ),
              ),
              SizedBox(height: 20,),
          
              Visibility(
                visible: (smoke !=3 && smoke.isEven) || (smoke != 3 && smoke.isOdd && previousSmoker != 3 && previousSmoker.isEven),
                child: Column(
                  children: [
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
                            '¿Qué tipo de tabaco fuma o ha fumado?',
                            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                          SizedBox(height: 10,),
                          
                          Column(
                            children: [
                              CheckboxListTile(title: const Text('Rubio'), value: rubioIsChecked, onChanged: (bool? newValue) {setState(() {
                                rubioIsChecked = newValue!;
                              });}),
                              CheckboxListTile(title: const Text('Negro'), value: negroIsChecked, onChanged: (bool? newValue) {setState(() {
                                negroIsChecked = newValue!;
                              });}),
                              CheckboxListTile(title: const Text('Tabaco para liar'), value: liarIsChecked, onChanged: (bool? newValue) {setState(() {
                                liarIsChecked = newValue!;
                              });}),
                              CheckboxListTile(title: const Text('Pipa'), value: pipaIsChecked, onChanged: (bool? newValue) {setState(() {
                                pipaIsChecked = newValue!;
                              });}),
                              CheckboxListTile(title: const Text('Otros'), value: othersIsChecked, onChanged: (bool? newValue) {setState(() {
                                othersIsChecked = newValue!;
                              });})
                              
                            ],
                          ),

                          Visibility(
                            visible: othersIsChecked,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SizedBox(height: 30,),
                                Text('¿Qué otro tabaco ha fumado?'),
                                TextField(),
                              ],
                            ),
                          )
                        ]
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
                            '¿Ha fumado o fuma otros productos a parte de cigarrillos?',
                            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                          SizedBox(height: 10,),
                          
                          Column(
                            children: [
                              CheckboxListTile(title: const Text('Puros'), value: purosIsChecked, onChanged: (bool? newValue) {setState(() {
                                purosIsChecked = newValue!;
                              });}),
                              CheckboxListTile(title: const Text('Vaper/Cigarrillo electrónico'), value: vaperIsChecked, onChanged: (bool? newValue) {setState(() {
                                vaperIsChecked = newValue!;
                              });}),
                              CheckboxListTile(title: const Text('No'), value: noProductIsChecked, onChanged: (bool? newValue) {setState(() {
                                noProductIsChecked = newValue!;
                              });}),
                              CheckboxListTile(title: const Text('Otros'), value: otherProductsIsChecked, onChanged: (bool? newValue) {setState(() {
                                otherProductsIsChecked = newValue!;
                              });})
                              
                            ],
                          ),

                          Visibility(
                            visible: otherProductsIsChecked,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SizedBox(height: 30,),
                                Text('¿Qué otro producto ha fumado?'),
                                TextField(),
                              ],
                            ),
                          )
                        ]
                      ),
                    ),
                  ],
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
                    MaterialPageRoute(builder: (context) => Test3()),
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
