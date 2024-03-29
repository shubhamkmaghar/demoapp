import 'package:flutter/material.dart';

import '../const/color.dart';

Widget getElevatedButton({required Widget child, required Function onPressed, double? height, double? width,Color? buttonColor}) {
  return InkWell(
    onTap: ()async{
      await onPressed();
    },
    child: Container(
      height: height ?? 100,
      width: width ?? 200,
      decoration: BoxDecoration(
        color: buttonColor ?? AppColors.greyColor.withOpacity(0.15),
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child:child,
    ),
  );
}

Widget getIconButton({required Icon child, required Function onPressed, double? height, double? width}) {
  return InkWell(
    onTap: ()async{
      await onPressed();
    },
    child: Container(
      height: height ?? 100,
      width: width ?? 100,
      decoration:
          BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(100)), color: AppColors.greyColor),
      child: child,
    ),
  );
}
