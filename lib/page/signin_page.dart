import 'package:flutter/material.dart';
import 'package:restaurant_app/shared/theme.dart';
import 'package:restaurant_app/widget/custom_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget contents() {
      return Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 229,
              height: 206,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/App_logo.png'),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: 319,
              height: 63,
              decoration: BoxDecoration(
                color: greyColor,
                borderRadius: BorderRadius.circular(31),
              ),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: blackTextStyle,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              width: 319,
              height: 63,
              decoration: BoxDecoration(
                color: greyColor,
                borderRadius: BorderRadius.circular(31),
              ),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: blackTextStyle,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonSignIn() {
      return CustomButton(
        margin: EdgeInsets.only(top: 22, left: 28, right: 28),
        colorText: greyColor,
        tittle: 'LOG IN',
        onPressed: () {
          Navigator.pushNamed(context, '/home-page');
        },
        color: orangeColor,
      );
    }

    Widget buttonSignUp() {
      return CustomButton(
        margin: EdgeInsets.only(top: 22, left: 28, right: 28),
        tittle: 'SIGN UP',
        colorText: blackColor,
        onPressed: () {
          Navigator.pushNamed(context, '/Sign-up');
        },
        color: yellowColor,
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/background.png',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            Column(
              children: [
                contents(),
                buttonSignIn(),
                buttonSignUp(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
