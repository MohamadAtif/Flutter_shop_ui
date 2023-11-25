import 'package:flutter/material.dart';
import 'package:resturaunts_menu/config.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.onTap, required this.text});
  final VoidCallback onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 600;
    final isMobile = MediaQuery.of(context).size.width < 600;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          height: 60,
          width: isMobile
              ? MediaQuery.of(context).size.width
              : MediaQuery.of(context).size.width * .7,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: myPrimaryColor),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
              color: Colors.grey.shade300,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Kanit',
            ),
          )),
        ),
      ),
    );
  }
}
