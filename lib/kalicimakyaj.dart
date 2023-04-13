import 'package:flutter/material.dart';
import 'package:untitled1/islemlerimiz.dart';
import 'package:untitled1/main.dart';
import 'package:untitled1/randevuolusturma.dart';

class kalicimakyaj extends StatefulWidget {
  const kalicimakyaj({Key? key}) : super(key: key);

  @override
  State<kalicimakyaj> createState() => _kalicimakyajState();
}

class _kalicimakyajState extends State<kalicimakyaj> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Kalıcı Makyaj'),backgroundColor: Colors.pinkAccent,
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
                 child: Image.asset('images/kaicimakyaj.jpeg')

              ),



              Text('Seans Ücreti: 1000tl'),
              Text('Kullanım Süresi 1 yıldır. '),
              Text('Kullanılan Teknik : Mikro Pigment '),
              Text('Ten renginize göre kalıcılık artıp azalabilir. '),
              Text('Yüze özel bitkisel makyaj malzemeleri ile yapılır. Tek kullanımlık kişiye özel steril iğneler kullanılır .'),
              Text('Alanında uzman kadromuzdan bu hizmeti almak için hemen .randevu oluşturabilirsiniz '),

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

