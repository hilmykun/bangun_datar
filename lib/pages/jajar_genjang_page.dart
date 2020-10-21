part of 'pages.dart';

class JajarGenjangPage extends StatefulWidget {
  @override
  _JajarGenjangPageState createState() => _JajarGenjangPageState();
}

class _JajarGenjangPageState extends State<JajarGenjangPage> {
  ///Global Key
  final _keyForm = GlobalKey<FormState>();

  ///Variabel keliling
  TextEditingController kelilingAController = TextEditingController();
  TextEditingController kelilingBController = TextEditingController();
  TextEditingController kelilingCController = TextEditingController();
  TextEditingController kelilingDController = TextEditingController();

  ///Variabel luas, alas x tinggi
  TextEditingController alasController = TextEditingController();
  TextEditingController tinggiController = TextEditingController();

  ///Variabel
  String alas = "";
  String tinggi = "";
  String sisiA = "";
  String sisiB = "";
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
        title: Text("Jajar Genjang"),
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
                        'assets/rumus_jajar_genjang.jpg',
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
                        'Menghitung Keliling Jajar Genjang',
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        customFieldKeliling('Sisi A', kelilingAController),
                        customFieldKeliling1('Sisi B', kelilingBController),
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
                                var number = 2;

                                ///Rumus Keliling jajar genjang
                                var kalkulasiHasilKeliling =
                                    number * (sisiA + sisiB);

                                ///Hasil akhir dari sisi x sisi
                                hasil =
                                    kalkulasiHasilKeliling.toInt().toString();
                              });
                            }
                          },
                        ),
                        SizedBox(height: 5),
                        Container(
                          child: Text("Keliling jajar genjang adalah : $hasil"),
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
                              'Menghitung Luas Jajar Genjang',
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

                            ///Rumus persegi sisi x sisi
                            var kalkulasiHasilLuas = (alas) * (tinggi);

                            ///Hasil akhir dari sisi x sisi
                            hasil1 = kalkulasiHasilLuas.toInt().toString();
                          });
                        }
                      },
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: Text("Keliling jajar genjang adalah : $hasil1"),
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
