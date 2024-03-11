import 'dart:convert';
import 'package:demoapp/utils/services/demo_api_service.dart';
import 'package:http/http.dart' as http;
import '../../utils/const/app_urls.dart';
import '../../utils/controller/base_controller.dart';
import '../model/user_details.dart';

class UserListController extends BaseController {
  List<UserDetails> userList = [];
  DemoUserApiService demoUserApiService = DemoUserApiService();
  @override
  void onInit() {
    getUserData();
    super.onInit();

  }
  Future<void> getUserData()async {
    String url = AppUrls.userListData;

    final response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      var decodeddata = jsonDecode(response.body);
      print(" decoded data $decodeddata");
      Iterable iterable = decodeddata as Iterable;
      var data=  iterable.map((element) => UserDetails.fromJson(element)).toList();
      userList = data;
    }
    update();


  }

  @override
  void onClose() {

    super.onClose();
  }
}
