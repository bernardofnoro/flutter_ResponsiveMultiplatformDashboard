import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.grey[400],
        height: 80,
      ),
    );
  }
}
