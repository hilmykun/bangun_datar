part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ///KEYFORM
  //final _keyFrom = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 7),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 50),
                Container(
                  child: Center(
                    child: Text(
                      'APLIKASI MENGHITUNG',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                      'BANGUN DATAR',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Divider(
                  color: Colors.blue,
                  indent: 10,
                  endIndent: 10,
                  height: 20,
                  thickness: 5,
                ),
                SizedBox(height: 10),
                Container(
                  child: Text(
                    "Pilih Bangun Datar",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.blue),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 110,
                          width: 110,
                          child: RaisedButton(
                            color: Colors.blue,
                            elevation: 5,
                            onPressed: () {
                              //Go to persegi
                              Get.to(PersegiPage());
                            },
                            child: Text(
                              "PERSEGI",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 110,
                          width: 110,
                          child: RaisedButton(
                            color: Colors.blue,
                            elevation: 5,
                            onPressed: () {
                              //Go To Jajar genjang
                              Get.to(JajarGenjangPage());
                            },
                            child: Text(
                              "JAJAR \nGENJANG",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 110,
                          width: 110,
                          child: RaisedButton(
                            elevation: 5,
                            color: Colors.blue,
                            onPressed: () {
                              //Go to segitiga
                              Get.to(SegitigaPage());
                            },
                            child: Text(
                              "SEGITIGA",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 110,
                          width: 110,
                          child: RaisedButton(
                            elevation: 5,
                            color: Colors.blue,
                            onPressed: () {
                              //Go To lingkaran
                              Get.to(LingkaranPage());
                            },
                            child: Text(
                              "LINGKARAN",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
