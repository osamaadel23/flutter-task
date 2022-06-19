import 'package:flutter/material.dart';
import 'package:task_osama/widgets/lang.dart';

class ShowMore extends StatelessWidget {
  const ShowMore({
    Key? key,
    this.onTap,
  }) : super(key: key);
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Lang(
          ar: 'عرض المزيد',
          color: theme.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        const SizedBox(
          width: 10,
        ),
        Icon(
          Icons.arrow_forward_ios_outlined,
          size: 16,
          color: theme.primaryColor,
        )
      ],
    );
  }
}
