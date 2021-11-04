import 'package:flutter/material.dart';
import 'package:restaurant_app/shared/theme.dart';

class CustomMenu extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String harga;
  final String desc;

  const CustomMenu({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.harga,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              imageUrl,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            width: 190,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 6)),
                Text(
                  name,
                  style: blackTextStyle.copyWith(fontWeight: semiBold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  desc,
                  style: greyTextStyle2.copyWith(fontSize: 8),
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
                Text(
                  harga,
                  style: yellowTextStyle.copyWith(fontSize: 9),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  child: Image.asset(
                    'assets/heart.png',
                    width: 19,
                    height: 19,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
