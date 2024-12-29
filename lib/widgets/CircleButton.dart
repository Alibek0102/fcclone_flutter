import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {

  final IconData icon;
  final Function() onPressed;
  final double iconSize;

  const CircleButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.iconSize
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200]
      ),
      child: IconButton(
        icon: Icon(icon),
        onPressed: onPressed,
        iconSize: iconSize,
        color: Colors.black,
      ),
    );
  }
}