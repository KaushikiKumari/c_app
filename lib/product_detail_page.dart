import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  var _isSelect = 0;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              _productImageView(),
              const SizedBox(height: 5),
              _productInfoView(),
              _productDetailView(),
              _productColorsView(),
              const SizedBox(height: 15),
            ]),
          ),
          Positioned(
            top: 40,
            left: 15,
            child: Bounce(
              duration: const Duration(milliseconds: 110),
              onPressed: () {
                Get.back();
              },
              child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Colors.white30, Colors.white38]),
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: Colors.grey.shade200),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.black45,
                      size: 25,
                    ),
                  )),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          elevation: 0, color: Colors.transparent, child: _bottomBarView()),
    );
  }

  _bottomBarView() {
    return SizedBox(
        height: 60,
        width: Get.width / 1,
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
              height: 60,
              width: 70,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 10,
                color: Colors.blueGrey,
                shadowColor: Colors.blueGrey.shade300,
                child: const Center(
                    child: Icon(Icons.shopping_cart_outlined,
                        color: Colors.white, size: 25)),
              ),
            ),
            SizedBox(
              height: 60,
              width: Get.width / 1 - 90,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 10,
                color: Colors.blueGrey,
                shadowColor: Colors.blueGrey.shade300,
                child: const Center(
                  child: Text("Buy Now",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.3,
                          color: Colors.white)),
                ),
              ),
            )
          ]),
        ));
  }

  _productImageView() {
    return Stack(
      children: [
        Container(
          height: Get.height / 2,
          width: Get.width / 1,
          color: Colors.blueGrey.shade300,
        ),
      ],
    );
  }

  _productInfoView() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text("Chair",
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.1,
                color: Colors.blueGrey)),
        const SizedBox(height: 5),
        const Text("Chair In White",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.2,
                color: Colors.blueGrey)),
        const SizedBox(height: 5),
        const Text("Rs. 1000.000",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.4,
                color: Colors.blueGrey)),
        const SizedBox(height: 5),
        _productRateView(),
      ]),
    );
  }

  _productRateView() {
    return Row(children: [
      Icon(Icons.star, color: Colors.orange.shade300, size: 18),
      const SizedBox(width: 2),
      Icon(Icons.star, color: Colors.orange.shade300, size: 18),
      const SizedBox(width: 2),
      Icon(Icons.star, color: Colors.orange.shade300, size: 18),
      const SizedBox(width: 2),
      Icon(Icons.star, color: Colors.orange.shade300, size: 18),
      const SizedBox(width: 2),
      Icon(Icons.star, color: Colors.grey.shade300, size: 18),
      const SizedBox(width: 2),
    ]);
  }

  _productDetailView() {
    // ignore: prefer_const_constructors
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: const Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          style: TextStyle(
              height: 1.5,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.3,
              color: Colors.blueGrey)),
    );
  }

  _productColorsView() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(children: [
        const Text("Colors:",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.1,
                color: Colors.black54)),
        const SizedBox(width: 30),
        Bounce(
            duration: const Duration(milliseconds: 110),
            onPressed: () {
              setState(() {
                _isSelect = 1;
              });
            },
            child: Container(
              height: _isSelect == 1 ? 30 : 25,
              width: _isSelect == 1 ? 30 : 25,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: Colors.grey.shade600),
              ),
            )),
        const SizedBox(width: 10),
        Bounce(
            duration: const Duration(milliseconds: 110),
            onPressed: () {
              setState(() {
                _isSelect = 2;
              });
            },
            child: Container(
              height: _isSelect == 2 ? 30 : 25,
              width: _isSelect == 2 ? 30 : 25,
              decoration: const BoxDecoration(
                color: Colors.brown,
                shape: BoxShape.circle,
              ),
            )),
        const SizedBox(width: 10),
        Bounce(
            duration: const Duration(milliseconds: 110),
            onPressed: () {
              setState(() {
                _isSelect = 3;
              });
            },
            child: Container(
              height: _isSelect == 3 ? 30 : 25,
              width: _isSelect == 3 ? 30 : 25,
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
            )),
        const SizedBox(width: 10),
        Bounce(
            duration: const Duration(milliseconds: 110),
            onPressed: () {
              setState(() {
                _isSelect = 4;
              });
            },
            child: Container(
              height: _isSelect == 4 ? 30 : 25,
              width: _isSelect == 4 ? 30 : 25,
              decoration: const BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.circle,
              ),
            )),
      ]),
    );
  }
}
