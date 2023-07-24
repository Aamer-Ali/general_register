// import 'dart:async';
//
// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';
//
// part 'school_information_event.dart';
//
// part 'school_information_state.dart';
//
// class SchoolInformationBloc
//     extends Bloc<SchoolInformationEvent, SchoolInformationInitialState> {
//   SchoolInformationBloc() : super(const SchoolInformationInitialState()) {
//     on<UDISEChangeEvent>((event, emit) {
//       emit(state.copyWith(udise: event.udise));
//     });
//     on<SchoolNameChangeEvent>((event, emit) {
//       emit(state.copyWith(schoolName: event.schoolName));
//     });
//     on<AddressChangeEvent>((event, emit) {
//       emit(state.copyWith(address: event.address));
//     });
//     on<PhoneChangeEvent>((event, emit) {
//       emit(state.copyWith(phoneNumber: event.phoneNumber));
//     });
//     on<EmailChangeEvent>((event, emit) {
//       emit(state.copyWith(email: event.email));
//     });
//
//     on<SchoolInformationInvalidEvent>((event, emit) {
//       emit(SchoolInformationInvalidState(event.message));
//     });
//   }
// }
