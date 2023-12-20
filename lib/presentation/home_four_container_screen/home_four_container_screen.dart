import 'bloc/home_four_container_bloc.dart';import 'models/home_four_container_model.dart';import 'package:dondondony38_s_application1/core/app_export.dart';import 'package:dondondony38_s_application1/presentation/home_four_page/home_four_page.dart';import 'package:dondondony38_s_application1/presentation/invoiceone_page/invoiceone_page.dart';import 'package:dondondony38_s_application1/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class HomeFourContainerScreen extends StatelessWidget {HomeFourContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<HomeFourContainerBloc>(create: (context) => HomeFourContainerBloc(HomeFourContainerState(homeFourContainerModelObj: HomeFourContainerModel()))..add(HomeFourContainerInitialEvent()), child: HomeFourContainerScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<HomeFourContainerBloc, HomeFourContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homeFourPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildAddToCart(context)));}); } 
/// Section Widget
Widget _buildAddToCart(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {}); } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homeFourPage: return HomeFourPage(); case AppRoutes.invoiceonePage: return InvoiceonePage(); default: return HomeFourPage();} } 
 }
