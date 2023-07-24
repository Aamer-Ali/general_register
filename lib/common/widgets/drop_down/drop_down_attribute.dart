import 'package:equatable/equatable.dart';

class DropDownAttributes {
  String? label;
  bool isValid;
  String errorMessage;
  List<DropDownValueAttributes> items;
  DropDownValueAttributes? selectedValue;
  void Function(DropDownValueAttributes?)? onItemChanged;

  DropDownAttributes({
    this.label,
    required this.items,
    this.selectedValue,
    this.onItemChanged,
    this.isValid = true,
    this.errorMessage = "",
  });
}

class DropDownValueAttributes extends Equatable {
  String label;
  int value;

  DropDownValueAttributes({required this.label, required this.value});

  @override
  List<Object?> get props => [label, value];
}
