part of 'school_information_bloc.dart';

abstract class SchoolInformationState extends Equatable {
  const SchoolInformationState();
}

class SchoolInformationInitialState extends SchoolInformationState {
  List<RadioButtonValueAttribute> isMultipleRegisterList=getIsMultipleRegisterValues();

  final List<DropDownValueAttributes> upperClassList = getClassList();
  final List<DropDownValueAttributes> lowerClassList = getClassList();
  final List<DropDownValueAttributes> aidTypeList = getAidType();

  final int? currentSelectionIndex;
  final DropDownValueAttributes? upperClassSelected;
  final DropDownValueAttributes? lowerClassSelected;
  final DropDownValueAttributes? aidTypeSelected;
  // final DropDownValueAttributes? aidTypeSelected;
  final Uint8List? image;

  SchoolInformationInitialState({
    this.currentSelectionIndex,
    this.upperClassSelected,
    this.lowerClassSelected,
    this.aidTypeSelected,
    this.image,
  });

  @override
  List<Object?> get props => [
        isMultipleRegisterList,
        currentSelectionIndex,
        upperClassList,
        lowerClassList,
        aidTypeList,
        upperClassSelected,
        lowerClassSelected,
        aidTypeSelected,
        image
      ];
}

List<DropDownValueAttributes> getClassList() {
  return [
    DropDownValueAttributes(label: "First", value: 1),
    DropDownValueAttributes(label: "Second", value: 2),
    DropDownValueAttributes(label: "Third", value: 3),
    DropDownValueAttributes(label: "Forth", value: 4),
    DropDownValueAttributes(label: "Fifth", value: 5),
    DropDownValueAttributes(label: "Sixth", value: 6),
    DropDownValueAttributes(label: "Seventh", value: 7),
    DropDownValueAttributes(label: "Eight", value: 8),
    DropDownValueAttributes(label: "Ninth", value: 9),
    DropDownValueAttributes(label: "Tenth", value: 10),
    DropDownValueAttributes(label: "Eleventh", value: 11),
  ];
}

List<DropDownValueAttributes> getAidType() {
  return [
    DropDownValueAttributes(label: "Aided", value: 1),
    DropDownValueAttributes(label: "Non Aided", value: 2),
    DropDownValueAttributes(label: "Partially Aided", value: 3),
  ];
}

List<RadioButtonValueAttribute> getIsMultipleRegisterValues() {
  return [
    RadioButtonValueAttribute(label: 'Yes', value: 1),
    RadioButtonValueAttribute(label: "No", value: 2),
  ];
}
