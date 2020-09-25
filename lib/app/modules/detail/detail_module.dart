import 'detail_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'detail_page.dart';

class DetailModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DetailController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => DetailPage(postModel: args.data,)),
      ];

  static Inject get to => Inject<DetailModule>.of();
}
