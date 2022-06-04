import 'package:flutter/material.dart';
import 'package:flutter_application_1/araba_detay.dart';

import 'araba_detay.dart';

class opel extends StatelessWidget {
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
                      '\$30.999',
                      'Corsa',
                      'assets/opel/corsa-2.png',
                      false,
                      false,
                      context,
                      "Opel Corsa, GM'nin Avrupa'daki markası Opel tarafından tasarlanan, geliştirilen ve pazarlanan B segmenti otomobildir. İlk olarak 1982'de Corsa A satışa sunulmuştur. 1993'te Corsa B satışa sunulup 1996'da hafif bir makyaj görmüştür. 2000'de Corsa C satışa sunulmuş, 2004 yılında makyajlanmıştır. 2007'de Corsa D satışa sunulmuştur ve 2011 yılında makyaj görmüştür. Daha güçlü motor seçenekleriyle birlikte Opel Astra ve Opel Insignia tarzı güncellenmiş ön tasarıma kavuşmuştur. 2011 model makyajlı Corsa, 1.2 70 HP, 1.4 100 HP, 1.3 95 HP CDTI (Common-rail Direct Turbo Injection) motor seçeneklerinin yanında 5 ileri Easytronic şanzıman opsiyonu ile 2014 yılına kadar satış bandında kalmıştır."),
                  _buildCard(
                      '\$25.999',
                      'Astra',
                      'assets/opel/astra.png',
                      true,
                      false,
                      context,
                      "Opel Astra, Almanya, Belçika, Büyük Britanya, Brezilya, Güney Afrika, Polonya ve Ukrayna'da üretilmekle beraber, diğer ülkelerde de parça montajı yapılmaktadır.Astra ismi, Vauxhall Motors'un Opel Kadett modelinin ilk zamanlardaki ismi olan Vauxhall Astra'dan alındı."),
                  _buildCard(
                      '\$40.999',
                      'İnsignia',
                      'assets/opel/insignia.png',
                      false,
                      true,
                      context,
                      "Opel Insignia, 2004 yılında konsept olarak tanıtılan ve 2008 yılının Kasım ayından itibaren Opel Vectra'nın yerini alan otomobil. 2009 yılından itibaren Türkiye'de satışa sunuldu.Insignia GM Epsilon II platformunu kullanmaktadır. Vectra C'nin altyapısını oluşturan Epsilon platformunun takipçisi olan Epsilon II platformu Insignia'nın yanı sıra 2010 sonrası Saab 9-5, 2013'ten itibaren Chevrolet Impala gibi araçların da altyapısında yatmaktadır. Her ne kadar Vectra'nın üretimden kaldırılmasıyla birlikte piyasaya sunulmuş olsa da Insignia aslında Vectra'dan daha yukarıda bir pazarı hedeflemektedir. Aracın hedef segmenti kabaca Vectra ile Omega arasında bir yerlerde bulunur. Buna uygun olarak artırılan aks mesafesi ve büyüyen boyutlar araç iç hacminin daha geniş olmasını sağlamıştır; ancak görsel nedenlerle arka tarafa doğru alçalarak gelen tavan çizgisi nedeniyle arka koltuklarda baş mesafesi açısından olumsuz eleştiriler de gelmiştir."),
                  _buildCard(
                      '\$41.999',
                      'Mokka',
                      'assets/opel/mokka.png',
                      false,
                      false,
                      context,
                      "Opel Mokka, Alman otomobil üreticisi Opel tarafından geliştirilen ve üretilen 5-Kapılı bir B segmenti Crossoverdır. İngiltere'de Vauxhall Mokka, Kuzey Amerika ve Çin'de ise Buick Encore adıyla satılmaktadır.İlk olarak, 2012 yılında Cenevre Otomobil Fuarında tanıtılmıştır.[2] 2016 yılında makyajlanan modeli Opel Mokka X adıyla tanıtılmış ve satışa sunulmuştur. 2020 Aralık ayında ise 2. nesil Opel Mokka tanıtılmış ve 2021'in ilk yarısında Avrupa'da satışa sunulmuştur. Türkiye'ye Haziran 2021'de Türkiye’de satışa sunulmuştur.")
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
