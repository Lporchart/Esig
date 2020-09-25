import 'package:dio/dio.dart';
import 'package:esig/shared/repository/models/post_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PostRepository {
  Dio dio = Modular.get();

  PostRepository(this.dio);

  Future<List<PostModel>> getAllPosts() async {
    var response = await dio.get('/posts');
    List<PostModel> list = [];

    for (var json in (response.data) as List) {
      PostModel model = PostModel(
          body: json['body'],
          id: json['id'],
          title: json['title'],
          userId: json['userId']);
      list.add(model);
    }

    return list;
  }
}
