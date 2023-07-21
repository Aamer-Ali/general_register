part of 'school_information_bloc.dart';

class SchoolInformationInitialState {
  final String udise;
  final String schoolName;
  final String address;
  final String phoneNumber;
  final String email;

  const SchoolInformationInitialState({
    this.udise = "",
    this.schoolName = "",
    this.address = "",
    this.phoneNumber = "",
    this.email = "",
  });

  SchoolInformationInitialState copyWith({
    String? udise,
    String? schoolName,
    String? address,
    String? phoneNumber,
    String? email,
  }) {
    return SchoolInformationInitialState(
      udise: udise ?? this.udise,
      schoolName: schoolName ?? this.schoolName,
      address: address ?? this.address,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
    );
  }
}

class SchoolInformationInvalidState extends SchoolInformationInitialState {
  final String message;

  SchoolInformationInvalidState(this.message);
}
