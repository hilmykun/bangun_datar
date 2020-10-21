part of 'pages.dart';

class PersegiPage extends StatefulWidget {
  @override
  _PersegiPageState createState() => _PersegiPageState();
}

class _PersegiPageState extends State<PersegiPage> {
  ///Global Key
  final _keyForm = GlobalKey<FormState>();

  TextEditingController sideController = TextEditingController();
  TextEditingController side1Controller = TextEditingController();
  TextEditingController side2Controller = TextEditingController();

  String sisi = "";
  String sisi1 = "";
  String hasil = "";
  String hasil1 = "";

  //Widget untuk custom field sisi persegi
  Widget customFieldSide(String placeholdername, controlName) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: new TextFormField(
        keyboardType: TextInputType.number,
        controller: controlName,
        validator: (value) {
          if (value.isEmpty) {
            return 'Input Sisi';
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
          labelText: "Sisi",
          hintText: placeholdername,
        ),
      ),
    );
  }

  //Widget untuk custom field sisi persegi
  Widget customFieldSide1(String placeholdername, controlName) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: new TextFormField(
        keyboardType: TextInputType.number,
        controller: controlName,
        validator: (value) {
          if (value.isEmpty) {
            return 'Input Sisi';
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
          labelText: "Sisi",
          hintText: placeholdername,
        ),
      ),
    );
  }
  ///Custom field untuk keliling sisi persegi
  Widget customFieldSide2(String placeholdername, controlName) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: new TextFormField(
        keyboardType: TextInputType.number,
        controller: controlName,
        validator: (value) {
          if (value.isEmpty) {
            return 'Input Sisi';
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
          labelText: "Sisi",
          hintText: placeholdername,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi")
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
                        'assets/rumus_persegi.jpg',
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
                        'Menghitung Luas Persegi',
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        customFieldSide('Sisi', sideController),
                        customFieldSide1('Sisi', side1Controller),
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
                                var side = double.parse(sideController.text);
                                var side1 = double.parse(side1Controller.text);

                                ///Rumus persegi sisi x sisi
                                var kalkulasiHasil = (side) * (side1);

                                ///Hasil akhir dari sisi x sisi
                                hasil = kalkulasiHasil.toInt().toString();
                              });
                            }
                          },
                        ),
                        SizedBox(height: 5),
                        Container(
                          child: Text("Luas Persegi adalah : $hasil"),
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
                              'Menghitung Keliling Persegi',
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
                    customFieldSide2('Sisi', side2Controller),
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
                            var side2 = 4;

                            var side3 = double.parse(side2Controller.text);

                            ///Rumus persegi sisi x sisi
                            var kalkulasiHasil1 = (side2) * (side3);

                            ///Hasil akhir dari sisi x sisi
                            hasil1 = kalkulasiHasil1.toInt().toString();
                          });
                        }
                      },
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: Text("Keliling Persegi adalah : $hasil1"),
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
