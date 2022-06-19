class ProductModel {
  int? id;
  int? merchant;
  int? payed;
  String? title;
  int? price;
  bool? favorite;
  String? image;
  int? quentity;
  double? rate;
  ProductModel({
    this.id,
    this.merchant,
    this.payed,
    this.title,
    this.price,
    this.favorite,
    this.image,
    this.quentity,
    this.rate,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    merchant = json['merchant'];
    payed = json['payed'];
    title = json['title'];
    price = json['price'];
    favorite = json['favorite'];
    image = json['image'];
    quentity = json['quentity'];
    rate = json['rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['merchant'] = merchant;
    data['payed'] = payed;
    data['title'] = title;
    data['price'] = price;
    data['favorite'] = favorite;
    data['image'] = image;
    data['quentity'] = quentity;
    data['rate'] = rate;
    return data;
  }
}
