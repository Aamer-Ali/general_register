import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:general_register/pages/school/bloc/school_information_bloc.dart';

class SchoolPageController {
  final BuildContext context;

  const SchoolPageController(this.context);

  void handleSchoolInformationRegister() {
    final state = context.read<SchoolInformationBloc>().state;
    final udise = state.udise;
    final schoolName = state.schoolName;
    final address = state.address;
    final phoneNumber = state.phoneNumber;
    final email = state.email;
    if (udise.isEmpty) {
      context.read<SchoolInformationBloc>().add(const SchoolInformationInvalidEvent("Enter Udise"));
      return;
    }
    if (schoolName.isEmpty) {
      context
          .read<SchoolInformationBloc>()
          .add(const SchoolInformationInvalidEvent("Enter School Name"));
      return;
    }
    if (address.isEmpty) {
      context
          .read<SchoolInformationBloc>()
          .add(const SchoolInformationInvalidEvent("Enter Address"));
      return;
    }
  }
}
