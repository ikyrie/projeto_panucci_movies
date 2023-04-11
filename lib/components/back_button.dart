import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        iconSize: 30,
        color: Colors.white,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
