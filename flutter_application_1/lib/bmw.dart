import 'package:flutter/material.dart';
import 'package:flutter_application_1/araba_detay.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/sqldb.dart';

class bmw extends StatelessWidget {
  SqlDb sqlDb = SqlDb();

  Future<List<Map>> readData() async {
    List<Map> response = await sqlDb.readData("SELECT * FROM 'arabalar'");
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          FutureBuilder(
              future: readData(),
              builder:
                  (BuildContext context, AsyncSnapshot<List<Map>> snapshot) {
                if (snapshot.hasData) {
                  int index = 1;

                  return Container(
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
                              snapshot.data?[1]['price'],
                              snapshot.data?[1]['name'],
                              snapshot.data?[1]['path'],
                              false,
                              false,
                              context,
                              snapshot.data?[1]['detail']),
                        ],
                      ));
                }
                return Center(child: CircularProgressIndicator());
              }),
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
/*
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
                      '5 Serisi',
                      'assets/bmw/5-serisi-2.png',
                      false,
                      false,
                      context,
                      "BMW 5 Serisi, Alman araba ??reticisi BMW taraf??ndan 1972 y??l??ndan beri ??retilen orta-??st s??n??f?? arabas??d??r. ??u an 5. ku??a???? sat??lmakta olan araban??n, touring ve sedan t??rleri vard??r. BMW 5 Serisinin muadilleri olarak: Audi A6, Mercedes-Benz-E Class, Jaguar S-Type, Lexus GS say??labilir. BMW 5 Serisi Gran Turismo, BMW M ailesine dahil olan BMW M5 modeli de vard??r."),
                  _buildCard(
                      '\$25.999',
                      '1 Serisi',
                      'assets/bmw/1-serisi-2.png',
                      true,
                      false,
                      context,
                      "BMW 1 Serisi, BMW firmas??n??n 2004 y??l??nda BMW 3 Serisi Compact'??n yerine tamamen yeni olarak sat????a sunuluan kompakt s??n??ftaki modelidir. ??zellikle Volkswagen Golf ve Mercedes C-Class Sportcoupe ile rekabet etmesi i??in sat????a sunulmu??tur. Temmuz 2019'da BMW 1 Serisi (F40) Modeli sat????a sunuldu."),
                  _buildCard(
                      '\$40.99',
                      '7 Serisi',
                      'assets/bmw/7-serisi.png',
                      false,
                      true,
                      context,
                      "BMW 7 Serisi, Alman otomobil ??reticisi BMW'nin 1977 y??l??nda tan??tt??p ??retmeye ba??lad?????? l??ks ara?? modelidir. BMW'nin amiral gemisi s??n??f??ndad??r (Audi A8 ve Mercedes-Benz S-Serisi gibi) ."),
                  _buildCard(
                      '\$41.999',
                      'X Serisi',
                      'assets/bmw/x6-serisi.png',
                      false,
                      false,
                      context,
                      "BMW X6, Alman otomobil ??reticisi BMW taraf??ndan ??retilen l??ks spor SUVdir. 2008'in ikinci ??eyre??inde piyasaya s??r??lm????t??r. SUV ??zellikleri ile coupe duru??unu birle??tiren bir otomobildir.")
                ],
              )), 


              _buildCard(
                          snapshot.data?[index]['price'],
                          snapshot.data?[index]['name'],
                          'assets/bmw/5-serisi-2.png',
                          false,
                          false,
                          context,
                          snapshot.data?[index]['detail'])
 */