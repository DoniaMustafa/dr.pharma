import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:dondondony38_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 11 Pro Max - ThirtySeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone11ProMaxThirtysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 11 Pro Max - TwentyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone11ProMaxTwentyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 11 Pro Max - TwentyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone11ProMaxTwentyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 11 Pro Max - TwentySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone11ProMaxTwentysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "sign in".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signInScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "sign up".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signUpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "country".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.countryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "sign up 2(if it from saudi arabia)".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.signUp2IfItFromSaudiArabiaScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "sign up Three".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signUpThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "category info Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.categoryInfoThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "home Four - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeFourContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "category info One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.categoryInfoOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "flash sale".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.flashSaleScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "category info Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.categoryInfoTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 11 Pro Max - SixtyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone11ProMaxSixtyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "category info - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.categoryInfoTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "category - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.categoryTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "brand info - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.brandInfoTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "brand infoTwo Five".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.brandInfotwoFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "invoiceTwo".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.invoicetwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "invoiceThree Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.invoicethreeTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "invoiceThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.invoicethreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "brand infoTwo Four - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.brandInfotwoFourTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "brand infoTwo Nine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.brandInfotwoNineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "brand infoTwo Thirteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.brandInfotwoThirteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "brand infoTwo Eleven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.brandInfotwoElevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "brand infoTwo Fifteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.brandInfotwoFifteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "brand infoTwo Eight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.brandInfotwoEightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "brand infoTwo Sixteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.brandInfotwoSixteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "brand infoTwo Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.brandInfotwoTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "brand infoTwo Twelve".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.brandInfotwoTwelveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "brand infoTwo Six".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.brandInfotwoSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "brand infoTwo One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.brandInfotwoOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "invoiceThree One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.invoicethreeOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "brand infoTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.brandInfotwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "brand infoTwo Fourteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.brandInfotwoFourteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "brand infoTwo Seventeen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.brandInfotwoSeventeenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "brand infoTwo Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.brandInfotwoThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "brand infoTwo Eighteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.brandInfotwoEighteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "brand infoTwo Ten".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.brandInfotwoTenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "profile info One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileInfoOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "profile info".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileInfoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "profile".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "profile One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileOneScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
