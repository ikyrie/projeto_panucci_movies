import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          shadows: <Shadow>[Shadow(color: Colors.black, blurRadius: 15.0)],
        ),
        iconSize: 30,
        color: Colors.white,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
