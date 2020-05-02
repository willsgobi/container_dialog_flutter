import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

  @observable
  bool showContainerDialog = false;

  @observable
  Future showContainer() async{
    showContainerDialog = true;
  }

  @observable
  Future hideContainer() async{
    showContainerDialog = false;
  }

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
