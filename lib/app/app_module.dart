import 'package:dio/dio.dart';
import 'package:esig/app/modules/detail/detail_module.dart';
import 'package:esig/app/modules/detail/detail_page.dart';
import 'package:esig/app/modules/home/home_controller.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:esig/app/app_widget.dart';
import 'package:esig/app/modules/home/home_module.dart';
import 'package:esig/shared/repository/Post_repository.dart';
import 'package:esig/shared/repository/utils/const.dart';
class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController(i.get<PostRepository>())),
        Bind((i) => PostRepository(i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: UrlBase))),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router("/detail", module: DetailModule()),

      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
