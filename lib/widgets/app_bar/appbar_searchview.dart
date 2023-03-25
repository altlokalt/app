import 'package:app/core/app_export.dart';
import 'package:app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarSearchview extends StatelessWidget {
  AppbarSearchview({this.hintText, this.controller, this.margin});

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: getHorizontalSize(
          272,
        ),
        focusNode: FocusNode(),
        controller: controller,
        hintText: hintText,
        variant: SearchViewVariant.None,
        suffix: Container(
          margin: getMargin(
            left: 30,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgSearch,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: getVerticalSize(
            18,
          ),
        ),
      ),
    );
  }
}
