import 'package:flutter/material.dart';
import 'package:task_osama/widgets/lang.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.image,
    required this.label,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);
  final String image;
  final String label;
  final bool isActive;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 5),
          ],
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            width: 1,
            color: theme.primaryColor,
          ),
          color: isActive ? Colors.white : theme.primaryColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              image,
              width: 20,
              height: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Lang(
              ar: label,
              color: isActive ? theme.primaryColor : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            )
          ],
        ),
      ),
    );
  }
}
