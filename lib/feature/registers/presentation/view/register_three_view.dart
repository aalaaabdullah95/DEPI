import 'package:flutter/material.dart';
import 'package:test_project_depi/feature/registers/presentation/view/widgets/custom_button.dart';
import 'package:test_project_depi/feature/registers/presentation/view/widgets/custom_text_feild.dart';
import 'package:test_project_depi/feature/registers/presentation/view/widgets/grediant_background.dart';
import 'package:test_project_depi/feature/registers/presentation/view/widgets/logo_image.dart';

class RegisterThreeView extends StatelessWidget {
  const RegisterThreeView({super.key});

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
                height: 57,
              ),
              CustomTextFeild(
                labelText: 'University',
              ),
              SizedBox(
                height: 13,
              ),
              CustomTextFeild(
                labelText: 'Faculty',
              ),
              SizedBox(
                height: 13,
              ),
              CustomTextFeild(
                labelText: 'Major',
              ),
              SizedBox(
                height: 13,
              ),
              CustomTextFeild(
                labelText: 'Degree',
              ),
              SizedBox(
                height: 13,
              ),
              CustomTextFeild(
                labelText: 'Government Of Training',
                suffexIcon: Icon(
                  Icons.arrow_drop_down,
                ),
              ),
              SizedBox(
                height: 44,
              ),
              Padding(
                padding: EdgeInsets.only(left: 28),
                child: CustomButton(
                  width: 300,
                  heigh: 48,
                  tittle: 'Register',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
