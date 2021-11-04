import 'package:flutter/material.dart';
import 'package:restaurant_app/shared/theme.dart';
import 'package:restaurant_app/widget/custom_button.dart';
import 'package:restaurant_app/widget/custom_menu.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/chevron-left.png',
              width: 24,
              height: 24,
            ),
            Text(
              'Your cart is ready to go',
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            Image.asset(
              'assets/CART.png',
              width: 24,
              height: 24,
            ),
          ],
        ),
      );
    }

    Widget foodMenu() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Food',
                  style: orangeTextStyle.copyWith(fontSize: 17),
                ),
                Image.asset(
                  'assets/plus.png',
                  width: 24,
                  height: 24,
                )
              ],
            ),
            SizedBox(
              height: 7,
            ),
            CustomMenu(
              imageUrl: 'assets/food1.png',
              name: 'Biobeles Brunch',
              harga: 'RP 200.000',
              desc:
                  'Waffles, strawberries, sausage, mushrooms,\nbaked beans, toast and grilled tomatoes',
            ),
            SizedBox(
              height: 8,
            ),
            CustomMenu(
              imageUrl: 'assets/food2.png',
              name: 'Omelette Paradise',
              harga: 'RP 3.000.000',
              desc:
                  '3 eggs blended with spinah, tomatoes,\npeppers, onionsarella cheese.',
            ),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      );
    }

    Widget drinksMenu() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.only(top: 10, bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Drinks',
              style: orangeTextStyle.copyWith(fontSize: 17),
            ),
            SizedBox(
              height: 7,
            ),
            CustomMenu(
              imageUrl: 'assets/food1.png',
              name: 'Biobeles Brunch',
              harga: 'RP 200.000',
              desc:
                  'Waffles, strawberries, sausage, mushrooms,\nbaked beans, toast and grilled tomatoes',
            ),
          ],
        ),
      );
    }

    Widget deliveryDetails() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.only(top: 10, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery details',
              style: orangeTextStyle.copyWith(fontSize: 17),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),

                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    child: Image.asset(
                      'assets/maps.png',
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 6)),
                        Text(
                          'Address',
                          style: yellowTextStyle.copyWith(fontWeight: semiBold),
                        ),
                        Text(
                          '244, Chief Ikechukwu road,\nIkoyi, Lagos',
                          style: blackTextStyle.copyWith(fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/arrow.png',
                          width: 24,
                          height: 24,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
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
          tittle: 'Proceed',
          color: orangeColor,
          onPressed: () {
            Navigator.pushNamed(context, '/Pay-Cart');
          });
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                header(),
                foodMenu(),
                drinksMenu(),
                deliveryDetails(),
                orderDetails(),
                buttonProceed(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
