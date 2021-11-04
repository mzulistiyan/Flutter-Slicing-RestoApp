import 'package:flutter/material.dart';
import 'package:restaurant_app/shared/theme.dart';

class CustomRestoRecomendCartPage extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String harga;
  const CustomRestoRecomendCartPage({
    Key? key,
    required this.imageUrl,
    required this.harga,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 11, top: 10),
      width: 75,
      height: 94,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 75,
            height: 61,
          ),
          Text(
            name,
            style: blackTextStyle.copyWith(fontSize: 9),
          ),
          SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                harga,
                style: yellowTextStyle.copyWith(fontSize: 9),
              ),
              Image.asset(
                'assets/heart.png',
                width: 31,
                height: 13,
              ),
            ],
          )
        ],
      ),
    );
  }
}
