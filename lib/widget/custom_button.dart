import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String tittle;
  final double width;
  final Color color;
  final Color colorText;
  final Function() onPressed;
  final EdgeInsets margin;

  const CustomButton({
    Key? key,
    required this.colorText,
    required this.tittle,
    required this.color,
    this.width = double.infinity,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: 55,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          tittle,
          style: GoogleFonts.poppins(
            color: colorText,
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
