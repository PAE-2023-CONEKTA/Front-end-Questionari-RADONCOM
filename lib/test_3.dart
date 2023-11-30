import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Test3 extends StatefulWidget {
    Test3({Key? key}) : super(key: key);

  @override
  _Test3State createState() => _Test3State();
}

class _Test3State extends State<Test3> {
 
 //opciones para controlar status laboral
  bool amoDeCasaIsChecked = false;
  bool enActivoIsChecked = false;
  bool jubiladoIsIsChecked = false;
  bool bajaIsChecked = false;
  bool paroIsChecked = false;
  bool otherStatusIsChecked = false;

  DateTime startWorkingDate = DateTime.now();


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
                  'Continuemos con preguntas sobre su trabajo actual y trabajos previos...',
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
                      '¿Cuál de las siguientes categorías describe mejor su status laboral?',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    
                    Column(
                      children: [
                        CheckboxListTile(title: const Text('Amo/a de casa'), value: amoDeCasaIsChecked, onChanged: (bool? newValue) {setState(() {
                          amoDeCasaIsChecked = newValue!;
                        });}),
                        CheckboxListTile(title: const Text('Trabajando en activo'), value: enActivoIsChecked, onChanged: (bool? newValue) {setState(() {
                          enActivoIsChecked = newValue!;
                        });}),
                        CheckboxListTile(title: const Text('Jubilado'), value: jubiladoIsIsChecked, onChanged: (bool? newValue) {setState(() {
                          jubiladoIsIsChecked = newValue!;
                        });}),
                        CheckboxListTile(title: const Text('De baja laboral'), value: bajaIsChecked, onChanged: (bool? newValue) {setState(() {
                          bajaIsChecked = newValue!;
                        });}),
                        CheckboxListTile(title: const Text('Otros'), value: otherStatusIsChecked, onChanged: (bool? newValue) {setState(() {
                          otherStatusIsChecked = newValue!;
                        });})
                        
                      ],
                    ),

                    Visibility(
                      visible: otherStatusIsChecked,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 30,),
                          Text('¿Qué otro status cree que le define mejor?'),
                          TextField(),
                        ],
                      ),
                    )
                  ]
                ),
              ),
              const SizedBox(height: 20),
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
                      'En relación a su trabajo actual, o previo si ya no trabaja:',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    /*YearPicker(firstDate: DateTime(2000), lastDate: DateTime.now(), selectedDate: startWorkingDate, onChanged:(value) => setState(() {
                      startWorkingDate = value;
                    }),)*/
                  ]
                )
              ),
              SizedBox(height: 50,),
              /*Container(
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
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
