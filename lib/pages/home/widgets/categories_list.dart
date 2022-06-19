import 'package:flutter/material.dart';
import 'package:task_osama/models/home.dart';
import 'package:task_osama/pages/home/widgets/category_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView(
      {Key? key,
      this.homeModel,
      required this.currentActive,
      required this.onChange})
      : super(key: key);
  final ValueChanged<int> onChange;
  final HomeModel? homeModel;
  final int? currentActive;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => CategoryItem(
                image: homeModel?.cats?[index].image ?? '',
                label: homeModel?.cats?[index].title ?? '',
                isActive: currentActive == index,
                onTap: () {
                  onChange(index);
                },
              ),
          separatorBuilder: (context, index) => const SizedBox(
                width: 5,
              ),
          itemCount: homeModel?.cats?.length ?? 0),
    );
  }
}
