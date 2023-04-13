import 'package:flutter/material.dart';
import 'package:untitled1/Hakkinda.dart';
import 'package:untitled1/islemlerimiz.dart';
import 'package:untitled1/main.dart';
import 'package:untitled1/randevuolusturma.dart';



class bolgeselincelme extends StatefulWidget {
  const bolgeselincelme({Key? key}) : super(key: key);

  @override
  State<bolgeselincelme> createState() => _bolgeselincelmeState();
}


class _bolgeselincelmeState extends State<bolgeselincelme> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Bölgesel İncelme'),backgroundColor: Colors.pinkAccent,
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
                  child: Image.asset('images/bolgeselincelme.jpg')

              ),



              Text('Seans Ücreti: 500tl'),
              Text('Tavsiye Edilen Seans Sayısı 8 '),
              Text('Kullanılan Cihaz: Diposhape Cihazı '),
              Text('İki Seans arası geçen süre Maximum 4 hafta olmalıdır.'),
              Text('Manyetik dalga ile çalışan cihazımız çeşitli egzersizler ile birlikte kişilerin kısa sürede zayıflamasını sağlamaktadır.'),
              Text('Alanında uzman kadromuzdan bu hizmeti almak için hemen .randevu oluşturabilirsiniz '),

              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent




                    ),

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
