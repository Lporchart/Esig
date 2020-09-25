import 'package:esig/shared/repository/Post_repository.dart';
import 'package:esig/shared/repository/models/post_model.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PostRepository repository;

  @observable
  ObservableFuture<List<PostModel>> posts;

  _HomeControllerBase(this.repository) {
    posts = repository.getAllPosts().asObservable();
  }
  // redundançia 
  @observable
  var listPosts = ObservableList<PostModel>.of([]);

  @action
  getAllPosts() async {
    List<PostModel> posts = await repository.getAllPosts();
    listPosts.addAll(posts);
  }
}
