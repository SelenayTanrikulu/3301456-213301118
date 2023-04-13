import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/Hakkinda.dart';
import 'package:untitled1/islemlerimiz.dart';
import 'package:untitled1/kalicimakyaj.dart';
import 'package:untitled1/lazerepilasyon.dart';
import 'package:untitled1/ciltbakimi.dart';
import 'package:untitled1/kaslaminasyonu.dart';
import 'package:untitled1/proteztirnak.dart';
import 'package:untitled1/bolgeselincelme.dart';
import 'package:untitled1/kirpiklifting.dart';
import 'dart:convert';

import 'package:untitled1/randevuolusturma.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Beauty Aplication',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: '/',
      routes: {
        // '/': (context) => MyHomePage(title:"Anasayfa",),
        '/lazerepilasyon': (context) => lazerepilasyon(),
        '/işlemler': (context) => islemlerimiz(),
        '/Hakkinda': (context) => Hakkinda(),
        '/ciltbakimi' : (context) => ciltbakimi(),
        '/kaşlaminasyonu' : (context) => kaslaminasyonu(),
        '/kirpik lifting' : (context) => kirpiklifting(),
        '/proteztirnak' : (context) => proteztirnak(),
        '/bölgeselincelme' : (context) => bolgeselincelme(),
        '/kalicimakyaj' : (context) => kalicimakyaj(),
        '/randevuoluşturma':(context)=> randevuolusturma(),






      },





      home: const MyHomePage(title: 'Güzellik Merkezi '),


    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String adsoyad = '';
  String suube = '';


  void adsoyadkaydet(String text){
    setState(() {
      adsoyad=text;
    });
  }

  void suubekaydet(String text){
    setState(() {
      suube=text;
    });
  }


  void kontrol(){
    var data = [];
    data.add(adsoyad);
    data.add(suube);

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => islemlerimiz(),

          settings: RouteSettings(
            arguments: data,
          ),
        ));
  }






  @override
  Widget build(BuildContext context) {







    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,



        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              'Adınız ve Soyadınız:',
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                onChanged: (text){adsoyadkaydet(text);} ,
                decoration: const InputDecoration(
                  hintText: 'Adınızı ve Soyadınızı Giriniz',
                ),
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
              ),
            ),
            Text(
              'Şube Tercihiniz:',
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                onChanged: (text){suubekaydet(text);} ,
                decoration: const InputDecoration(
                  hintText: 'Şube Tercihinizi Giriniz',
                ),
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => islemlerimiz()),
                  );
                  kontrol();


                },
                child: Text('Merkezimizde Yapılan İşlemler ',),

              ),

            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Hakkinda()),
                );
              },
                  child: Text("Hakkımızda")),
            )
          ],
        ),

      ),
    );
  }

}