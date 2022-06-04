import 'package:flutter/material.dart';
import 'package:flutter_application_1/araba_detay.dart';

class kia extends StatelessWidget {
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
                      '\$20.999',
                      'Ceed',
                      'assets/kia/ceed-2.png',
                      false,
                      false,
                      context,
                      "Kia Ceed ( 2018'den önce Kia cee'd olarak bilinir ), Güney Koreli üretici Kia tarafından 2006'dan beri yalnızca Avrupa pazarı için üretilen kompakt bir otomobildir . Ceed ilk kez 28 Eylül 2006'da Paris Motor Show'da görücüye çıktı . 2007 yılının ortalarında, cee'd_sw adlı istasyon vagonu versiyonu piyasaya sürüldü, ardından 2008'in başlarında üç kapılı pro_cee'd takip edildi. cee'd'in ikinci nesli 2012 Cenevre Otomobil Fuarı'nda sunuldu. 2018 Cenevre'de Kia, Motor Show'da üçüncü nesil Ceed'i tanıttı. Eylül 2019'da Kia , üçüncü nesil Ceed'i temel alan bir crossover SUV olan XCeed'i de tanıttı.Tamamen Avrupa'da tasarlanan ve Avrupalı ​​müşterilere göre uyarlanan ilk Kia aracıdır. Bu vesileyle, Kia birkaç dilde Avrupa Ekonomik Topluluğu , EEC veya CEE'nin baş harflerini aldı ve Avrupa Tasarımı için ED'yi ekledi. CEEED de çok fazla  olduğunu fark edince, son E yi kesme işaretiyle değiştirdiler ve sonuç Cee'd oldu. 2018'den beri Ceed adı kesme işareti içermiyor. Baş harfleri artık Avrupa Tasarımlı Avrupa Topluluğu anlamına geliyor."),
                  _buildCard(
                      '\$15.999',
                      'Cerato',
                      'assets/kia/cerato-2.jpg',
                      true,
                      false,
                      context,
                      "Kia Cerato, Kia tarafından 2003 yılından bu yana üretilen alt orta sınıf otomobil modelidir. Daha önceki Kia Sephia ve Kia Shuma'nın yerini almıştır.Kia Cerato 2008 yılından itibaren çoğu pazarda Forte, Güney Kore'de K3[1] ve Kolombiya ile Singapur'da Kia Cerato Forte adıyla satılmaktadır."),
                  _buildCard(
                      '\$30.99',
                      'Sportage',
                      'assets/kia/sportage-2.jpg',
                      false,
                      true,
                      context,
                      "Kia Sportage, 1993'ten beri Güney Koreli üretici Kia tarafından üretilen kompakt bir SUV (2004'ten beri kompakt crossover SUV olarak sınıflandırılmaktadır). Sportage, Kia'nın SUV serisindeki 4 kardeşten bir tanesidir. Diğer 3 Kia SUV modelleri ise aşağıdaki gibidir;"),
                  _buildCard(
                      '\$37.999',
                      'Sorento',
                      'assets/kia/sorento.png',
                      false,
                      false,
                      context,
                      "Kia Sorento, Kia tarafından 2002 yılından bu yana üretilen orta sınıf SUV modelidir.")
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
