import 'package:flutter_application_1/sqldb.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SqlDb sqlDb = SqlDb();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Center(
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () async {
                int response = await sqlDb.insertData("""INSERT INTO 'arabalar' 
                   ('name','price','path','detail') 
                   VALUES ('burdayız','\$60.999','assets/bmw/x6-serisi.png',"BMW X6, Alman otomobil üreticisi BMW tarafından üretilen lüks spor SUVdir. 2008'in ikinci çeyreğinde piyasaya sürülmüştür. SUV özellikleri ile coupe duruşunu birleştiren bir otomobildir.")
                   """);
                print(response);
              },
              child: Text("Insert data"),
            ),
          ),
          Center(
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () async {
                List<Map> response =
                    await sqlDb.readData("SELECT * FROM 'arabalar' ");
                print("$response");
              },
              child: Text("read data"),
            ),
          ),
          // Center(
          //   child: MaterialButton(
          //     color: Colors.red,
          //     textColor: Colors.white,
          //     onPressed: () async {
          //       await sqlDb.mydeleteDatabase();
          //     },
          //     child: Text("delete database"),
          //   ),
          // ),
          // Center(
          //   child: MaterialButton(
          //     color: Colors.red,
          //     textColor: Colors.white,
          //     onPressed: () async {
          //       int response = await sqlDb
          //           .deleteData("DELETE  FROM 'arabalar' WHERE id=4 ");
          //       print("$response");
          //     },
          //     child: Text("Delete data"),
          //   ),
          // ),
          // Center(
          //   child: MaterialButton(
          //     color: Colors.red,
          //     textColor: Colors.white,
          //     onPressed: () async {
          //       int response = await sqlDb.updateData(
          //           "UPDATE 'arabalar' SET 'note'='note sixx' WHERE id=5 ");
          //       print("$response");
          //     },
          //     child: Text("Update data"),
          //   ),
          // ),
        ]),
      ),
    );
  }
}
