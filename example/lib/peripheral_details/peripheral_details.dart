import 'package:blemulator_example/peripheral_details/peripheral_details_view_model.dart';
import 'package:blemulator_example/scan/scan_result.dart';
import 'package:blemulator_example/scan/scan_result_view_model.dart';
import 'package:equatable/equatable.dart';

class PeripheralDetails extends Equatable {
  final String name;
  final String identifier;
  final PeripheralCategory category;

  PeripheralDetails(this.name, this.identifier, this.category);

  PeripheralDetailsViewModel viewModel() {
    return PeripheralDetailsViewModel(name ?? 'Unknown', identifier,
        PeripheralCategoryViewModel.fromCategory(category));
  }

  @override
  List<Object> get props => [name];
}

class PeripheralDetails2 extends Equatable {
  final ScanResult scanResult;

  PeripheralDetails2(this.scanResult);

  @override
  List<Object> get props => [scanResult];
}