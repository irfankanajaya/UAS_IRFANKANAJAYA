import 'package:flutter/material.dart';

void main() => runApp(App12());

class App12 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Program Menghitung Biaya Hotel',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SCREEN CALCULATING  IRFAN (6SIA4)'),
        ),
        body: IRFANApp(),
      ),
    );
  }
}

class IRFANApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<IRFANApp> {
  final txtnama = TextEditingController();
  final txtjammasuk = TextEditingController();
  final txtjamkeluar = TextEditingController();
  final txttarif = TextEditingController() ;
  String hasil = '';
  
  

  onHitung() {
    setState(() {
      var lama = int.parse(txtjamkeluar.text) - int.parse(txtjammasuk.text);
      var diskon = int.parse(txttarif.text) * lama - 1000;    
      var biaya = int.parse(txttarif.text) * lama;
      
          if( lama >= 2  ){
            hasil = "lama $lama Jam  , Biaya ${txtnama.text} = Diskon 1000 menjadi $diskon";} else { hasil = "lama $lama Jam , Biaya ${txtnama.text} = $biaya ";
          }
    });
  }

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          TextField(
            controller: txtnama,
            decoration: new InputDecoration(
              labelText: "User Name",
            ),
          ),
          TextField(
            controller: txtjammasuk,
            decoration: new InputDecoration(
              labelText: "Check In",
            ),
          ),
              TextField(
            controller: txtjamkeluar,
            decoration: new InputDecoration(
              labelText: "Check Out",
            ),
          ),
          TextField(
            controller: txttarif,
            decoration: new InputDecoration(
              labelText: "Tarif",
            ),
          ),
          RaisedButton(
            child: Text("Hitung"),
            onPressed: onHitung,
          ),
          Text(hasil),
        ],
      ),
    );
  }
}
