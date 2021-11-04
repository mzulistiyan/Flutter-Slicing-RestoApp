import 'package:flutter/material.dart';
import 'package:restaurant_app/page/cart_page.dart';
import 'package:restaurant_app/page/home_page.dart';
import 'package:restaurant_app/page/menu_resto_page.dart';
import 'package:restaurant_app/page/pay_page.dart';
import 'package:restaurant_app/page/restaurant_page.dart';
import 'package:restaurant_app/page/signin_page.dart';
import 'package:restaurant_app/page/signup_page.dart';
import 'package:restaurant_app/page/success_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SignInPage(),
        '/Sign-up': (context) => SignUpPage(),
        '/home-page': (context) => HomePage(),
        '/resto-view': (context) => RestaurantPage(),
        '/resto-menu': (context) => MenuRestoPage(),
        '/cart-page': (context) => CartPage(),
        '/Pay-Cart': (context) => PayPage(),
        '/success-page': (context) => SuccessPage(),
      },
    );
  }
}
