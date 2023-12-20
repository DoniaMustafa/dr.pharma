import '../category_brand_page/widgets/dynamictextgrid_item_widget.dart';
import 'bloc/category_brand_bloc.dart';
import 'models/category_brand_model.dart';
import 'models/dynamictextgrid_item_model.dart';
import 'package:dondondony38_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CategoryBrandPage extends StatefulWidget {
  const CategoryBrandPage({Key? key})
      : super(
          key: key,
        );

  @override
  CategoryBrandPageState createState() => CategoryBrandPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<CategoryBrandBloc>(
      create: (context) => CategoryBrandBloc(CategoryBrandState(
        categoryBrandModelObj: CategoryBrandModel(),
      ))
        ..add(CategoryBrandInitialEvent()),
      child: CategoryBrandPage(),
    );
  }
}

class CategoryBrandPageState extends State<CategoryBrandPage>
    with AutomaticKeepAliveClientMixin<CategoryBrandPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 39.v),
              _buildDynamicTextGrid(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDynamicTextGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 38.h),
      child: BlocSelector<CategoryBrandBloc, CategoryBrandState,
          CategoryBrandModel?>(
        selector: (state) => state.categoryBrandModelObj,
        builder: (context, categoryBrandModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 104.v,
              crossAxisCount: 3,
              mainAxisSpacing: 40.h,
              crossAxisSpacing: 40.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount:
                categoryBrandModelObj?.dynamictextgridItemList.length ?? 0,
            itemBuilder: (context, index) {
              DynamictextgridItemModel model =
                  categoryBrandModelObj?.dynamictextgridItemList[index] ??
                      DynamictextgridItemModel();
              return DynamictextgridItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
