import 'package:flutter/material.dart';
import 'package:task_osama/widgets/lang.dart';

class AllSections extends StatelessWidget {
  const AllSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: Colors.black26, spreadRadius: 1, blurRadius: 5),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: theme.primaryColor,
          width: 1,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Lang(
            ar: "الاقسام",
            color: theme.primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(
            width: 5,
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 16,
            color: theme.primaryColor,
          ),
        ],
      ),
    );
  }
}
