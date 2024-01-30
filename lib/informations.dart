// empty_page.dart
import 'package:flutter/material.dart';
import 'custom_list.dart';

class EmptyPage1 extends StatelessWidget {
  final String boy;
  int yas;
  final String kilo;
  final int sigaraSayisi;

  EmptyPage1({
    required this.boy,
    required this.yas,
    required this.kilo,
    required this.sigaraSayisi,
  });

  List<String> getCustomList() {
    // Custom listeyi custom_list.dart dosyasındaki fonksiyon ile alabiliriz.
    return CustomList.getCustomList(yas, sigaraSayisi, "EmptyPage1");
  }

  @override
  Widget build(BuildContext context) {
    return _buildEmptyPage(context, '1 hafta sigara içmezsen ne olur?');
  }

  Widget _buildEmptyPage(BuildContext context, String title) {
    List<String> myList = getCustomList();

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(title),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.20,

              color: Colors.white54,
              padding: EdgeInsets.fromLTRB(16.0,8,16,16),
              child: Text(
                'Bu 1 hafta için.' '\nBoyunuz: $boy, Yaşınız: $yas, Kilonuz: $kilo, günde içilen sigara Sayısı: $sigaraSayisi',
                style: TextStyle(fontSize: 20),
              ),

            ),
            SizedBox(height: 16.0),

            SizedBox(height: 16.0),
            // Burada custom listeyi kullanabilirsiniz.
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.60,
              color: Colors.white54,
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: myList
                    .map(
                      (item) => ListTile(
                    title: Text(item , style: TextStyle(fontSize: 20),),
                  ),
                )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class EmptyPage2 extends StatelessWidget {
  final String boy;
  final int yas;
  final String kilo;
  final int sigaraSayisi;

  EmptyPage2({
    required this.boy,
    required this.yas,
    required this.kilo,
    required this.sigaraSayisi,
  });

  List<String> getCustomList() {
    return CustomList.getCustomList(yas, sigaraSayisi, "EmptyPage2");
  }

  @override
  Widget build(BuildContext context) {
    return _buildEmptyPage(context, '1 ay sigara içmezsen ne olur?');
  }

  Widget _buildEmptyPage(BuildContext context, String title) {
    List<String> myList = getCustomList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(title),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.20,
              color: Colors.white54,
              padding: EdgeInsets.fromLTRB(16.0, 8, 16, 16),
              child: Text(
                'Bu 1 ay için.' '\nBoyunuz: $boy, Yaşınız: $yas, Kilonuz: $kilo, günde içilen sigara Sayısı: $sigaraSayisi',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.50,
              color: Colors.white54,
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: myList
                    .map(
                      (item) => ListTile(
                    title: Text(
                      item,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class EmptyPage3 extends StatelessWidget {
  final String boy;
  final int yas;
  final String kilo;
  final int sigaraSayisi;

  EmptyPage3({
    required this.boy,
    required this.yas,
    required this.kilo,
    required this.sigaraSayisi,
  });

  List<String> getCustomList() {
    return CustomList.getCustomList(yas, sigaraSayisi, "EmptyPage3");
  }

  @override
  Widget build(BuildContext context) {
    return _buildEmptyPage(context, '1 sene sigara içmezsen ne olur?');
  }

  Widget _buildEmptyPage(BuildContext context, String title) {
    List<String> myList = getCustomList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(title),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.20,
              color: Colors.white54,
              padding: EdgeInsets.fromLTRB(16.0, 8, 16, 16),
              child: Text(
                'Bu 1 sene için.' '\nBoyunuz: $boy, Yaşınız: $yas, Kilonuz: $kilo, günde içilen sigara Sayısı: $sigaraSayisi',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.50,
              color: Colors.white54,
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: myList
                    .map(
                      (item) => ListTile(
                    title: Text(
                      item,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EmptyPage4 extends StatelessWidget {
  final String boy;
  final int yas;
  final String kilo;
  final int sigaraSayisi;

  EmptyPage4({
    required this.boy,
    required this.yas,
    required this.kilo,
    required this.sigaraSayisi,
  });

  List<String> getCustomList() {
    return CustomList.getCustomList(yas, sigaraSayisi, "EmptyPage4");
  }

  @override
  Widget build(BuildContext context) {
    return _buildEmptyPage(context, '5 sene sigara içmezsen ne olur?');
  }

  Widget _buildEmptyPage(BuildContext context, String title) {
    List<String> myList = getCustomList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(title),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.20,
              color: Colors.white54,
              padding: EdgeInsets.fromLTRB(16.0, 8, 16, 16),
              child: Text(
                'Bu 5 sene için.' '\nBoyunuz: $boy, Yaşınız: $yas, Kilonuz: $kilo, günde içilen sigara Sayısı: $sigaraSayisi',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.50,
              color: Colors.white54,
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: myList
                    .map(
                      (item) => ListTile(
                    title: Text(
                      item,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
