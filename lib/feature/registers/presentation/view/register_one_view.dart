import 'package:flutter/material.dart';
import 'package:test_project_depi/core/utilies/styles.dart';
import 'package:test_project_depi/feature/registers/presentation/view/widgets/custom_button.dart';
import 'package:test_project_depi/feature/registers/presentation/view/widgets/custom_text_feild.dart';
import 'package:test_project_depi/core/widget/grediant_background.dart';
import 'package:test_project_depi/feature/registers/presentation/view/widgets/logo_image.dart';

class RegisterOneView extends StatelessWidget {
  const RegisterOneView({super.key});

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
              Padding(
                padding: EdgeInsets.only(left: 5, top: 19, bottom: 10),
                child: Text(
                  'Register',
                  style: Styles.textstyle20,
                ),
              ),
              CustomTextFeild(
                labelText: 'Full name in Arabic',
              ),
              SizedBox(
                height: 13,
              ),
              CustomTextFeild(
                labelText: 'Full name in English',
              ),
              SizedBox(
                height: 13,
              ),
              CustomTextFeild(
                labelText: 'National ID',
              ),
              SizedBox(
                height: 13,
              ),
              CustomTextFeild(
                labelText: 'Date of birth',
                suffexIcon: Icon(
                  Icons.calendar_today,
                ),
              ),
              SizedBox(
                height: 44,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    width: 98,
                    heigh: 48,
                    icon: Icon(
                      Icons.arrow_drop_down,
                    ),
                    tittle: 'Gender',
                  ),
                  CustomButton(
                    width: 125,
                    heigh: 48,
                    icon: Icon(
                      Icons.arrow_drop_down,
                    ),
                    tittle: 'government',
                  ),
                  CustomButton(
                    width: 80,
                    heigh: 48,
                    icon: Icon(
                      Icons.arrow_drop_down,
                    ),
                    tittle: 'City',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
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
