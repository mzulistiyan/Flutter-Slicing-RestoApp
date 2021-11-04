import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:restaurant_app/shared/theme.dart';
import 'package:restaurant_app/widget/custom_button.dart';

class PayPage extends StatefulWidget {
  const PayPage({Key? key}) : super(key: key);

  @override
  State<PayPage> createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.only(top: 10),
        child: Row(
          children: [
            Image.asset(
              'assets/chevron-left.png',
              width: 24,
              height: 24,
            ),
            SizedBox(
              width: 13,
            ),
            Text(
              'Select payment method',
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
          ],
        ),
      );
    }

    Widget paymentDelivery() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment on Delivery',
              style: orangeTextStyle.copyWith(fontSize: 22),
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Text(
                  '244, Chief Ikechukwu road,\nIkoyi, Lagos',
                  style: blackTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: 19,
            ),
            Text(
              'Change',
              style: greyTextStyle2,
            )
          ],
        ),
      );
    }

    Widget paymentCard() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.only(top: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment by Card',
              style: orangeTextStyle.copyWith(fontSize: 22),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/blackPlus.png',
                  width: 12,
                  height: 12,
                ),
                SizedBox(
                  width: 6,
                ),
                GestureDetector(
                  onTap: () {
                    showMaterialModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 40),
                          height: 395,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/close.png',
                                width: 12,
                                height: 12,
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Text(
                                'Add New Data',
                                style: orangeTextStyle.copyWith(fontSize: 22),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Name on card',
                                style: yellowTextStyle.copyWith(fontSize: 12),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Name",
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Card number',
                                style: yellowTextStyle.copyWith(fontSize: 12),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Your card number",
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Expiry date',
                                        style: yellowTextStyle.copyWith(
                                            fontSize: 12),
                                      ),
                                      Container(
                                        width: 150,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: "00/00",
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'CVV',
                                        style: yellowTextStyle.copyWith(
                                            fontSize: 12),
                                      ),
                                      Container(
                                        width: 150,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: "...",
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              CustomButton(
                                colorText: Colors.white,
                                tittle: 'Add Card',
                                color: orangeColor,
                                onPressed: () {},
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    'Add New Card',
                    style: blackTextStyle,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                width: 290,
                height: 179,
                decoration: BoxDecoration(
                  color: Color(0xff241C1C),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/visa.png',
                        width: 51,
                        height: 17,
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/titik.png',
                            width: 48,
                            height: 28,
                          ),
                          Image.asset(
                            'assets/titik.png',
                            width: 48,
                            height: 28,
                          ),
                          Image.asset(
                            'assets/titik.png',
                            width: 48,
                            height: 28,
                          ),
                          Text(
                            '3282',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Card Holder',
                                style: greyTextStyle2.copyWith(fontSize: 10),
                              ),
                              Text(
                                'Gloria Doe',
                                style: GoogleFonts.poppins(color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Expires',
                                style: greyTextStyle2.copyWith(fontSize: 10),
                              ),
                              Text(
                                '12/23',
                                style: GoogleFonts.poppins(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget orderDetails() {
      return Container(
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
                  style:
                      blackTextStyle.copyWith(fontWeight: medium, fontSize: 12),
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
                  style:
                      blackTextStyle.copyWith(fontWeight: medium, fontSize: 12),
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
      );
    }

    Widget buttonProceed() {
      return CustomButton(
          margin: EdgeInsets.only(top: 22, left: 28, right: 28, bottom: 20),
          colorText: Colors.white,
          tittle: 'Pay Now',
          color: orangeColor,
          onPressed: () {
            Navigator.pushNamed(context, '/success-page');
          });
    }

    return Scaffold(
      body: ListView(
        children: [
          header(),
          paymentDelivery(),
          paymentCard(),
          orderDetails(),
          buttonProceed(),
        ],
      ),
    );
  }
}
