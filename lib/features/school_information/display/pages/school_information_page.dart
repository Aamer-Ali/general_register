import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:general_register/common/routes/names.dart';
import 'package:general_register/common/widgets/menu_bar/menu_bar.dart';
import 'package:general_register/common/widgets/text/simple_texts.dart';
import 'package:general_register/common/widgets/text/text_attributes.dart';
import 'package:general_register/features/school_information/display/state_management/bloc/school_information_bloc.dart';
import 'package:go_router/go_router.dart';

class SchoolInformationPage extends StatelessWidget {
  const SchoolInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          const BuildMenuBar(),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: BlocBuilder<SchoolInformationBloc, SchoolInformationState>(
              builder: (context, state) {
                if (state is SchoolInformationPageLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is SchoolInformationPageErrorState) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {
                          context.read<SchoolInformationBloc>().add(OnCreateUpdateSchoolInformationEvent());
                          context.goNamed(AppRoutesName.SCHOOL_PAGE);
                        },
                        child: const Icon(
                          Icons.add,
                          size: 100,
                        ),
                      ),
                      BuildText(attributes: TextAttributes(text: "Tap To Add School"))
                    ],
                  );
                }
                if (state is SchoolInformationGetSuccessState) {
                  return const Center(
                    child: Text("No Information Found"),
                  );
                }
                else{
                  return Container();
                }
              },
            ),
          )
        ],
      )),
    );
  }
}
