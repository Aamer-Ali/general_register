import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:general_register/common/widgets/app_bar/app_bar.dart';
import 'package:general_register/common/widgets/text/simple_texts.dart';
import 'package:general_register/pages/school/bloc/school_information_bloc.dart';
import 'package:general_register/pages/school/bloc/school_information_bloc.dart';
import 'package:general_register/pages/school/screen_layout/web_layout/school_page_web.dart';

class SchoolPage extends StatelessWidget {
  const SchoolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "School Information"),
      body: BlocBuilder<SchoolInformationBloc, SchoolInformationInitialState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Visibility(
                  visible:
                      state is SchoolInformationInvalidState ? true : false,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    // child: buildErrorText(
                    //   text: state is SchoolInformationInvalidState
                    //       ? state.message
                    //       : "",
                    // ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SchoolPageWeb(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
