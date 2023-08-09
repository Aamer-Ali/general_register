import 'dart:async';
import 'dart:typed_data';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:general_register/common/widgets/drop_down/drop_down_attribute.dart';
import 'package:general_register/common/widgets/radio/radio_button_attributes.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'school_information_event.dart';

part 'school_information_state.dart';

class SchoolInformationBloc extends Bloc<SchoolInformationEvent, SchoolInformationState> {
  SchoolInformationBloc() : super(const SchoolInformationInitialState()) {
    on<OnSchoolInitialEvent>((event, emit) async {
      emit(SchoolInformationPageLoadingState());
      await Future.delayed(const Duration(seconds: 3));
      add(OnGetSchoolInformationEvent());
    });

    on<OnRadioButtonChangeEvent>((event, emit) {
      emit(SchoolInformationCreateUpdateSchoolState(currentSelectionIndex: event.currentSelectionIndex));
    });

    on<OnLowerClassChangeEvent>((event, emit) {
      emit(SchoolInformationCreateUpdateSchoolState(lowerClassSelected: event.lowerClassSelected));
    });

    on<OnUpperClassChangeEvent>((event, emit) {
      emit(SchoolInformationCreateUpdateSchoolState(upperClassSelected: event.upperClassSelected));
    });

    on<OnAidTypeChangeEvent>((event, emit) {
      emit(SchoolInformationCreateUpdateSchoolState(aidTypeSelected: event.aidTypeSelected));
    });

    on<OnSchoolLogoChangeEvent>((event, emit) async {
      final ImagePicker picker = ImagePicker();
      XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        Uint8List f = await image.readAsBytes();
        emit(SchoolInformationCreateUpdateSchoolState(image: f));
      }
    });

    on<OnGetSchoolInformationEvent>((event, emit) {
      // emit(SchoolInformationGetSuccessState());
      emit(SchoolInformationPageErrorState(message: "Not found School information"));
    });

    on<OnCreateUpdateSchoolInformationEvent>((event, emit) {
      emit(SchoolInformationCreateUpdateSchoolState());
    });
  }
}
