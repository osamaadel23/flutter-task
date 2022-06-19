import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    this.onTap,
    this.icon,
    this.cartStyle = false,
  }) : super(key: key);
  final VoidCallback? onTap;
  final IconData? icon;
  final bool cartStyle;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: cartStyle ? Colors.white : Colors.red,
          border: Border.all(
            width: 1,
            color: cartStyle ? Colors.black : Colors.red,
          ),
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Icon(
          icon,
          color: cartStyle ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}
