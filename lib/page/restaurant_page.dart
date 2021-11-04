import 'package:flutter/material.dart';
import 'package:restaurant_app/shared/theme.dart';
import 'package:restaurant_app/widget/custom_menu.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: double.infinity,
        height: 174,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/resto_view.png'),
          ),
        ),
      );
    }

    Widget detailResto() {
      return Container(
        margin: EdgeInsets.only(left: 18, top: 14, right: 18),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Spencers',
                  style: blackTextStyle.copyWith(fontSize: 21),
                ),
                Image.asset(
                  'assets/heart_uncheck.png',
                  width: 34,
                  height: 34,
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Image.asset('assets/location.png', width: 21, height: 21),
                      Text(
                        'Lagos',
                        style: orangeTextStyle.copyWith(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/rating.png',
                  width: 68,
                  height: 12,
                ),
              ],
            ),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cuisine',
                  style: greyTextStyle2.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                ),
                Text(
                  'Italian, Bar, Pub',
                  style: orangeTextStyle.copyWith(fontSize: 17),
                )
              ],
            ),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Price Range',
                  style: greyTextStyle2.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                ),
                Text(
                  'RP 200.000',
                  style: orangeTextStyle.copyWith(fontSize: 17),
                ),
              ],
            ),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Foodie Ranks',
                  style: greyTextStyle2.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                ),
                Text(
                  '#2 of 250',
                  style: orangeTextStyle.copyWith(fontSize: 17),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget detailAddressResto() {
      return Container(
        margin: EdgeInsets.only(left: 18, top: 18, right: 18),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Address',
                      style: yellowTextStyle.copyWith(fontSize: 16),
                    ),
                    Text(
                      '5, Adewoye Close,\nSinafi Estate Ikoyi,\nLagos.',
                      style: blackTextStyle.copyWith(fontSize: 17),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/maps.png',
                  width: 82,
                  height: 88,
                ),
              ],
            ),
            SizedBox(
              height: 16.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Phone',
                  style: greyTextStyle2.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                ),
                Text(
                  '(+62) 83812379277',
                  style: orangeTextStyle.copyWith(fontSize: 17),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Email',
                  style: greyTextStyle2.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                ),
                Text(
                  'contact@spencers.com',
                  style: orangeTextStyle.copyWith(fontSize: 17),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Website',
                  style: greyTextStyle2.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                ),
                Text(
                  'www.spencers.com',
                  style: orangeTextStyle.copyWith(fontSize: 17),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget menu() {
      return Container(
        margin: EdgeInsets.only(left: 18, top: 28, right: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Menu",
                  style: orangeTextStyle.copyWith(fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/resto-menu');
                  },
                  child: Text(
                    'See All',
                    style: yellowTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14,
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
          ],
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
          Column(
            children: [
              header(),
              detailResto(),
              detailAddressResto(),
              menu(),
            ],
          ),
        ],
      ),
    );
  }
}
