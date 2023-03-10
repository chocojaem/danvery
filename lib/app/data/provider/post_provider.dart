import 'dart:convert';

import 'package:danvery/app/data/model/post_model.dart';
import 'package:danvery/app/data/provider/url.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class PostProvider {

  final Dio dio = Dio();

  Future<bool> createPost(String token, PostModel postModel) async {

    String url = '$apiUrl/post/general-forum';
    final data = FormData.fromMap({
      'title': postModel.title,
      'body': postModel.body,
    });
    final headers = {
      'Authorization': "Bearer $token",
    };

    try {
      final Response response = await dio.post(url, data: data,
          options: Options(contentType: "multipart/form-data", headers: headers));

      if (kDebugMode) {
        print('CreatePost : ${response.statusCode}');
      }

      if (response.statusCode != 200) {
        throw Exception('CreatePost Error');
      } else {
        return true;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }

  }

  Future<bool> deletePost(String token, int id) async{
    String url = '$apiUrl/post/general-forum/$id';

    final headers = {
      'Authorization': "Bearer $token",
    };

    try {
      final Response response = await dio.delete(url,
          options: Options(headers: headers));

      if (kDebugMode) {
        print('DeletePost : ${response.statusCode}');
      }

      if (response.statusCode != 200) {
        throw Exception('DeletePost Error');
      } else {
        return true;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

}
