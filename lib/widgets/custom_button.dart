import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.color = const Color.fromRGBO(23,245,129, 1),
      required this.onpressed});

  final String text;
  final Color color;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width-100,
      height: 50,
      child: OutlinedButton(
          onPressed: () {
            onpressed;
          },
          style: OutlinedButton.styleFrom(
            backgroundColor: color, 
           shape: const StadiumBorder(),
          ),
          child: CustomText(text: text)),
    );
  }
}
