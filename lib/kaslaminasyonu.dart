import 'package:flutter/material.dart';
import 'package:untitled1/islemlerimiz.dart';
import 'package:untitled1/main.dart';
import 'package:untitled1/randevuolusturma.dart';

class kaslaminasyonu extends StatefulWidget {
  const kaslaminasyonu({Key? key}) : super(key: key);

  @override
  State<kaslaminasyonu> createState() => _kaslaminasyonuState();
}

class _kaslaminasyonuState extends State<kaslaminasyonu> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Kaş Laminasyonu'),backgroundColor: Colors.pinkAccent,
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
                 child: Image.asset('images/kaslaminasyonu.jpg')

              ),



              Text('Seans Ücreti: 700tl'),
              Text('Kullanım süresi 3 aydır . '),
              Text('Kullanılan Teknik: Kıl Çizme '),
              Text('Kaş laminasyonu uygulamasında enjeksiyon kullanılmamaktadır. Sadece kaşın şekillendirilmesine yönelik yapılan görüntü uygulamasıdır..'),
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

