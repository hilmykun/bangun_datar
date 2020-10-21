part of 'pages.dart';

class LingkaranPage extends StatefulWidget {
  @override
  _LingkaranPageState createState() => _LingkaranPageState();
}

class _LingkaranPageState extends State<LingkaranPage> {
  ///Global Key
  final _keyForm = GlobalKey<FormState>();

  TextEditingController jarijari1Controller = TextEditingController();
  TextEditingController jarijari2Controller = TextEditingController();

  TextEditingController jarijari3Controller = TextEditingController();

  String jarijariA = "";
  String jarijariB = "";
  String hasil = "";
  String hasil1 = "";

  //Widget untuk custom field jari-jari 1
  Widget customFieldJariJari1(String placeholdername, controlName) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: new TextFormField(
        keyboardType: TextInputType.number,
        controller: controlName,
        validator: (value) {
          if (value.isEmpty) {
            return 'Input Jari Jari A';
          } else if (value.isAlphabetOnly) {
            return 'Input Number';
          }
          return null;
        },
        decoration: InputDecoration(
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10),
            ),
          ),
          labelText: "Jari Jari A",
          hintText: placeholdername,
        ),
      ),
    );
  }

  //Widget untuk custom field jari-jari 2
  Widget customFieldJariJari2(String placeholdername, controlName) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: new TextFormField(
        keyboardType: TextInputType.number,
        controller: controlName,
        validator: (value) {
          if (value.isEmpty) {
            return 'Input Jari Jari B';
          } else if (value.isAlphabetOnly) {
            return 'Input Number';
          }
          return null;
        },
        decoration: InputDecoration(
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10),
            ),
          ),
          labelText: "Jari-JariB",
          hintText: placeholdername,
        ),
      ),
    );
  }

  ///Custom field untuk Jari-jari 3
  Widget customFieldJariJari3(String placeholdername, controlName) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: new TextFormField(
        keyboardType: TextInputType.number,
        controller: controlName,
        validator: (value) {
          if (value.isEmpty) {
            return 'Input Jari-Jari';
          } else if (value.isAlphabetOnly) {
            return 'Input Number';
          }
          return null;
        },
        decoration: InputDecoration(
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10),
            ),
          ),
          labelText: "Jari-Jari",
          hintText: placeholdername,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lingkaran")
      ),
      body: Form(
        key: _keyForm,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      child: Image.asset(
                        'assets/rumus_lingkaran.jpg',
                        fit: BoxFit.cover,
                        height: 200,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.blue,
                    indent: 10,
                    endIndent: 10,
                    height: 20,
                    thickness: 5,
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Center(
                      child: Text(
                        'Menghitung Luas Lingkaran',
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        customFieldJariJari1('Jari-JariA', jarijari1Controller),
                        customFieldJariJari2('Jari-JariB', jarijari2Controller),
                        FlatButton(
                          child: Text(
                            'Hitung',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            if (_keyForm.currentState.validate()) {
                              setState(() {
                                ///Variabel yang mewakilkan nilai controller
                                var jarijariA = double.parse(jarijari1Controller.text);
                                var jarijariB = double.parse(jarijari2Controller.text);
                                var phi = 3.14;
                                ///Rumus persegi sisi x sisi
                                var kalkulasiHasilLuasLingkaran = phi * jarijariA * jarijariB;

                                ///Hasil akhir dari sisi x sisi
                                hasil = kalkulasiHasilLuasLingkaran.toInt().toString();
                              });
                            }
                          },
                        ),
                        SizedBox(height: 5),
                        Container(
                          child: Text("Luas lingkaran adalah : $hasil"),
                        ),
                        Divider(
                          color: Colors.blue,
                          indent: 10,
                          endIndent: 10,
                          height: 20,
                          thickness: 5,
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              'Menghitung Keliling Lingkaran',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    customFieldJariJari3('Jari-Jari', jarijari3Controller),
                    FlatButton(
                      child: Text(
                        'Hitung',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        if (_keyForm.currentState.validate()) {
                          setState(() {
                            ///Variabel yang mewakilkan nilai controller
                            var phi1 = 3.14;
                            var number = 2;
                            var jarijari = double.parse(jarijari3Controller.text);

                            ///Rumus persegi sisi x sisi
                            var kalkulasiHasilKelilingLingkaran = number * phi1 * jarijari;

                            ///Hasil akhir dari sisi x sisi
                            hasil1 = kalkulasiHasilKelilingLingkaran.toInt().toString();
                          });
                        }
                      },
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: Text("Keliling Lingkaran adalah : $hasil1"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
