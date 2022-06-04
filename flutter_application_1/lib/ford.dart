import 'package:flutter/material.dart';
import 'package:flutter_application_1/araba_detay.dart';

class ford extends StatelessWidget {
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
                      'Focus',
                      'assets/ford/focus.png',
                      false,
                      false,
                      context,
                      "Ford Focus, Ford'un ürettiği kompakt otomobil modelidir. İlk nesil Focus Temmuz 1998'de Avrupa'da, 1999'da ise Kuzey Amerika'da satışa sunuldu. Avrupa, Kuzey ve Güney Amerika ve Güney Afrika'da Ford Escort, Asya ve Avustralasya pazarlarında ise Ford Lazer modelinin yerini aldı. 2005'te satışa sunulan ikinci nesil Focus, 2008'de makyajlandı. 2011'de üçüncü nesil satışa sunuldu. Focus'un sportif modeli olan Focus RS temel alınarak tasarlanan Ford Focus RS WRC ralli otomobili, 2006 ve 2007 Dünya Ralli Şampiyonası sezonlarında Ford'a Üreticiler Şampiyonluğu kazandırdı"),
                  _buildCard(
                      '\$26.999',
                      'Mondeo',
                      'assets/ford/mondeo-2.jpg',
                      true,
                      false,
                      context,
                      "Ford Mondeo , 1993'ten beri Ford tarafından üretilen geniş bir aile otomobilidir .  dünya otomobili  olarak ilan edilen ilk Ford modeli, [ kaynak belirtilmeli ] Mondeo, dünya çapında birkaç Ford model hattını (Avrupa Sierra , Asya'daki Telstar ) birleştirmeyi amaçlıyordu. ve Avustralya ve Kuzey Amerika'da Tempo/Mercury Topaz ). Mondeo isim plakası, dünya anlamına gelen Latince  mundus  kelimesinden türetilmiştir. [2] 2018 itibariyle Ford, dört nesil boyunca Mondeo'nun beş versiyonunu üretti.İlk iki nesli için Mondeo, CDW27 platformu kullanılarak üretildi ve üçüncü nesil model EUCD platformuna geçti. Dördüncü nesil model, CD4 platformunu kullanır (bunu yapan ilk araba).Düşen satışlar ve sedanlar ve araziler üzerinde crossover SUV'lara yönelik artan eğilim nedeniyle Ford, Mondeo'yu Mart 2022'de doğrudan halefi olmadan Avrupa ve Arjantin'de durdurma planlarını açıkladı.Mondeo'nun üretimi Avrupa'da 4 Nisan 2022'de Valencia fabrikasında üretim hattından çıkan gri bir salon olan son otomobille sona erdi"),
                  _buildCard(
                      '\$30.99',
                      'Kuga',
                      'assets/ford/kuga.png',
                      false,
                      true,
                      context,
                      "Ford Kuga, 2008 yılından bu yana Ford tarafından üretilen kompakt crossover SUV modelidir. Ford'un Focus ve C-MAX modellerinde de kullanılan C1 platformu üzerinde tasarlanmıştır. Aracın önden çekişli ve dört tekerlekten çekişli versiyonları bulunmaktadır. Kuga, 2.5 litre benzinli ve 2.0 litre dizel motor seçeneklerine sahiptir.Ford'un Saarlouis, Almanya fabrikasında üretilen Kuga, satışa 2008'in ilk yarısında çıktı. İngiltere'de aracın premium pazar konumlandırmasına uygun olarak sadece üst seviye Zetec ve Titanium donanım seviyeleri satışa sunuldu. Araç İngiltere'de Citroen C-Crosser/Peugeot 4007 ve Vauxhall/Opel Antara gibi benzer SUV'lerle aynı fiyat seviyesinde konumlandırıldı. Kuga'nın kombine yakıt tüketimi 6.41 L/100 km ve CO2 emisyonu 169 g/km olarak açıklanmıştır."),
                  _buildCard(
                      '\$31.999',
                      'Ranger',
                      'assets/ford/ranger.png',
                      false,
                      false,
                      context,
                      "Küresel olarak satılan mevcut nesil için bkz . Ford Ranger (T6) . Mazda ile ortaklaşa geliştirilen uluslararası versiyon için bkz . Ford Ranger (uluslararası) . 2011'den önce satılan Kuzey ve Güney Amerika versiyonu için bkz . Ford Ranger (Amerika) .Ford Ranger (P375) , 2011'den beri T6 platformuna dayalı olarak üretildi.Ford Ranger , Ford tarafından dünya çapında satılan birçok model kamyonet serisinde kullanılan bir isim plakasıdır . İsim plakası, 1982'den beri dünya çapında kompakt ve orta boy kamyonet kategorisinden farklı model serileri için kullanılmaktadır.Ford Ranger, 1983 model yılı için 1982'den beri çoğunlukla Kuzey Amerika'da satılan kompakt bir pikap olarak piyasaya çıktı ve daha sonra bazı Güney Amerika ülkelerinde tanıtıldı. 1998 ve 2011 yılları arasında, Ranger isim plakası, Mazda tarafından Kuzey Amerika pazarı dışında satılık olarak geliştirilen modeller için de kullanılıyor . 2011 yılında Ford , T6 platformunu temel alan ilk Ranger'ı tanıttı . Orta boy bir kamyonet olarak kabul edilen model, Ford Australia tarafından şirket içinde geliştirildi . Aynı yıl, Kuzey Amerika pazarındaki Ranger üretimi durduruldu ve T6 platform tabanlı Ranger, dünya çapındaki tek Ranger modeli olarak kaldı.2019 model yılı için Ranger, küresel olarak pazarlanan T6 modeli kullanılarak Kuzey Amerika'da yeniden tanıtıldı. Michigan , Wayne'deki Michigan Montaj Fabrikasında üretilmektedir . Ranger şu anda Ford Kuzey Amerika kamyonet serisinde F-150'nin altında ve Maverick'in üzerinde yer alırken, Amerika dışındaki pazarlar için genellikle satışa sunulan tek Ford kamyonetidir.T6 tabanlı Ranger'ın ikinci nesli, revizyonlarla aynı T6 platformunu kullanarak 2021'de dünya pazarları için piyasaya sürüldü.")
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
