import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:task_osama/providers/shopping_cart.dart';

import 'home_provider.dart';

class Providers {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider<HomeProvider>(
      create: (_) => HomeProvider(),
    ),
    ChangeNotifierProvider<ShoppingCartProvider>(
      create: (_) => ShoppingCartProvider(),
    ),
  ];
}
