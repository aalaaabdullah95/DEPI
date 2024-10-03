import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_project_depi/feature/registers/presentation/view/widgets/custom_button.dart';
import 'package:test_project_depi/feature/registers/presentation/view/widgets/custom_text_feild.dart';
import 'package:test_project_depi/core/widget/grediant_background.dart';
import 'package:test_project_depi/feature/registers/presentation/view/widgets/logo_image.dart';

class RegisterTwoView extends StatelessWidget {
  const RegisterTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back),
      ),
      body: GradientBackground(
        child: const Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LogoImage(),
              SizedBox(
                height: 73,
              ),
              CustomTextFeild(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
              ),
              SizedBox(
                height: 13,
              ),
              CustomTextFeild(
                prefixIcon: Icon(Icons.phone),
                labelText: 'Phone Number',
              ),
              SizedBox(
                height: 13,
              ),
              CustomTextFeild(
                prefixIcon: Icon(FontAwesomeIcons.linkedin),
                suffexIcon: Icon(FontAwesomeIcons.link),
                labelText: 'Linkedin',
              ),
              SizedBox(
                height: 13,
              ),
              SizedBox(
                height: 44,
              ),
              Padding(
                padding: EdgeInsets.only(left: 28),
                child: CustomButton(
                  icon: Icon(Icons.add),
                  width: 300,
                  heigh: 48,
                  tittle: 'Upload Photo Image',
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(left: 28),
                child: CustomButton(
                  width: 300,
                  heigh: 48,
                  tittle: 'Continue',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
