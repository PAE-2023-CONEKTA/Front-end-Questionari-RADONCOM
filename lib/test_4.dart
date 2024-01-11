import 'package:flutter/material.dart';
import 'test_5.dart';

class Test4 extends StatefulWidget {
    Test4({Key? key}) : super(key: key);

  @override
  _Test4State createState() => _Test4State();
}

class _Test4State extends State<Test4> {

  List<String> options_Q15 = <String>[
      'Soy propietario/a',
      'Estoy de alquiler, el propietario es ajeno a mi familia',
      'Estoy de alquiler, el propietario es un miembro de mi familia',
      'Prefiero no responder'
  ];

  List<String> options_Q16 = <String>[
    'Casa unifamiliar',
    'Casa adosada',
    'Casa pareada',
    'Piso / Apartamento',
    'Otro'
  ];

  List<String> options_Q17= <String>[
    'Bajo',
    'Entresuelo',
    'Primero',
    'Secundario',
    'Tercero o superior',
    'NA'
  ];

  List<String> options_Q18= <String>[
    'Antes de 1950',
    'De la década de 1960',
    'De la década de 1970',
    'De la década de 1980',
    'De la década de 1990',
    'Construida más tarde del 2000',
    'No lo sé'
  ];

  List<String> options_Q19= <String>[
    'Sí, Aislamiento térmico/sonoro',
    'Sí, Aislamiento ventanas/suelo',
    'No',
    'NA'
  ];

  List<String> options_Q20= <String>[
    'Natural (abriendo ventanas)',
    'Ventilación mecánica',
    'Presión positiva',
    'Aspiración',
    'Otros'
  ];

  //opciones para controlar quien reside en su somicilio
    bool soloIsChecked = false;
    bool parejaIsChecked = false;
    bool hijosIsIsChecked = false;
    bool ostrosFamiliaresIsChecked = false;
    bool companerosIsChecked = false;
    bool noContestoStatusIsChecked = false;


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
                  'En relación con su residencia actual…',
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
                      '¿Lugar de residencia actual:',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                        decoration: InputDecoration(
                          hintText: ' país/ciudad/municipio/código postal',
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
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
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '¿Desde cuándo vive en su residencia actual?',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    TextField()
                  ]
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
                      '¿La casa donde vive es de …?',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q15.map((e) {
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
                      '¿Su residencia actual es un/a?',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q16.map((e) {
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
                      '¿En qué piso (altura) vive?',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q17.map((e) {
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
                      '¿Conoce el año de construcción aproximado?',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q18.map((e) {
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
                      '¿Ha hecho alguna vez reformas en su domicilio actual?',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q19.map((e) {
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
                      '¿Cuál es el sistema de ventilación que usted emplea en su casa?',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q20.map((e) {
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
                    const Text('¿Cuántos miembros de la familia viven actualmente en su hogar (incluido usted mismo)? Los hijos/as que viven en alojamientos para estudiantes y regresan a casa durante el fin de semana también cuentan como miembros del hogar.',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    TextField()
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
                      '¿Con quién reside en su domicilio?',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    
                    Column(
                      children: [
                        CheckboxListTile(title: const Text('Solo'), value: soloIsChecked, onChanged: (bool? newValue) {setState(() {
                          soloIsChecked = newValue!;
                        });}),
                        CheckboxListTile(title: const Text('Pareja'), value: parejaIsChecked, onChanged: (bool? newValue) {setState(() {
                          parejaIsChecked = newValue!;
                        });}),
                        CheckboxListTile(title: const Text('Hijos'), value: hijosIsIsChecked, onChanged: (bool? newValue) {setState(() {
                          hijosIsIsChecked = newValue!;
                        });}),
                        CheckboxListTile(title: const Text('Otros familiares'), value: ostrosFamiliaresIsChecked, onChanged: (bool? newValue) {setState(() {
                          ostrosFamiliaresIsChecked = newValue!;
                        });}),
                        CheckboxListTile(title: const Text('Compañeros de piso'), value: companerosIsChecked, onChanged: (bool? newValue) {setState(() {
                          companerosIsChecked = newValue!;
                        });}),
                        CheckboxListTile(title: const Text('Prefiero no contestar'), value: noContestoStatusIsChecked, onChanged: (bool? newValue) {setState(() {
                          noContestoStatusIsChecked = newValue!;
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
                    const Text('¿Cuántas personas menores de 18 años viven en su domicilio?',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    TextField()
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
                      'Durante su infancia vivió en:',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                        decoration: InputDecoration(
                          hintText: ' país/ciudad/municipio/código postal',
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        )
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
                    MaterialPageRoute(builder: (context) => Test5()),
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