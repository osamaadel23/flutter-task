import 'package:dio/dio.dart';

const String baseurl = "https://trscar.com/api/";

class Reqs {
  String url;
  Map<String, dynamic> data = {};
  Map<String, dynamic> headers = {};
  Type type;
  String method;

  Reqs({
    this.url = "",
    this.method = "post",
    this.data = const {},
    this.headers = const {},
    this.type = dynamic,
  });

  Dio getClient(String baseUrl) {
    var dio = Dio(BaseOptions(baseUrl: baseUrl));
    return dio;
  }

  Future<dynamic> api() async {
    url = url.toString();

    var dio = getClient(baseurl);

    Map<String, dynamic> h = {};
    h.addAll(headers);
    Response response;
    try {
      if (method == 'post') {
        response = await dio.post(
          url,
          data: data,
          options: Options(
            contentType: Headers.jsonContentType,
            headers: h,
          ),
        );
      } else {
        response = await dio.get(
          url,
          options: Options(
            contentType: Headers.jsonContentType,
            headers: h,
          ),
        );
      }
    } catch (e) {
      if (type == List) {
        return [];
      } else if (type == dynamic) {
        return {};
      } else {
        return {};
      }
    }
    return response.data;
  }
}
