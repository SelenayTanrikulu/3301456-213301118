import 'package:flutter/material.dart';
class Hakkinda extends StatefulWidget {
  @override
  _HakkindaState createState() => _HakkindaState();
}
class _HakkindaState extends State<Hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hakkında'),backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Bu uygulama güzellik merkezimizde yapılan işlemlerin neler olduğu,nasıl yapıldığı hakkında bilgi verir.'),
              Text('İhtiyacınız olan cilt yada vücut bakım işlemi için randevu oluşturmanızı sağlar. '),
              Text('Randevularınızda online ödeme kolaylığı sağlar ,Randevu gününden 1 gün önce hatırlatma yapar. '),
              Text('Merkezimizde yapılan işlemlerden hizmet alan müşterilerimizin memnuniyetlerine erişerek bizim hakkımızda bilgi sahibi olabilirsiniz. '),
              Text('Selenay TANRIKULU tarafından yapılmıştır. '),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text('Anasayfaya Dön'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}