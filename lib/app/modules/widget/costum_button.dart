import 'package:flutter/material.dart';

class CostumButton extends StatelessWidget {
  CostumButton({
    Key? key,
    required this.text,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.margin,
    this.padding,
    this.img,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  Color backgroundColor;
  Color textColor;
  final margin;
  final img;
  final padding;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
            color: backgroundColor,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 0.5,
                  spreadRadius: 0.5,
                  offset: Offset.fromDirection(90))
            ],
            borderRadius: BorderRadius.circular(10)),
        // color: Colors.green,
        child: Container(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                child: img,
              ),
              Container(
                margin: EdgeInsets.only(left: 1),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
