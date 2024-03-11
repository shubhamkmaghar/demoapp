import 'package:demoapp/utils/routes/routes_const.dart';
import 'package:get/get.dart';
import '../../userList_module/binding/event_list_binding.dart';
import '../../userList_module/screens/getUserDetailsView.dart';
import '../../userList_module/screens/userlist_screen.dart';


class AppRoutes {
  static List<GetPage> getRoutes() {
    return [
      GetPage(
        name: RoutesConst.userListScreen,
        page: () => const UserList(),
        binding:UserListBinding()
      ),

    ];
  }
}
