import 'package:flutter/material.dart';

import '../../constant/size.dart';

class AuthButton extends StatelessWidget {
  final String name;
  final VoidCallback onTap;

  const AuthButton({
    super.key,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: Util.width(context) * 0.5,
        height: Util.height(context) * 0.08,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(
            image: AssetImage("assets/img/loginbtn.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 36,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
