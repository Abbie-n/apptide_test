import 'package:flutter/material.dart';
import 'package:apptide_test/utils/utils.dart';

class ButtonWidget extends StatelessWidget {
  final text;
  // final icon;
  final buttonColor;
  final textColor;
  final onTap;

  const ButtonWidget({
    Key? key,
    this.text,
    // this.icon,
    this.buttonColor,
    this.textColor,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 6.5.height,
        width: 100.width,
        padding: EdgeInsets.symmetric(
          horizontal: 10.width,
        ),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(5.height),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 4.5.text,
                letterSpacing: 0.3,
                fontWeight: FontWeight.w500,
                color: textColor ?? AppColors.white,
                fontFamily: 'Roboto',
              ),
            ),
            Image.asset(Constants.backArrow),
          ],
        ),
      ),
    );
  }
}
