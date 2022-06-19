import 'package:flutter/cupertino.dart';
import 'package:task_osama/models/home.dart';
import 'package:task_osama/utils/reqs.dart';

class HomeProvider with ChangeNotifier {
  HomeModel? _data;

  Future<HomeModel> getHomeData() async {
    if (_data == null) {
      await Reqs(
        url: 'home',
        headers: {
          'x-api-key': 'mwDA9w',
          'Content-Language': 'ar',
          'Content-Country': '1',
        },
        method: 'get',
      ).api().then((value) {
        if (value['success'] != null && value['success']) {
          _data = HomeModel.fromJson(value['data']);
        }
      }).catchError((e) {
        throw (e);
      });
    }

    return _data ?? HomeModel();
  }
}
