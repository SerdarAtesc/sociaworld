import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SociaWorld',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.grey,
            iconSize: 32.0,
            onPressed: () {}),
        title: Text(
          "SociaWorld",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications),
              color: Colors.purple[300],
              iconSize: 32.0,
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 100.0,
            decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 3.0),
                  blurRadius: 5.0),
            ]),
            child: ListView(
              scrollDirection: Axis.horizontal,
              //Aktif kullanıcıların ana sayfada gözükmesi
              children: <Widget>[
                profilKartiOlustur("sadasd",
                    "https://scontent.fyei1-1.fna.fbcdn.net/v/t1.0-9/17425984_1058356274268323_7772644928856580186_n.jpg?_nc_cat=101&ccb=2&_nc_sid=09cbfe&_nc_ohc=SE_LU7ExQ24AX8ZbTI3&_nc_ht=scontent.fyei1-1.fna&oh=8890773647ea9cc969dc024e8b959369&oe=6009F242"),
                profilKartiOlustur("fgdgdfg",
                    "https://scontent.fyei1-1.fna.fbcdn.net/v/t1.0-9/18670935_10209832187580744_8512526941812664066_n.jpg?_nc_cat=111&ccb=2&_nc_sid=09cbfe&_nc_ohc=KkcCOuDA7lQAX86bsxe&_nc_ht=scontent.fyei1-1.fna&oh=3fbddf76e9a91c802dfe96d1d37ae965&oe=600B64D2"),
                profilKartiOlustur("fghfghgf",
                    "https://media.discordapp.net/attachments/791056346719715380/791060954648805406/998ab29812286778.jpg"),
                profilKartiOlustur("fghfghfg",
                    "https://scontent.fyei1-1.fna.fbcdn.net/v/t1.0-9/17425984_1058356274268323_7772644928856580186_n.jpg?_nc_cat=101&ccb=2&_nc_sid=09cbfe&_nc_ohc=SE_LU7ExQ24AX8ZbTI3&_nc_ht=scontent.fyei1-1.fna&oh=8890773647ea9cc969dc024e8b959369&oe=6009F242"),
                profilKartiOlustur("nfghfgh",
                    "https://scontent.fyei1-1.fna.fbcdn.net/v/t1.0-9/17425984_1058356274268323_7772644928856580186_n.jpg?_nc_cat=101&ccb=2&_nc_sid=09cbfe&_nc_ohc=SE_LU7ExQ24AX8ZbTI3&_nc_ht=scontent.fyei1-1.fna&oh=8890773647ea9cc969dc024e8b959369&oe=6009F242"),
                profilKartiOlustur("trtyrty",
                    "https://scontent.fyei1-1.fna.fbcdn.net/v/t1.0-9/17425984_1058356274268323_7772644928856580186_n.jpg?_nc_cat=101&ccb=2&_nc_sid=09cbfe&_nc_ohc=SE_LU7ExQ24AX8ZbTI3&_nc_ht=scontent.fyei1-1.fna&oh=8890773647ea9cc969dc024e8b959369&oe=6009F242"),
                profilKartiOlustur("ertert",
                    "https://scontent.fyei1-1.fna.fbcdn.net/v/t1.0-9/17425984_1058356274268323_7772644928856580186_n.jpg?_nc_cat=101&ccb=2&_nc_sid=09cbfe&_nc_ohc=SE_LU7ExQ24AX8ZbTI3&_nc_ht=scontent.fyei1-1.fna&oh=8890773647ea9cc969dc024e8b959369&oe=6009F242"),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Material(
              elevation: 1.0,
              borderRadius: BorderRadius.circular(12.0),
              child: Container(
                padding: EdgeInsets.all(15.0),
                width: double.infinity,
                height: 380.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget profilKartiOlustur(String kullaniciAdi, String resimLinki) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2.0, color: Colors.grey),
                    borderRadius: BorderRadius.circular(35.0),
                    image: DecorationImage(
                        image: NetworkImage(resimLinki), fit: BoxFit.cover)),
              ),
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(width: 2.0, color: Colors.white)),
              )
            ],
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            kullaniciAdi,
            style: TextStyle(fontSize: 15.0, color: Colors.black),
          )
        ],
      ),
    );
  }
}
