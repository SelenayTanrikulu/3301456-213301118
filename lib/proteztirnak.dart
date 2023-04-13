import 'package:flutter/material.dart';
import 'package:untitled1/islemlerimiz.dart';
import 'package:untitled1/main.dart';
import 'package:untitled1/randevuolusturma.dart';

class proteztirnak extends StatefulWidget {
  const proteztirnak({Key? key}) : super(key: key);

  @override
  State<proteztirnak> createState() => _proteztirnakState();
}

class _proteztirnakState extends State<proteztirnak> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Protez Tırnak'),backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              Container(
                width: 400,
                height: 400,
                    child: Image.asset('images/proteztirnak.jpg')

              ),



              Text('Seans Ücreti: 350tl'),
              Text('Kullanım süresi 1,5 aydır . '),
              Text('Kullanılan Teknik: Jel oje '),
              Text('Kendi tırnağınızın üstüne uygulanabilen uzun ve hazır tırnaklardır.İstediğiniz tasarımda tırnaklar yaptırabilirsiniz.'),
              Text('Alanında uzman kadromuzdan bu hizmeti almak için hemen randevu oluşturabilirsiniz '),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => randevuolusturma())
                  );

                  },
                  child: Text('RANDEVU OLUŞTUR'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}