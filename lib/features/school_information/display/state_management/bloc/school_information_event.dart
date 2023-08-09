part of 'school_information_bloc.dart';

@immutable
abstract class SchoolInformationEvent extends Equatable {
  const SchoolInformationEvent();
}

class OnSchoolInitialEvent extends SchoolInformationEvent {
  @override
  List<Object?> get props => [];
}

class OnRadioButtonChangeEvent extends SchoolInformationEvent {
  final int? currentSelectionIndex;

  const OnRadioButtonChangeEvent(this.currentSelectionIndex);

  @override
  List<Object?> get props => [currentSelectionIndex];
}

class OnLowerClassChangeEvent extends SchoolInformationEvent {
  final DropDownValueAttributes? lowerClassSelected;

  const OnLowerClassChangeEvent(this.lowerClassSelected);

  @override
  List<Object?> get props => [lowerClassSelected];
}

class OnUpperClassChangeEvent extends SchoolInformationEvent {
  final DropDownValueAttributes? upperClassSelected;

  const OnUpperClassChangeEvent(this.upperClassSelected);

  @override
  List<Object?> get props => [upperClassSelected];
}

class OnAidTypeChangeEvent extends SchoolInformationEvent {
  final DropDownValueAttributes? aidTypeSelected;

  const OnAidTypeChangeEvent(this.aidTypeSelected);

  @override
  List<Object?> get props => [aidTypeSelected];
}

class OnSchoolLogoChangeEvent extends SchoolInformationEvent {
  @override
  List<Object?> get props => [];
}

class OnCreateUpdateSchoolInformationEvent extends SchoolInformationEvent {
  @override
  List<Object?> get props => [];
}

class OnGetSchoolInformationEvent extends SchoolInformationEvent {
  @override
  List<Object?> get props => [];
}
