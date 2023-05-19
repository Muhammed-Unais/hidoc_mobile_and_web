import 'dart:convert';
import 'dart:io';
import 'package:hidoc_app/data/app_exception.dart';
import 'package:hidoc_app/data/network/base_api_service.dart';
import 'package:http/http.dart' as http;

class NetWorkApiService extends BaseApiService {
  @override
  Future getPostApiResponse(String urls) async {
    try {
      Uri url = Uri.parse(urls);
      final response =await http.post(url);
      return returnResponse(response);
    } on SocketException {
      throw "No Internet Connection";
    }
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.toString());
      case 401:
        throw UnauthorisedException(response.body.toString());
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 404:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Something went wrong: ${response.statusCode}');
    }
  }
}
