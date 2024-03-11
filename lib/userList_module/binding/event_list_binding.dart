import 'package:get/get.dart';

import '../controller/userlist_controller.dart';

class UserListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserListController());
  }
}