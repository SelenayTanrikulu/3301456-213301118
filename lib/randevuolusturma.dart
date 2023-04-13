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
import 'main.dart';

class randevuolusturma extends StatefulWidget {
  const randevuolusturma({Key? key}) : super(key: key);

  @override
  State<randevuolusturma> createState() => _randevuolusturmaState();
}

class _randevuolusturmaState extends State<randevuolusturma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Randevu Oluşturma Ekranı'),backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[





              Text('Seçtiğiniz Şubede Randevunuz Oluşturuluyor',style: TextStyle(fontSize: 40.0),),




            ],
          ),
        ),
      ),
    );
  }
}



