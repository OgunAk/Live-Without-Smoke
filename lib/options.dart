import 'package:flutter/material.dart';
import 'informations.dart';

class Options extends StatelessWidget {
  final String boy;
  int yas;
  final String kilo;
  final int sigaraSayisi;

  Options({
    required this.boy,
    required this.yas,
    required this.kilo,
    required this.sigaraSayisi, required String cinsiyet,
  });

  void _navigateToDetails(BuildContext context, Widget emptyPage) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => emptyPage,
        settings: RouteSettings(
          arguments: {
            'boy': boy,
            'yas': yas,
            'kilo': kilo,
            'sigaraSayisi': sigaraSayisi,
          },
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
      body: Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.green,
        child: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => _navigateToDetails(context, EmptyPage1(boy: boy, yas: yas, kilo: kilo, sigaraSayisi: sigaraSayisi)),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16.0),
                    color: Colors.white70,
                  ),
                  margin: EdgeInsets.only(bottom: 8.0),
                  child: Center(
                    child: Text(
                      '1 hafta sigara içmezsen ne olur?',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 1.5,
              height: 20.0,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => _navigateToDetails(context, EmptyPage2(boy: boy, yas: yas, kilo: kilo, sigaraSayisi: sigaraSayisi)),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16.0),
                    color: Colors.white70,
                  ),
                  margin: EdgeInsets.only(bottom: 8.0),
                  child: Center(
                    child: Text(
                      '1 ay sigara içmezsen ne olur?',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 1.5,
              height: 20.0,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => _navigateToDetails(context, EmptyPage3(boy: boy, yas: yas, kilo: kilo, sigaraSayisi: sigaraSayisi)),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16.0),
                    color: Colors.white70,
                  ),
                  margin: EdgeInsets.only(bottom: 8.0),
                  child: Center(
                    child: Text(
                      '1 sene sigara içmezsen ne olur?',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 2.0,
              height: 20.0,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => _navigateToDetails(context, EmptyPage4(boy: boy, yas: yas, kilo: kilo, sigaraSayisi: sigaraSayisi)),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16.0),
                    color: Colors.white70,
                  ),
                  margin: EdgeInsets.only(bottom: 8.0),
                  child: Center(
                    child: Text(
                      '5 sene sigara içmezsen ne olur?',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}