import 'dart:async';
import 'dart:typed_data';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:general_register/common/widgets/drop_down/drop_down_attribute.dart';
import 'package:general_register/common/widgets/radio/radio_button_attributes.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'school_information_event.dart';

part 'school_information_state.dart';

class SchoolInformationBloc extends Bloc<SchoolInformationEvent, SchoolInformationState> {
  SchoolInformationBloc() : super(SchoolInformationInitialState()) {
    on<OnSchoolInitialEvent>((event, emit) {
      emit(SchoolInformationInitialState());
    });

    on<OnRadioButtonChangeEvent>((event, emit) {
      emit(SchoolInformationInitialState(currentSelectionIndex: event.currentSelectionIndex));
    });

    on<OnLowerClassChangeEvent>((event, emit) {
      emit(SchoolInformationInitialState(lowerClassSelected: event.lowerClassSelected));
    });

    on<OnUpperClassChangeEvent>((event, emit) {
      emit(SchoolInformationInitialState(upperClassSelected: event.upperClassSelected));
    });

    on<OnAidTypeChangeEvent>((event, emit) {
      emit(SchoolInformationInitialState(aidTypeSelected: event.aidTypeSelected));
    });

    on<OnSchoolLogoChangeEvent>((event, emit) async {
      final ImagePicker picker = ImagePicker();
      XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        Uint8List f = await image.readAsBytes();
        emit(SchoolInformationInitialState(image: f));
      }
    });

    // on<UDISEChangeEvent>((event, emit) {
    //   emit(state.copyWith(udise: event.udise));
    // });
    // on<SchoolNameChangeEvent>((event, emit) {
    //   emit(state.copyWith(schoolName: event.schoolName));
    // });
    // on<AddressChangeEvent>((event, emit) {
    //   emit(state.copyWith(address: event.address));
    // });
    // on<PhoneChangeEvent>((event, emit) {
    //   emit(state.copyWith(phoneNumber: event.phoneNumber));
    // });
    // on<EmailChangeEvent>((event, emit) {
    //   emit(state.copyWith(email: event.email));
    // });
    //
    // on<SchoolInformationInvalidEvent>((event, emit) {
    //   emit(SchoolInformationInvalidState(event.message));
    // });
  }
}
