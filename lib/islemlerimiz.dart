import 'package:flutter/material.dart';
import 'package:untitled1/kalicimakyaj.dart';
import 'package:untitled1/lazerepilasyon.dart';
import 'package:untitled1/ciltbakimi.dart';
import 'package:untitled1/kaslaminasyonu.dart';
import 'package:untitled1/kirpiklifting.dart';
import 'package:untitled1/proteztirnak.dart';
import 'package:untitled1/bolgeselincelme.dart';

import 'main.dart';


class islemlerimiz extends StatefulWidget {
  //const islemlerimiz({Key? key}) : super(key: key);
  @override
  State<islemlerimiz> createState() => _islemlerimizState();
}

class _islemlerimizState extends State<islemlerimiz> {
  String adsoyad = '';
  String suube = '';

  @override
  Widget build(BuildContext context) {
    List<dynamic>? data = [];
    data = ModalRoute.of(context)?.settings.arguments as List?;
    adsoyad = data![0];
    suube = data[1];

    return Scaffold(
      appBar: AppBar(title: Text('İşlemlerimiz'),
        backgroundColor: Colors.pinkAccent,),
      body: Center(
        child: Column(


          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[





            Text('Merkezimize Hoş Geldiniz ' + adsoyad +' !', style: TextStyle(fontSize: 40.0)),
            Text(  suube +' Şubesini Tercih Ettiniz!', style: TextStyle(fontSize: 40.0)),
            Text('İşlemlerimiz :', style: TextStyle(fontSize: 40.0)),







            Container(

              child: ListTile(

                shape: RoundedRectangleBorder( //<-- SEE HERE
                  side: BorderSide(width: 1),

                ),


                title: Text('Lazer Epilasyon'),
                subtitle: Text('Sınırsız seansta istenmeyen tüylerinize veda edin ...'),
               leading: Image.asset('images/lazerepilasyon.jpg'),        //      Icon(Icons.time_to_leave)
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => lazerepilasyon()),
                  );
                },
              ),

            ),

            Container(
              //color: Colors.transparent,
              child: ListTile(

                shape: RoundedRectangleBorder( //<-- SEE HERE
                  side: BorderSide(width: 1),

                ),


                title: Text('Cilt Bakımı'),
                subtitle: Text('Doğal içeriklere sahip bakım ürünlerimizle tertemiz cilde sahip olmak ister misiniz?'),
                leading: Image.asset("images/ciltbakimi.jpg"),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ciltbakimi()),
                  );
                },
              ),
            ),
          Container(
              //color: Colors.black26,
              child: ListTile(

                shape: RoundedRectangleBorder( //<-- SEE HERE
                  side: BorderSide(width: 1),

                ),




                title: Text('Kaş Laminasyonu'),
                subtitle: Text('Seyrek ve dökülen kaşlara son ! Kaşlarınızı baştan yaratalım ...'),
                leading: Image.asset('images/kaslaminasyonu.jpg'),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => kaslaminasyonu()),
                  );
                },
              ),
            ),
            Container(
              //color: Colors.white24,
              child: ListTile(

                shape: RoundedRectangleBorder( //<-- SEE HERE
                  side: BorderSide(width: 1),

                ),



               title: Text('Kirpik Lifting'),
                subtitle: Text('Takma Kirpik etkisi yaratacak kirpiklere hemen sahip olun !'),
               leading: Image.asset('images/kirpiklifting.jpg'),
                onTap: (){
                  Navigator.push(
                   context,
                    MaterialPageRoute(builder: (context) => kirpiklifting()),
                  );
                },
              ),
            ),
           Container(
              ///color: Colors.black26,
              child: ListTile(

                shape: RoundedRectangleBorder( //<-- SEE HERE
                  side: BorderSide(width: 1),

                ),



                title: Text('Kalıcı Makyaj'),
                subtitle: Text('Her gün Makyaj yapmaktan yoruldunuz mu ? Doğru Adrestesiniz'),
                 leading: Image.asset('images/kaicimakyaj.jpeg'),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => kalicimakyaj()),
                  );
                },
              ),
            ),
            Container(
              child: ListTile(

                shape: RoundedRectangleBorder( //<-- SEE HERE
                  side: BorderSide(width: 1),

                ),




                title: Text('Protez Tırnak'),
                subtitle: Text('İstediğiniz renk ve ölçülerde harika tırnaklara sahip olun...'),
                leading: Image.asset('images/proteztirnak.jpg'),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => proteztirnak()),
                  );
                },
              ),
            ),
            Container(
              //color: Colors.black26,
              child: ListTile(

                shape: RoundedRectangleBorder( //<-- SEE HERE
                  side: BorderSide(width: 1),

                ),



                title: Text('Bölgesel İncelme'),
                subtitle: Text('Alanında uzman ekip ve cihazlarımızla istediğiniz bölgenizden incelebilirsiniz . '),
                leading: Image.asset('images/bolgeselincelme.jpg'),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => bolgeselincelme()),
                  );
                },
              ),
            ),





            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage(title: 'Anasayfa')),
                  );

                },
                child: Text('Anasayfaya Dön'),

              ),

            ),










          ],
        ),
      ),

    );
  }
}