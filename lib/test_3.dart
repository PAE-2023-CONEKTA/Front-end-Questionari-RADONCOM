import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'test_4.dart';


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

  List<String> options_Q12 = <String>[
    'Agricultura, plantaciones, otros sectores rurales',
    'Producción de metales básicos',
    'Industrias químicas',
    'Comercio',
    'Alimentación, bebidas, tabaco',
    'Silvicultura, madera, pasta y papel',
    'Servicios sanitarios',
    'Hostelería, turismo, restauración',
    'Minería (carbón, otras minas)',
    'Ingeniería mecánica y eléctrica',
    'Medios de comunicación, cultura, gráficos',
    'Producción de petróleo y gas',
    'Servicios postales y de telecomunicaciones',
    'Servicios públicos',
    'Transporte marítimo/Puertos/Pesca/Vías navegables interiores',
    'Textil, confección, cuero, calzado',
    'Transporte (incluida la aviación civil, el ferrocarril y el transporte por carretera)',
    'Fabricación de equipos de transporte',
    'Servicios públicos (agua, gas, electricidad)',
    'Construcción',
    'Educación',
    'Servicios financieros y profesionales',
    'Prefiero no responder'
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
                    Row(
                      children: [
                        Text("Año inicio"),
                        SizedBox(width: 10,),
                        Flexible(child: TextField()),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Año fin/continúo trabajando"),
                        SizedBox(width: 10,),
                        Flexible(child: TextField()),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Tipo de trabajo"),
                        SizedBox(width: 10,),
                        Flexible(child: TextField()),
                      ],
                    )
                  ]
                )
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
                      '¿En qué sector está su profesión actual, o previa si ya no trabaja? Seleccione la que mejor se ajuste:',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    DropdownButtonFormField(
                      items: options_Q12.map((e) {
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
                    MaterialPageRoute(builder: (context) => Test4()),
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
