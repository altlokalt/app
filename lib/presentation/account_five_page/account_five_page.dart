import 'controller/account_five_controller.dart';
import 'models/account_five_model.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/app_bar/appbar_image.dart';
import 'package:app/widgets/app_bar/appbar_title.dart';
import 'package:app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AccountFivePage extends StatelessWidget {
  AccountFiveController controller =
      Get.put(AccountFiveController(AccountFiveModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        appBar: CustomAppBar(
          height: getVerticalSize(
            66,
          ),
          title: AppbarTitle(
            text: "lbl_account".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                18,
              ),
              width: getSize(
                18,
              ),
              svgPath: ImageConstant.imgSettings18x18,
              margin: getMargin(
                left: 18,
                top: 20,
                right: 18,
                bottom: 17,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                top: 17,
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.maxFinite,
                    padding: getPadding(
                      left: 18,
                      top: 12,
                      right: 18,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 3,
                          ),
                          child: Text(
                            "lbl_notification".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular16Black900dd,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgNotificationicon,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            right: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 8,
                    ),
                    padding: getPadding(
                      left: 18,
                      top: 12,
                      right: 18,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 1,
                          ),
                          child: Text(
                            "msg_my_subscription".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular16Black900dd,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMysubscription,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            right: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 8,
                    ),
                    padding: getPadding(
                      left: 18,
                      top: 12,
                      right: 18,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 1,
                          ),
                          child: Text(
                            "msg_transaction_his".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular16Black900dd,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgTransactionhistory,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            right: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 8,
                    ),
                    padding: getPadding(
                      left: 18,
                      top: 12,
                      right: 18,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 1,
                          ),
                          child: Text(
                            "msg_profile_setting".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular16Black900dd,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgProfilesettings,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            right: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 8,
                    ),
                    padding: getPadding(
                      left: 18,
                      top: 12,
                      right: 18,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_watch_history".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular16Black900dd,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgWatchhistoryicon,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            right: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 8,
                    ),
                    padding: getPadding(
                      left: 18,
                      top: 12,
                      right: 18,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_following".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular16Black900dd,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgFollowingicon,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            right: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 8,
                    ),
                    padding: getPadding(
                      left: 18,
                      top: 12,
                      right: 18,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 3,
                          ),
                          child: Text(
                            "lbl_liked_movies".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular16Black900dd,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLikedmoviesicon,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            right: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 16,
                      top: 56,
                      right: 16,
                    ),
                    padding: getPadding(
                      left: 17,
                      top: 20,
                      right: 17,
                      bottom: 20,
                    ),
                    decoration: AppDecoration.outlineBlack9003f.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder2,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgClock14x14,
                          height: getSize(
                            14,
                          ),
                          width: getSize(
                            14,
                          ),
                          margin: getMargin(
                            top: 1,
                            bottom: 1,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 108,
                            right: 122,
                          ),
                          child: Text(
                            "lbl_log_out".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
