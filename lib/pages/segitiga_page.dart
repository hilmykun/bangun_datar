part of 'pages.dart';

class SegitigaPage extends StatefulWidget {
  @override
  _SegitigaPageState createState() => _SegitigaPageState();
}

class _SegitigaPageState extends State<SegitigaPage> {
  ///Global Key
  final _keyForm = GlobalKey<FormState>();

  ///Variabel keliling segitiga
  TextEditingController kelilingAController = TextEditingController();
  TextEditingController kelilingBController = TextEditingController();
  TextEditingController kelilingCController = TextEditingController();

  ///Variabel luas, alas x tinggi segitiga
  TextEditingController alasController = TextEditingController();
  TextEditingController tinggiController = TextEditingController();

  ///Variabel
  String alas = "";
  String tinggi = "";
  String kelilingA = "";
  String kelilingB = "";
  String kelilingC = "";
  String hasil = "";
  String hasil1 = "";

  //Widget untuk custom field A
  Widget customFieldKeliling(String placeholdername, controlName) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: new TextFormField(
        keyboardType: TextInputType.number,
        controller: controlName,
        validator: (value) {
          if (value.isEmpty) {
            return 'Input Sisi A';
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
          labelText: "Sisi A",
          hintText: placeholdername,
        ),
      ),
    );
  }

  //Widget untuk custom field B
  Widget customFieldKeliling1(String placeholdername, controlName) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: new TextFormField(
        keyboardType: TextInputType.number,
        controller: controlName,
        validator: (value) {
          if (value.isEmpty) {
            return 'Input Sisi B';
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
          labelText: "Sisi B",
          hintText: placeholdername,
        ),
      ),
    );
  }

  //Widget untuk custom field C
  Widget customFieldKeliling2(String placeholdername, controlName) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: new TextFormField(
        keyboardType: TextInputType.number,
        controller: controlName,
        validator: (value) {
          if (value.isEmpty) {
            return 'Input Sisi C';
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
          labelText: "Sisi B",
          hintText: placeholdername,
        ),
      ),
    );
  }

  ///Custom field untuk alas
  Widget customFieldAlas(String placeholdername, controlName) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: new TextFormField(
        keyboardType: TextInputType.number,
        controller: controlName,
        validator: (value) {
          if (value.isEmpty) {
            return 'Input Alas';
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
          labelText: "Alas",
          hintText: placeholdername,
        ),
      ),
    );
  }

  ///Custom field untuk tinggi
  Widget customFieldTinggi(String placeholdername, controlName) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: new TextFormField(
        keyboardType: TextInputType.number,
        controller: controlName,
        validator: (value) {
          if (value.isEmpty) {
            return 'Input Tinggi';
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
          labelText: "Tinggi",
          hintText: placeholdername,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segitiga")
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
                        'assets/rumus_segitiga.jpg',
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
                        'Menghitung Keliling Segitiga',
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        customFieldKeliling('Sisi A', kelilingAController),
                        customFieldKeliling1('Sisi B', kelilingBController),
                        customFieldKeliling2('Sisi C', kelilingCController),
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
                                var sisiA =
                                    double.parse(kelilingAController.text);
                                var sisiB =
                                    double.parse(kelilingBController.text);
                                var sisiC =
                                    double.parse(kelilingCController.text);

                                ///Rumus Keliling jajar genjang
                                var kalkulasiHasilKelilingSegitiga =
                                    sisiA + sisiB + sisiC;

                                ///Hasil akhir dari sisi x sisi
                                hasil = kalkulasiHasilKelilingSegitiga
                                    .toInt()
                                    .toString();
                              });
                            }
                          },
                        ),
                        SizedBox(height: 5),
                        Container(
                          child: Text("Keliling Segitiga adalah : $hasil"),
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
                              'Menghitung Luas Segitiga',
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
                    customFieldAlas('Alas', alasController),
                    customFieldTinggi('Tinggi', tinggiController),
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
                            var alas = double.parse(alasController.text);
                            var tinggi = double.parse(tinggiController.text);
                            var number = 1 / 2;

                            ///Rumus persegi sisi x sisi
                            var kalkulasiHasilLuasSegitiga =
                                number * alas * tinggi;

                            ///Hasil akhir dari sisi x sisi
                            hasil1 =
                                kalkulasiHasilLuasSegitiga.toInt().toString();
                          });
                        }
                      },
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: Text("Luas Segitiga adalah : $hasil1"),
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
