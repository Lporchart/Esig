import 'package:mobx/mobx.dart';

part 'detail_controller.g.dart';

class DetailController = _DetailControllerBase with _$DetailController;

abstract class _DetailControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
