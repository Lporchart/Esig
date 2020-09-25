// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$postsAtom = Atom(name: '_HomeControllerBase.posts');

  @override
  ObservableFuture<List<PostModel>> get posts {
    _$postsAtom.reportRead();
    return super.posts;
  }

  @override
  set posts(ObservableFuture<List<PostModel>> value) {
    _$postsAtom.reportWrite(value, super.posts, () {
      super.posts = value;
    });
  }

  final _$listPostsAtom = Atom(name: '_HomeControllerBase.listPosts');

  @override
  ObservableList<PostModel> get listPosts {
    _$listPostsAtom.reportRead();
    return super.listPosts;
  }

  @override
  set listPosts(ObservableList<PostModel> value) {
    _$listPostsAtom.reportWrite(value, super.listPosts, () {
      super.listPosts = value;
    });
  }

  final _$getAllPostsAsyncAction =
      AsyncAction('_HomeControllerBase.getAllPosts');

  @override
  Future getAllPosts() {
    return _$getAllPostsAsyncAction.run(() => super.getAllPosts());
  }

  @override
  String toString() {
    return '''
posts: ${posts},
listPosts: ${listPosts}
    ''';
  }
}
