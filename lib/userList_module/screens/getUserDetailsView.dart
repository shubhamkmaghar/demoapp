import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../model/user_details.dart';

class UserDetailsView extends StatefulWidget {
  UserDetails userDetails;

  UserDetailsView({super.key, required this.userDetails});

  @override
  State<UserDetailsView> createState() => _UserDetailsViewState();
}

class _UserDetailsViewState extends State<UserDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Remeaning Details')),
      body: Container(
        height: Get.height,
        width: Get.width,
        margin: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: Get.height * 0.01),
          GestureDetector(
            onTap: (){
            //  Get.to(const Sliderdata());
            },
            child: Text(
              'User Details',
              style: TextStyle(color: Colors.blue, fontSize: 22),
            ),
          ),
          SizedBox(height: Get.height * 0.01),
          Text(
            'User name : ${widget.userDetails.name}',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Phone : ${widget.userDetails.phone}',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Websit : ${widget.userDetails.website}',
            style: TextStyle(fontSize: 16),
          ),

          SizedBox(height: Get.height * 0.01),
          Text(
            'Address :',
            style: TextStyle(color: Colors.blue, fontSize: 22),
          ),
          SizedBox(height: Get.height * 0.01),
          Text(
            'Street : ${widget.userDetails.address?.street}',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Suite : ${widget.userDetails.address?.suite}',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'city : ${widget.userDetails.address?.city}',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'city : ${widget.userDetails.address?.zipcode}',
            style: TextStyle(fontSize: 16),
          ),

          SizedBox(height: Get.height * 0.01),
          Text(
            'Geo Location :',
            style: TextStyle(color: Colors.blue, fontSize: 22),
          ),
          SizedBox(height: Get.height * 0.01),
          Text(
            'Lat : ${widget.userDetails.address?.geo?.lat}',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Lang : ${widget.userDetails.address?.geo?.lng}',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: Get.height * 0.01),
          Text(
            'Company:',
            style: TextStyle(color: Colors.blue, fontSize: 22),
          ),
          SizedBox(height: Get.height * 0.01),
          Text(
            'Name : ${widget.userDetails.company?.name}',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Catch :${widget.userDetails.company?.catchPhrase}',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'neural : ${widget.userDetails.company?.bs}',
            style: TextStyle(fontSize: 16),
          ),


        ]),
      ),
    );
  }
}
