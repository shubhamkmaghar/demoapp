import 'package:demoapp/utils/const/color.dart';
import 'package:demoapp/utils/const/font_const.dart';
import 'package:demoapp/utils/const/images_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CancelledBooking extends StatefulWidget {
  const CancelledBooking({super.key});

  @override
  State<CancelledBooking> createState() => _CancelledBookingState();
}

class _CancelledBookingState extends State<CancelledBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Cancelled Booking',
          textAlign: TextAlign.right,
          style: poppinsStyle(
            color: Colors.black,
            fontSize: Get.width * 0.055,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Image.asset(
              whatsappIcons,
              height: 30,
              width: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height*0.02),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Punch 2023',
                    style: poppinsStyle(
                      fontSize: Get.width * 0.05,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Booking Id : #1231233556',
                    style: poppinsStyle(
                      fontSize: Get.width * 0.04,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: Get.height * 0.55,
              width: Get.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://s3-alpha-sig.figma.com/img/20d4/a2fe/82e378a4057805bb9f4a102d961006ed?Expires=1711324800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nuEidrUhE32vAlQrGraelrTkN3NA3HeXKp4~X0WWt7tyzC0p48Rv-Kly1B-bEfh1D7lCCZzmSUvrsK3-mw6p8eZMpcULrNjbyEFbtHmDTPRCdFQEDrMU-qWWJ772k0vQiQrZDss4CtYvdX4wwb75i3gyJBfErOiRsIQ07PKUDX7HMz5bflbCnDrTyiSlJbxeDnDB--WWkI2TDONOu1pjsrobRRNA7UsSZyXYjmNK~mXZQomQ9vJe8ZCxIjVa26-jSeY-GfsAtoKQFthFiboLII9WI1Su0I-thmHOD6OFbY-X4EHZ6G1FrfB6LL5Xby6mJuUfKporwm9vi5fufNoNLQ__"),
                      fit: BoxFit.cover)),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '₹30,984',
                    style: poppinsStyle(
                      fontSize: Get.width * 0.05,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Price Details',
                        style: poppinsStyle(
                          fontSize: Get.width * 0.04,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ],
              ),
            ),
            totalEarningBlockingBox(),
amountRefendedData(),
          ],
        ),

      ),

    );
  }

  Widget totalEarningBlockingBox() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      height: Get.height * 0.1,
      width: Get.width,
      padding: EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.backgroundColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
        Container(
            width: Get.width * 0.25,
            child: customColumn(first: '10am,20may', second: 'PickUp Time')
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: VerticalDivider(color: Colors.black),
        ),
        Container(
            width: Get.width * 0.25,
            child:
            customColumn(first: '10am,20may', second: 'Return Time')
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: VerticalDivider(color: Colors.black),
        ),
        Container(
            width: Get.width * 0.25,
            child:  customColumn(first: '6 days', second: 'Duration')
        ),
      ]),
    );
  }

  Widget amountRefendedData(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Text(
          'Amount Refund',
          style: poppinsStyle(
              fontSize: Get.width * 0.055,
              color: AppColors.barColor,
              fontWeight: FontWeight.w400),
        ),
            SizedBox(height: Get.width*0.03,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Container(

              width: Get.width * 0.45,
              child: Text(
                'Refund Id : 7899456123',
                style: poppinsStyle(
                    fontSize: Get.width * 0.04,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w400),
              )),
          Container(
             // margin: EdgeInsets.only(top: 8),
            alignment: Alignment.centerRight,
              width: Get.width * 0.45,
              child: Text(
                'Time : 10:30am,20may',
                style: poppinsStyle(
                    fontSize: Get.width * 0.04,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w400),
              )),
        ]),
        SizedBox(height: Get.width*0.03,),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // margin: EdgeInsets.only(top: 8),
                  width: Get.width * 0.5,
                  child: Text(
                    'Transcation Id : 7899456123',
                    style: poppinsStyle(
                        fontSize: Get.width * 0.04,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w400),
                  )),
              /*Container(
                // margin: EdgeInsets.only(top: 8),
                  width: Get.width * 0.4,
                  child: Text(
                    'Time : 10:30am,20may',
                    style: poppinsStyle(
                        fontSize: Get.width * 0.05,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w400),
                  )),*/
            ]),
            SizedBox(height: Get.width*0.03,),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // margin: EdgeInsets.only(top: 8),
                  width: Get.width * 0.55,
                  child: Text(
                    'Transferred Amount : ₹5000',
                    style: poppinsStyle(
                        fontSize: Get.width * 0.04,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w600),
                  )),
              Container(
                  alignment: Alignment.centerRight,
                // margin: EdgeInsets.only(top: 8),
                  width: Get.width * 0.35,
                  child: Text(
                    'Refund Successful',
                    style: poppinsStyle(
                        fontSize: Get.width * 0.04,
                        color: AppColors.greenColor,
                        fontWeight: FontWeight.w500),
                  )),
            ]),
      ]),
    );
  }

  Widget customColumn({required String first , required String second}){
    return   Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          first,
          style: poppinsStyle(
              fontSize: Get.width * 0.043,
              color: AppColors.blackColor,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: Get.width * 0.01,
        ),
        Text(
          second,
          style: poppinsStyle(
            fontSize: Get.width * 0.032,
            color: AppColors.blackColor,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}
