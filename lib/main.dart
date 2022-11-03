import 'package:c_app/grid_view.dart';
import 'package:c_app/product_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopee',
        theme: ThemeData(
          fontFamily: 'OpenSans',
          primarySwatch: Colors.deepOrange,
        ),
        home: MyHomePage(
          title: '',
        ));
  }
}
