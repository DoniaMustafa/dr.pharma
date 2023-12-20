import '../category_info_two_screen/widgets/productcard1_item_widget.dart';
import 'bloc/category_info_two_bloc.dart';
import 'models/category_info_two_model.dart';
import 'models/productcard1_item_model.dart';
import 'package:dondondony38_s_application1/core/app_export.dart';
import 'package:dondondony38_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:dondondony38_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:dondondony38_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CategoryInfoTwoScreen extends StatelessWidget {
  const CategoryInfoTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CategoryInfoTwoBloc>(
      create: (context) => CategoryInfoTwoBloc(CategoryInfoTwoState(
        categoryInfoTwoModelObj: CategoryInfoTwoModel(),
      ))
        ..add(CategoryInfoTwoInitialEvent()),
      child: CategoryInfoTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(top: 20.v),
          child: BlocSelector<CategoryInfoTwoBloc, CategoryInfoTwoState,
              CategoryInfoTwoModel?>(
            selector: (state) => state.categoryInfoTwoModelObj,
            builder: (context, categoryInfoTwoModelObj) {
              return GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 319.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 21.h,
                  crossAxisSpacing: 21.h,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount:
                    categoryInfoTwoModelObj?.productcard1ItemList.length ?? 0,
                itemBuilder: (context, index) {
                  Productcard1ItemModel model =
                      categoryInfoTwoModelObj?.productcard1ItemList[index] ??
                          Productcard1ItemModel();
                  return Productcard1ItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 34.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroup1Black90001,
        margin: EdgeInsets.only(
          left: 29.h,
          top: 22.v,
          bottom: 22.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_medicines".tr,
      ),
    );
  }
}
