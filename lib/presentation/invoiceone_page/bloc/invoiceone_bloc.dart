import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/productcard4_item_model.dart';import 'package:dondondony38_s_application1/presentation/invoiceone_page/models/invoiceone_model.dart';part 'invoiceone_event.dart';part 'invoiceone_state.dart';/// A bloc that manages the state of a Invoiceone according to the event that is dispatched to it.
class InvoiceoneBloc extends Bloc<InvoiceoneEvent, InvoiceoneState> {InvoiceoneBloc(InvoiceoneState initialState) : super(initialState) { on<InvoiceoneInitialEvent>(_onInitialize); }

_onInitialize(InvoiceoneInitialEvent event, Emitter<InvoiceoneState> emit, ) async  { emit(state.copyWith(invoiceoneModelObj: state.invoiceoneModelObj?.copyWith(productcard4ItemList: fillProductcard4ItemList()))); } 
List<Productcard4ItemModel> fillProductcard4ItemList() { return [Productcard4ItemModel(productName: "panadol advace", productDescription: "from : gsk company", ratingText: "4.5", reviewCount: "(1045 Reviews)", price1: "235,00", price2: "335,00", quantity: "3", plusIcon: "+"), Productcard4ItemModel(productName: "panadol advace", productDescription: "from : gsk company", ratingText: "4.5", reviewCount: "(1045 Reviews)", price1: "235,00", price2: "335,00", quantity: "3")]; } 
 }
