import 'package:flutter/material.dart';
import 'package:restaurant_app/shared/theme.dart';
import 'package:restaurant_app/widget/custom_rest_recomend_cart.dart';
import 'package:restaurant_app/widget/custom_resto_cart.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello Gloria, Welcome back !',
              style: orangeTextStyle.copyWith(fontSize: 20),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/location.png',
                  width: 19,
                  height: 19,
                ),
                Text(
                  'Lagos',
                  style: orangeTextStyle,
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget searchBar() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 288,
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: Color(0xffF3F4F9),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/search.png',
                    width: 17,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Search your favorite food',
                        hintStyle: greyTextStyle2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Image.asset(
                'assets/bar.png',
                width: 26,
                height: 17,
              ),
            ),
          ],
        ),
      );
    }

    Widget category() {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nearby',
                    style: orangeTextStyle.copyWith(fontSize: 21),
                  ),
                  Container(
                    width: 20,
                    height: 2,
                    decoration: BoxDecoration(
                        color: orangeColor,
                        borderRadius: BorderRadius.circular(defaultRadius)),
                  ),
                ],
              ),
              SizedBox(
                width: 26,
              ),
              Text(
                'Popular',
                style:
                    greyTextStyle2.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
              SizedBox(
                width: 26,
              ),
              Text(
                'New Combo',
                style:
                    greyTextStyle2.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
              SizedBox(
                width: 26,
              ),
              Text(
                'Top',
                style:
                    greyTextStyle2.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
            ],
          ),
        ),
      );
    }

    Widget restaurant() {
      return Container(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/resto-view');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CustomRestoCartPage(
                      imageUrl: 'assets/resto1.png',
                      km: '5.8 KM Away',
                      name: "Raw Bar"),
                  CustomRestoCartPage(
                      imageUrl: 'assets/resto2.png',
                      km: '5.8 KM Away',
                      name: "Spencers"),
                ],
              ),
              Column(
                children: [
                  CustomRestoCartPage(
                      imageUrl: 'assets/resto3.png',
                      km: "8.9 KM Away",
                      name: "Zamars Pizza"),
                  CustomRestoCartPage(
                      imageUrl: 'assets/resto6.png',
                      km: '7.9 KM Away',
                      name: "Stern Bar"),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget restoRecomended() {
      return Container(
        margin: EdgeInsets.only(top: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recomended Restaurant',
              style: orangeTextStyle.copyWith(fontSize: 24),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomRestoRecomendCartPage(
                      imageUrl: 'assets/food1.png',
                      harga: 'RP 13.000',
                      name: 'Stake Special'),
                  CustomRestoRecomendCartPage(
                      imageUrl: 'assets/food2.png',
                      harga: 'RP 13.000',
                      name: 'Stake Special'),
                  CustomRestoRecomendCartPage(
                      imageUrl: 'assets/food3.png',
                      harga: 'RP 13.000',
                      name: 'Stake Special'),
                  CustomRestoRecomendCartPage(
                      imageUrl: 'assets/food4.png',
                      harga: 'RP 13.000',
                      name: 'Stake Special'),
                  CustomRestoRecomendCartPage(
                      imageUrl: 'assets/food1.png',
                      harga: 'RP 13.000',
                      name: 'Stake Special'),
                ],
              ),
            )
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
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 28, vertical: 12),
            children: [
              SafeArea(
                child: Column(
                  children: [
                    header(),
                    searchBar(),
                    category(),
                    restaurant(),
                    restoRecomended(),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
