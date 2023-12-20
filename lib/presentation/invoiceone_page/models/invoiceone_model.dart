// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcard4_item_model.dart';/// This class defines the variables used in the [invoiceone_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InvoiceoneModel extends Equatable {InvoiceoneModel({this.productcard4ItemList = const []}) {  }

List<Productcard4ItemModel> productcard4ItemList;

InvoiceoneModel copyWith({List<Productcard4ItemModel>? productcard4ItemList}) { return InvoiceoneModel(
productcard4ItemList : productcard4ItemList ?? this.productcard4ItemList,
); } 
@override List<Object?> get props => [productcard4ItemList];
 }
