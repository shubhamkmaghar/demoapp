import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/routes/routes_const.dart';
import '../controller/userlist_controller.dart';
import 'getUserDetailsView.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserListController>(
        init: UserListController(),
        builder: (controller) {
          return Scaffold(appBar: AppBar(
              title: Text('User Details')),
            body: Container(
              height: Get.height,
              width: Get.width,
              // color: Colors.amber,
              child: ListView.builder(
                itemCount: controller.userList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(UserDetailsView(userDetails: controller.userList[index],));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: Get.width,
                      height: Get.height * 0.1,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${controller.userList[index].name}'),
                              Text('${controller.userList[index].email}'),
                            ],
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    emailController.text = controller.userList[index].email!;
                                    nameController.text = controller.userList[index].name!;
                                    showEditableAlertDialog((email, name) {
                                      controller.userList[index].email = email;
                                      controller.userList[index].name = name;
                                      // UserDetails(email: email, name: name,);
                                      controller.update();
                                      nameController.clear();
                                      emailController.clear();
                                      Get.back();
                                    });
                                  },
                                  child: Icon(Icons.edit,color: Colors.blue,)),
                              SizedBox(
                                width: Get.width * 0.05,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    controller.userList.removeAt(index);
                                    controller.update();
                                  },
                                  child: Icon(Icons.delete,color: Colors.blue,)),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        });
  }

  Future<void> showEditableAlertDialog(Function(String, String) onSave) async {
    final AlertDialog dialog = AlertDialog(
      scrollable: false,

      title: Text('Edit'),
      content: Container(
        height: Get.height*0.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Email"),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                fillColor: Colors.grey.shade50,
              ),
            ),
            SizedBox(
              height: Get.height*0.05,
            ),
            Text("Name"),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                fillColor: Colors.grey.shade50,
              ),
            ),
          ],
        ),
      ),
      actions: [
        CupertinoDialogAction(
            child: Text('Save'),
            isDefaultAction: false,
            onPressed: () {
              onSave(emailController.text, nameController.text);
            }),
        CupertinoDialogAction(
            child: Text('Cancel'),
            isDefaultAction: true,
            onPressed: () {
              Get.back();
            }),
      ],
    );

    showDialog(

      context: context, builder: (context) => dialog,);
  }
}
