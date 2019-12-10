import 'package:blemulator_example/peripheral_details/peripheral_details_view_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class PeripheralDetailsState extends Equatable {
  final String name;
  final String identifier;
  final LayoutType layoutType;

  const PeripheralDetailsState({@required this.peripheralDetails});

  @override
  List<Object> get props => [peripheralDetails];
}
