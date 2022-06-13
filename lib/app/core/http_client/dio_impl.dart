import 'package:dio/dio.dart';
import 'package:nasa/app/core/http_client/http_client.dart';

class DioImpl extends HttpClient {
  final _dio = Dio();

  @override
  Future<HttpResponse> get(String url) async {
    final response = await _dio.get(url);
    return HttpResponse(data: response.data, statusCode: response.statusCode);
  }

  @override
  Future<HttpResponse> post(String url, {required Map<String, dynamic> body}) {
    // TODO: implement post
    throw UnimplementedError();
  }
}
