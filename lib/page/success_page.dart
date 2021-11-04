import 'package:flutter/material.dart';
import 'package:restaurant_app/shared/theme.dart';
import 'package:restaurant_app/widget/custom_button.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 90),
        child: Center(
          child: Column(
            children: [
              Container(
                width: 154,
                height: 139,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/App_logo.png'),
                  ),
                ),
              ),
              Text(
                'Order completed!',
                style: orangeTextStyle.copyWith(fontSize: 22),
              ),
              Text(
                'Order number: #9876543',
                style: greyTextStyle2.copyWith(fontSize: 13),
              ),
              SizedBox(
                height: 43,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ordered Items',
                      style: orangeTextStyle.copyWith(fontSize: 16),
                    ),
                    Image.asset(
                      'assets/blackPlus.png',
                      width: 16,
                      height: 16,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 43,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Order',
                          style: blackTextStyle,
                        ),
                        Text(
                          'RP 500.000',
                          style: blackTextStyle.copyWith(
                              fontWeight: medium, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery',
                          style: blackTextStyle,
                        ),
                        Text(
                          'RP 30.000',
                          style: blackTextStyle.copyWith(
                              fontWeight: medium, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Summary',
                          style: blackTextStyle.copyWith(fontWeight: semiBold),
                        ),
                        Text(
                          'RP 800.000',
                          style: blackTextStyle.copyWith(fontWeight: semiBold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CustomButton(
                  margin:
                      EdgeInsets.only(top: 50, left: 28, right: 28, bottom: 20),
                  colorText: Colors.white,
                  tittle: 'Continue shopping',
                  color: orangeColor,
                  onPressed: () {
                    Navigator.pushNamed(context, '/home-page');
                  })
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/background.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          SafeArea(
              child: Column(
            children: [
              content(),
            ],
          ))
        ],
      ),
    );
  }
}
