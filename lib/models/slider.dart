class SliderModel {
  int? id;
  String? title;
  String? text;
  String? link;
  String? image;

  SliderModel({this.id, this.title, this.text, this.link, this.image});

  SliderModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    text = json['text'];
    link = json['link'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['text'] = text;
    data['link'] = link;
    data['image'] = image;
    return data;
  }
}
