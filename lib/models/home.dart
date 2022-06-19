import 'package:task_osama/models/category.dart';
import 'package:task_osama/models/product.dart';
import 'package:task_osama/models/slider.dart';

class HomeModel {
  List<SliderModel>? sliders;
  List<ProductModel>? latestSparPart;
  List<ProductModel>? latestCars;
  String? imgOffer;
  List<CategoryModel>? cats;
  List<ProductModel>? latestProducts;
  List<ProductModel>? proMoreArr;

  HomeModel(
      {this.sliders,
      this.latestSparPart,
      this.latestCars,
      this.imgOffer,
      this.cats,
      this.latestProducts,
      this.proMoreArr});

  HomeModel.fromJson(Map<String, dynamic> json) {
    if (json['sliders'] != null) {
      sliders = <SliderModel>[];
      json['sliders'].forEach((v) {
        sliders!.add(SliderModel.fromJson(v));
      });
    }
    if (json['latest_spar_part'] != null) {
      latestSparPart = <ProductModel>[];
      json['latest_spar_part'].forEach((v) {
        latestSparPart!.add(ProductModel.fromJson(v));
      });
    }
    if (json['latest_cars'] != null) {
      latestCars = <ProductModel>[];
      json['latest_cars'].forEach((v) {
        latestCars!.add(ProductModel.fromJson(v));
      });
    }
    imgOffer = json['img_offer'];
    if (json['cats'] != null) {
      cats = <CategoryModel>[];
      json['cats'].forEach((v) {
        cats!.add(CategoryModel.fromJson(v));
      });
    }
    if (json['latest_products'] != null) {
      latestProducts = <ProductModel>[];
      json['latest_products'].forEach((v) {
        latestProducts!.add(ProductModel.fromJson(v));
      });
    }
    if (json['pro_more_arr'] != null) {
      proMoreArr = <ProductModel>[];
      json['pro_more_arr'].forEach((v) {
        proMoreArr!.add(ProductModel.fromJson(v));
      });
    }
  }
}
