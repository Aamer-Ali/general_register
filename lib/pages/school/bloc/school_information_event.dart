part of 'school_information_bloc.dart';

@immutable
abstract class SchoolInformationEvent {
  const SchoolInformationEvent();
}

class UDISEChangeEvent extends SchoolInformationEvent {
  final String udise;

  const UDISEChangeEvent(this.udise);
}

class SchoolNameChangeEvent extends SchoolInformationEvent {
  final String schoolName;

  const SchoolNameChangeEvent(this.schoolName);
}

class AddressChangeEvent extends SchoolInformationEvent {
  final String address;

  const AddressChangeEvent(this.address);
}

//------

class PhoneChangeEvent extends SchoolInformationEvent {
  final String phoneNumber;

  const PhoneChangeEvent(this.phoneNumber);
}

class EmailChangeEvent extends SchoolInformationEvent {
  final String email;

  const EmailChangeEvent(this.email);
}

class ClusterChangeEvent extends SchoolInformationEvent {
  final String cluster;

  const ClusterChangeEvent(this.cluster);
}

class BlockChangeEvent extends SchoolInformationEvent {
  final String block;

  const BlockChangeEvent(this.block);
}

class DistrictChangeEvent extends SchoolInformationEvent {
  final String district;

  const DistrictChangeEvent(this.district);
}

class StateChangeEvent extends SchoolInformationEvent {
  final String state;

  const StateChangeEvent(this.state);
}

class PinCodeChangeEvent extends SchoolInformationEvent {
  final String pinCode;

  const PinCodeChangeEvent(this.pinCode);
}

class LowerClassChangeEvent extends SchoolInformationEvent {
  final String lowerClass;

  const LowerClassChangeEvent(this.lowerClass);
}

class UpperClassChangeEvent extends SchoolInformationEvent {
  final String upperClass;

  const UpperClassChangeEvent(this.upperClass);
}

class MediumChangeEvent extends SchoolInformationEvent {
  final String medium;

  const MediumChangeEvent(this.medium);
}

class MultipleRegisterBookChangeEvent extends SchoolInformationEvent {
  final String registerBook;

  const MultipleRegisterBookChangeEvent(this.registerBook);
}

class BoardChangeEvent extends SchoolInformationEvent {
  final String board;

  const BoardChangeEvent(this.board);
}

class ManagementChangeEvent extends SchoolInformationEvent {
  final String management;

  const ManagementChangeEvent(this.management);
}

class AidTypeChangeEvent extends SchoolInformationEvent {
  final String aidType;

  const AidTypeChangeEvent(this.aidType);
}

class SubmitFormEvent extends SchoolInformationEvent {}

class SchoolInformationInvalidEvent extends SchoolInformationEvent {
  final String message;

  const SchoolInformationInvalidEvent(this.message);
}