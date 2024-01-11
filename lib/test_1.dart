import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'test_2.dart';

class Test1 extends StatefulWidget {
    Test1({Key? key}) : super(key: key);

  @override
  _Test1State createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  TextEditingController emailController = TextEditingController();
  List<String> options_Q1 = <String>[
    'Masculino',
    'Femenino',
    'No binario',
    'Prefiero no responder'
  ];
  List<String> options_Q3 = <String>[
    'Soltero/a',
    'Casado/a',
    'Viudo/a',
    'Separado/a',
    'Prefiero no responder'
  ];
  List<String> options_Q4 = <String>[
    'Europa',
    'África',
    'América Latina',
    'Norte América',
    'Asia',
    'Oceanía',
    'Prefiero no responder'
  ];
  List<String> options_Q5 = <String>[
    'Educación primaria (Grado Escolar)',
    'Esducación Secundaria Obligatoria (Instituto)',
    'Bachillerato/Formación profesional (ciclo formativo)',
    'Licenciatura/grado universitario',
    'Máster/Doctorado',
    'Otro',
    'Prefiero no responder'
  ];

  bool other_education = false;
  DateTime dateTime = DateTime.now();

  Widget buildDatePicker() => SizedBox(
    child: CupertinoDatePicker(
      mode: CupertinoDatePickerMode.date,
      initialDateTime: DateTime.now(),
      onDateTimeChanged: (value) =>
        setState(() => dateTime = value)
    ),
  );

  void showDataDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext buildContext) {
        return AlertDialog(
          content: Center(
            child:
              Container(
                width: MediaQuery.of(context).size.width,
                child: buildDatePicker()),
          ),
          
        );
      },
    );
  }

  

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
                  'Primero queremos hacerle unas preguntas sobre usted...',
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
                      '¿Cuál es su género?',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q1.map((e) {
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
                    const Text('¿Cuál es su fecha de nacimiento?',
                                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    //buildDatePicker(),
                    Row(
                      children: [
                        IconButton(
                          color: Colors.blueGrey,
                          onPressed: () {
                            showDataDialog(context);
                          },
                          icon: const Icon(Icons.calendar_today), // Changed from `Icons.calendar_month`
                        ),
                        Text(dateTime.toString().substring(0, 10)),
                      ],
                    ),
                  ],),
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
                      '¿Cuál es su estado civil?',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q3.map((e) {
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
                      '¿Cuál es su origen?',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q4.map((e) {
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
                  'En relación con su nivel de estudios, señale cuál es el diploma más alto que ha obtenido',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                  ),
                  SizedBox(height: 10,),
                  DropdownButtonFormField(
                    items: options_Q5.map((e) {
                      return DropdownMenuItem(child: Text(e), value: e);
                    }).toList(),
                    onChanged: (String? value) {
                      if (value == 'Otro') {
                        setState(() {
                          other_education = true;
                        });
                      } else {
                        setState(() {
                          other_education = false;
                        });
                      }
                    },
                    isDense: true,
                    isExpanded: true,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey), // Change color when selected
                      ),
                    ),
                  ),
                  
                  Visibility(
                    visible: other_education,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30,),
                        Text('Escribre qué otro estudio ha obtenido'),
                        TextField(),
                      ],
                    ),
                  )
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
                    MaterialPageRoute(builder: (context) => Test2()),
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
