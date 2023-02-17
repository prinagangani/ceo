import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List name = [
    "Sundar Pichai",
    "Bill Gates",
    "Jeff Bezos",
    "Mukesh Ambani",
    "Tim Cook",
    "Shantanu Narayen",
    "Daniel Zhang",
    "Harald Kruger",
    "Micaael Dell",
    "Bob Swan",
  ];
  List comp = [
    "GOOGLE",
    "MICROSOFT",
    "AMAZON",
    "RELIENCE LTD.",
    "APPLE",
    "ADOBE",
    "ALIBABA",
    "BMW",
    "DELL",
    "INTEL",
  ];
  List img = [
    "assets/images/10.jpg",
    "assets/images/2.jpg",
    "assets/images/7.jpg",
    "assets/images/9.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/6.jpg",
    "assets/images/1.jpg",
    "assets/images/8.jpg",
    "assets/images/5.jpg",
  ];
  List c1 = [
    Colors.blue.shade900,
    Colors.blue.shade100,
    Colors.blue.shade900,
    Colors.blue.shade100,
    Colors.blue.shade900,
    Colors.blue.shade100,
    Colors.blue.shade900,
    Colors.blue.shade100,
    Colors.blue.shade900,
    Colors.blue.shade100,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("CEO of MNC's",style: TextStyle(color: Colors.black),),
          centerTitle: true,
        ),
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [
          Color(0xff1937f6),
          Color(0xffe13cde),
        ])
      ),
            child: ListView.builder(
          itemBuilder: (context, index) =>
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: box(img[index], name[index], comp[index], c1[index]),
              ),
          itemCount: img.length,
        )),
      ),
    );
  }

  Widget box(String img, String name, String comp, Color c1) {
    return Container(
      height: 70,
      width: 150,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: c1,),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blueGrey,
          radius: 40,
          backgroundImage: AssetImage(img),
        ),
        title: Text(name),
        subtitle: Text(comp),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ),
      ),
    );
  }
}
