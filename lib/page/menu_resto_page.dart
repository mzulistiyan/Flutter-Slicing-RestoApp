import 'package:flutter/material.dart';
import 'package:restaurant_app/shared/theme.dart';
import 'package:restaurant_app/widget/custom_menu.dart';

class MenuRestoPage extends StatelessWidget {
  const MenuRestoPage({Key? key}) : super(key: key);

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
        margin: EdgeInsets.only(left: 18, top: 14, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Spencers',
              style: blackTextStyle.copyWith(fontSize: 21),
            ),
            Row(
              children: [
                Image.asset('assets/location.png', width: 21, height: 21),
                Text(
                  'Lagos',
                  style: orangeTextStyle.copyWith(fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget foodMenu() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.only(top: 10),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/cart-page');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Food',
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
                height: 8,
              ),
              CustomMenu(
                imageUrl: 'assets/food3.png',
                name: 'Sam’s Special Pasta',
                harga: 'RP 200.000',
                desc:
                    'Pasta, tomato sauce, shrimp, carrots, side of\nchicken wings, spinah, mushrooms ',
              ),
              SizedBox(
                height: 8,
              ),
              CustomMenu(
                imageUrl: 'assets/food4.png',
                name: 'Debby Noodles',
                harga: 'RP 3.000.000',
                desc:
                    '3 eggs blended with spinah, tomatoes,\npeppers, onionsarella cheese.',
              ),
            ],
          ),
        ),
      );
    }

    Widget drinksMenu() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.only(top: 10, bottom: 30),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/cart-page');
          },
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
                height: 8,
              ),
              CustomMenu(
                imageUrl: 'assets/food3.png',
                name: 'Sam’s Special Pasta',
                harga: 'RP 200.000',
                desc:
                    'Pasta, tomato sauce, shrimp, carrots, side of\nchicken wings, spinah, mushrooms ',
              ),
              SizedBox(
                height: 8,
              ),
              CustomMenu(
                imageUrl: 'assets/food4.png',
                name: 'Debby Noodles',
                harga: 'RP 3.000.000',
                desc:
                    '3 eggs blended with spinah, tomatoes,\npeppers, onionsarella cheese.',
              ),
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
          ListView(
            padding: EdgeInsets.zero,
            children: [
              Column(
                children: [
                  header(),
                  detailResto(),
                  foodMenu(),
                  drinksMenu(),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
