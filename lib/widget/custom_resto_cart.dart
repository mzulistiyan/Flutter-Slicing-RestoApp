import 'package:flutter/material.dart';
import 'package:restaurant_app/shared/theme.dart';

class CustomRestoCartPage extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String km;
  const CustomRestoCartPage({
    Key? key,
    required this.imageUrl,
    required this.km,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 142,
            height: 190,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Image.asset(
                  imageUrl,
                  width: 142,
                  height: 116,
                ),
                SizedBox(
                  height: 1,
                ),
                Container(
                  padding: EdgeInsets.only(left: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: blackTextStyle.copyWith(fontSize: 16),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/rating.png',
                            width: 68,
                            height: 12,
                          ),
                          SizedBox(
                            width: 32,
                          ),
                          Image.asset(
                            'assets/heart.png',
                            width: 24,
                            height: 24,
                          ),
                        ],
                      ),
                      Text(
                        km,
                        style: yellowTextStyle.copyWith(fontSize: 10),
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
}
