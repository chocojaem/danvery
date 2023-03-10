import 'dart:convert';

import 'package:danvery/app/data/provider/url.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../model/register_model.dart';

class RegisterProvider {
  final dio = Dio();

  Future<RegisterModel?> authentication(String id, String password) async {

    String url = '$apiUrl/user/dku/verify';
    final body = {"dkuStudentId": id,"dkuPassword": password,};

    try {

      final Response response =
      await dio.post(url, data: body, options: Options(contentType: "application/json", responseType: ResponseType.bytes));

      if (kDebugMode) {
        print("Authentication : ${response.statusCode}");
      }

      if (response.statusCode != 200) {
        throw Exception('Authentication error');
      } else {
        return RegisterModel.fromJson(json.decode(utf8.decode(response.data)));
      }

    } catch (e) {

      //오류 내용 출력
      if (kDebugMode) {
        print(e);
      }

      return null;
    }
  }

}
