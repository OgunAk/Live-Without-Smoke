import 'package:flutter/material.dart';
import 'package:live_without_smoking/options.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SigarasizYasam(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.green),
      ),
    );
  }
}

class SigarasizYasam extends StatefulWidget {
  @override
  _SigarasizYasamState createState() => _SigarasizYasamState();
}

class _SigarasizYasamState extends State<SigarasizYasam> {
  int sigaraSayisi = 0;
  TextEditingController boyController = TextEditingController();
  TextEditingController kiloController = TextEditingController();
  TextEditingController yasController = TextEditingController();
  String cinsiyet = '';

  void _ilerleButonuOnPressed() {
    int yas = int.tryParse(yasController.text) ?? 0;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Options(
          boy: boyController.text,
          yas: yas,
          kilo: kiloController.text,
          sigaraSayisi: sigaraSayisi,
          cinsiyet: cinsiyet,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Live Without Smoke',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.green,
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Divider(
                color: Colors.grey,
                thickness: 1,
                height: 10,
                indent: 20,
                endIndent: 20,
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/smoke_free_image.jpg',
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadiusDirectional.circular(16.0),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            'Boy(cm)',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          TextField(
                            controller: boyController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(),
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadiusDirectional.circular(16.0),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            'Yaş',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          TextField(
                            controller: yasController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(),
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadiusDirectional.circular(16.0),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            'Kilo(kg)',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          TextField(
                            controller: kiloController,
                            keyboardType: TextInputType.number,
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        'Günde İçilen Sigara Sayısı: $sigaraSayisi',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Slider(
                        value: sigaraSayisi.toDouble(),
                        onChanged: (value) {
                          setState(() {
                            sigaraSayisi = value.round();
                          });
                        },
                        min: 0,
                        max: 50,
                        divisions: 50,
                        label: sigaraSayisi.round().toString(),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          cinsiyet = 'Kadın';
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadiusDirectional.circular(16.0),
                          color: cinsiyet == 'Kadın' ? Colors.pinkAccent : Colors.white,
                        ),
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Icon(
                              Icons.female,
                              size: 50,
                              color: Colors.pink,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Kadın',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          cinsiyet = 'Erkek';
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadiusDirectional.circular(16.0),
                          color: cinsiyet == 'Erkek' ? Colors.lightBlueAccent : Colors.white,
                        ),
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Icon(
                              Icons.male,
                              size: 50,
                              color: Colors.blue,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Erkek',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _ilerleButonuOnPressed,
                child: Text('İlerle'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
