import 'package:flutter/material.dart';
import 'package:untitled1/islemlerimiz.dart';
import 'package:untitled1/main.dart';
import 'package:untitled1/randevuolusturma.dart';

class kirpiklifting extends StatefulWidget {
  const kirpiklifting({Key? key}) : super(key: key);

  @override
  State<kirpiklifting> createState() => _kirpikliftingState();
}

class _kirpikliftingState extends State<kirpiklifting> {


  @override
  Widget build(BuildContext context) {




    return Scaffold(
      appBar: AppBar(
        title: Text('Kirpik Lifting'),backgroundColor: Colors.pinkAccent,
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
                  child: Image.asset('images/kirpiklifting.jpg')

              ),



              Text('Seans Ücreti: 600tl'),
              Text('Kullanım Süresi 2 aydır. '),
              Text('Kullanılan Teknik : keratin bakım '),
              Text('Kirpiklerinizin bir süre boyunca daha uzun ve hacimli görünmesini sağlayan bir uygulamadır. '),
              Text('Seyrek ve kısa kirpiklerinizini hacimlendirmek için merkezimize davetlisiniz.'),
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