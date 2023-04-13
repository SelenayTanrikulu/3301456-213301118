import 'package:flutter/material.dart';
import 'package:untitled1/islemlerimiz.dart';
import 'package:untitled1/main.dart';
import 'package:untitled1/randevuolusturma.dart';

class lazerepilasyon extends StatefulWidget {
  const lazerepilasyon({Key? key}) : super(key: key);

  @override
  State<lazerepilasyon> createState() => _lazerepilasyonState();
}

class _lazerepilasyonState extends State<lazerepilasyon> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Lazer Epilasyon'),backgroundColor: Colors.pinkAccent,
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
                   child: Image.asset('images/lazerepilasyon.jpg')

              ),



              Text('Seans Ücreti: 300tl'),
              Text('Tavsiye edilen seans sayısı 12 dir. '),
              Text('Kullanılan Teknik: Buz Lazer '),
              Text('Acısız , ağrısız bir işlemdir .En ince kıl köküne kadar bitirme garantisi veriyoruz.'),
              Text('Alanında uzman kadromuzdan bu hizmeti almak için hemen randevu oluşturabilirsiniz '),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
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


