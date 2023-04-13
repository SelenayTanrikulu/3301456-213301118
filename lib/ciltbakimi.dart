import 'package:flutter/material.dart';
import 'package:untitled1/islemlerimiz.dart';
import 'package:untitled1/main.dart';
import 'package:untitled1/randevuolusturma.dart';

class ciltbakimi extends StatefulWidget {
  const ciltbakimi({Key? key}) : super(key: key);

  @override
  State<ciltbakimi> createState() => _ciltbakimiState();
}

class _ciltbakimiState extends State<ciltbakimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cilt Bakımı'),backgroundColor: Colors.pinkAccent,
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
                   child: Image.asset('images/ciltbakimi.jpg')

              ),



              Text('Seans Ücreti: 400tl'),
              Text('Tavsiye Edilen Seansın Ayda 1 kere tekrarlanmasıdır '),
              Text('İki Seans arası geçen sürede ev devam ürünleri kullanılmalıdır.'),
              Text('Yapılacak İşlemlere cilt analizinize göre seanstan hemen önce karar verilir '),
              Text('Her cilt tipinin ihtiyacına göre temizleme,peeling,maske,onarım,nem terapisi ve vitamin takviyesi uygulanır'),
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

