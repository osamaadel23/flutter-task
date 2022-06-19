import 'package:flutter/widgets.dart';
import 'package:task_osama/models/product.dart';

class ShoppingCartProvider with ChangeNotifier {
  final List<ProductModel> _productsList = [];

  void addProduct(ProductModel product, {bool givenFixedQuantity = false}) {
    if (!containsItem(product.id!)) {
      product.quentity ??= 1;

      _productsList.add(product);
      notifyListeners();
    } else {
      ProductModel? edited;
      if (!givenFixedQuantity) {
        edited =
            _productsList.firstWhere((element) => element.id == product.id);

        edited.quentity = 1 + (edited.quentity ?? 0);
      }
      _productsList.removeWhere((item) => item.id == product.id);

      _productsList.add(edited ?? product);
      notifyListeners();
    }
  }

  void removeProduct(int id) {
    int index = _productsList.indexWhere((product) => product.id == id);
    _productsList[index].quentity = null;
    _productsList.removeWhere((product) => product.id == id);
    notifyListeners();
  }

  List<ProductModel> getProductsList() {
    return _productsList;
  }

  bool containsItem(int id) {
    int index = _productsList.indexWhere((element) => element.id == id);
    if (index == -1) {
      return false;
    }
    return true;
  }

  void editProduct(ProductModel productModel) {
    int index =
        _productsList.indexWhere((element) => element.id == productModel.id);
    _productsList[index] = productModel;
    notifyListeners();
  }

  int totalPrice() {
    int total = 0;
    for (var item in _productsList) {
      total = total + (item.quentity! * item.price!);
    }
    return total;
  }
}
