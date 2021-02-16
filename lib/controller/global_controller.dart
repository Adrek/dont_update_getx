import 'package:get/state_manager.dart';

class GlobalController extends GetxController {
  String _appName = 'HelloWorld';

  String get appName => this._appName;

  changeAppName() {
    print('GETX=> Changing Name');
    this._appName = 'How are you?';
    update(['content', 'action']);
  }
}
