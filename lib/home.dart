import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Home',)),backgroundColor: Colors.green,),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Center(
          child: Container(
                child: Image.asset('assets/images/epos.jpg',
                        height: 200,width: 280),),
        ) ,
          SizedBox(height: 40,),
      const Text('Welcomes you',
      style:TextStyle(
      fontSize:40,
      color: Colors.green,
      fontWeight: FontWeight.bold
      )),]),
      );
  }
}
