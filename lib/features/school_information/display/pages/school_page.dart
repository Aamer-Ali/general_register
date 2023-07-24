import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:general_register/common/widgets/app_bar/app_bar.dart';
import 'package:general_register/features/school_information/display/screen_layouts/school_layouts.dart';
import 'package:general_register/features/school_information/display/state_management/bloc/school_information_bloc.dart';
import 'package:general_register/features/school_information/display/view_model/school_information_view_model.dart';

class SchoolPage extends StatefulWidget {
  const SchoolPage({super.key});

  @override
  State<SchoolPage> createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  late SchoolInformationViewModel viewModel;
  final _formKey = GlobalKey<FormState>();
  RangeValues _classSliderRange = const RangeValues(1, 12);

  @override
  void initState() {
    super.initState();
    viewModel = SchoolInformationViewModel(formKey: _formKey);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "School Information"),
      body: Form(
        key: _formKey,
        child: BlocBuilder<SchoolInformationBloc, SchoolInformationState>(
          builder: (context, state) {
            if (state is SchoolInformationInitialState) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SchoolPageWeb(
                        attributes: viewModel.buildSchoolInformationAttributes(
                            context: context,
                            logo: state.image,
                            isMultipleRegister: state.isMultipleRegisterList,
                            currentSelectionIndex: state.currentSelectionIndex,
                            lowerClassList: state.lowerClassList,
                            lowerClassSelected: state.lowerClassSelected,
                            upperClassList: state.upperClassList,
                            upperClassSelected: state.upperClassSelected,
                            aidTypeList: state.aidTypeList,
                            aidTypeSelected: state.aidTypeSelected,
                            classSliderRange: _classSliderRange,
                            onSubmitSetState: (){
                              setState(() {

                              });
                            },
                            onChangeRang: (value) {
                              setState(() {
                                _classSliderRange = value;
                              });
                            }),
                      ),
                    ),
                  ],
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
