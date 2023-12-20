// ignore_for_file: must_be_immutable

part of 'invoicetwo_bloc.dart';

/// Represents the state of Invoicetwo in the application.
class InvoicetwoState extends Equatable {
  InvoicetwoState({
    this.group692Controller,
    this.invoicetwoModelObj,
  });

  TextEditingController? group692Controller;

  InvoicetwoModel? invoicetwoModelObj;

  @override
  List<Object?> get props => [
        group692Controller,
        invoicetwoModelObj,
      ];
  InvoicetwoState copyWith({
    TextEditingController? group692Controller,
    InvoicetwoModel? invoicetwoModelObj,
  }) {
    return InvoicetwoState(
      group692Controller: group692Controller ?? this.group692Controller,
      invoicetwoModelObj: invoicetwoModelObj ?? this.invoicetwoModelObj,
    );
  }
}
