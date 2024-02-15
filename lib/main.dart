
import 'package:flutter/material.dart';
import 'package:pr2/pages/checkout.dart';
import 'package:pr2/pages/details.dart';
import 'package:pr2/pages/home.dart';
import 'package:pr2/pages/login.dart';
import 'package:pr2/pages/register.dart';
import 'package:pr2/provider/cart.dart';
import 'package:provider/provider.dart';



import 'model/item.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
       create: (context) {return Cart();},
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
