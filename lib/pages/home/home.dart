import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:task_osama/models/home.dart';
import 'package:task_osama/pages/home/widgets/all_sections.dart';
import 'package:task_osama/pages/home/widgets/categories_list.dart';
import 'package:task_osama/pages/home/widgets/products_grid.dart';
import 'package:task_osama/pages/home/widgets/show_more.dart';
import 'package:task_osama/utils/scaffold_app.dart';
import 'package:task_osama/widgets/custom_app_bar.dart';
import 'package:task_osama/widgets/slider.dart';

import '../../providers/home_provider.dart';

class HomePage extends StatefulWidget {
  static const String route = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeModel? homeModel;
  @override
  void initState() {
    context.read<HomeProvider>().getHomeData().then((value) {
      setState(() {
        homeModel = value;
      });
    });
    super.initState();
  }

  int activeCatIndex = 0;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return ScaffoldApp(
      hasSafeArea: false,
      body: homeModel == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                Expanded(
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      ImageSlider(
                        images:

                            //  [
                            //   homeModel?.sliders?[0].image ?? '',
                            //   homeModel?.sliders?[0].image ?? '',
                            // ]
                            homeModel?.sliders
                                    ?.map((e) => e.image ?? '')
                                    .toList() ??
                                [],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const AllSections(),
                            const SizedBox(
                              height: 20,
                            ),
                            CategoriesListView(
                              currentActive: activeCatIndex,
                              onChange: (index) {
                                setState(() {
                                  activeCatIndex = index;
                                });
                              },
                              homeModel: homeModel,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ProductsGridView(
                              homeModel: homeModel,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const ShowMore(),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
                ),
              ],
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.red,
        ),
      ),
    );
  }
}
