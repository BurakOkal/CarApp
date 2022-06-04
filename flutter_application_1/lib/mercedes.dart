import 'package:flutter/material.dart';
import 'package:flutter_application_1/araba_detay.dart';

class mercedes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard(
                      '\$25.999',
                      'E Serisi',
                      'assets/mercedes/e-serisi.png',
                      false,
                      false,
                      context,
                      "Mercedes-Benz E Serisi (E-Class/E-Klasse), Alman otomobil üreticisi Mercedes-Benz tarafından 1993 yılından beri üretilen bir lüks otomobildir.E Serisinin ilk modeli, ilk olarak 1993 yılında tanıtılmıştır. 'E' harfi Almanca'da Einspritzmotor 'dan (Yakıt enjeksiyonlu motor) gelmektedir. Günümüzde, W213 koduyla yeni modeli üretilmektedir."),
                  _buildCard(
                      '\$15.999',
                      'A Serisi',
                      'assets/mercedes/A-Serisi.png',
                      true,
                      false,
                      context,
                      "Mercedes-Benz A Serisi, Mercedes-Benz'in 1997'den beri ürettiği küçük sınıftaki MPV modelidir. Mercedes-Benz daha önce otomobillerinde arkadan itişi uygularken bu modelde ilk kez önden çekiş sistemini uyguladı. İsveç'te yapılan viraj testinde takla attığı için ESP sistemi sunulmaya başlanıldı ve güvenlik eksikliği bitirildi. 2004'ün sonunda ikinci nesline kavuştu."),
                  _buildCard(
                      '\$41.999',
                      'G Serisi',
                      'assets/mercedes/g-serisi-2.png',
                      false,
                      true,
                      context,
                      "Mercedes-Benz G Serisi, Alman otomobil üreticisi Mercedes-Benz'in 1979 yılından itibaren üretimine başladığı SUV modeldir. W460, W461, W463 olmak üzere üç şase kodlu olarak üretilmiştir. W460 1990 yılında revize edilerek lüks ve standart donanımlı olarak iki modele ayrılmıştır. W463(lüks) ve W461 (standart) araçları, 2015 yılına kadar üretimlerine devam edilecektir. Bu araçların iki önemli özelliği vardır; birincisi el yapımı olması, ikincisi seri üretim araçlar arasında %100 diferansiyel kilidine sahip tek araç olmasıdır (ön, arka ve orta)."),
                  _buildCard(
                      '\$35.999',
                      'X Serisi',
                      'assets/mercedes/x-serisi.png',
                      false,
                      false,
                      context,
                      "Mercedes-Benz X Serisi (W470), Alman firma Daimler AG'nin bir bölümü olan Alman otomobil üreticisi Mercedes-Benz tarafından üretilen lüks bir kamyonettir . Temmuz 2017'de Cape Town'da bir dünya prömiyerinde tanıtılan Mercedes-Benz pikabın şasisinde Nissan Navara'dan ilham alınmıştır ve Mercedes'e özgü birçok özellik ve teknolojiden de yararlanılmıştır (Navara ile paylaşılmayan bazı motorlar dâhil). 2017'nin sonlarında satışa sunulmuştur.")
                ],
              )),
          SizedBox(height: 50.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context, String cardetail) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CookieDetail(
                        assetPath: imgPath,
                        cookieprice: price,
                        cookiename: name,
                        cardetail: cardetail,
                      )));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            isFavorite
                                ? Icon(Icons.favorite, color: Color(0xFFEF7532))
                                : Icon(Icons.favorite_border,
                                    color: Color(0xFFEF7532))
                          ])),
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 125.0,
                          width: 125.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  SizedBox(height: 7.0),
                  Text(price,
                      style: TextStyle(
                          color: Color(0xFFCC8053),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ))
                ]))));
  }
}
