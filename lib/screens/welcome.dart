import 'package:apptide_test/utils/utils.dart';
import 'package:apptide_test/widgets/widgets.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 7.width,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(Constants.logo),
              SizedBox(
                height: 3.height,
              ),
              Text(
                '${Constants.dreamsText}',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: AppColors.greyText,
                  letterSpacing: 0.8,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 12.height,
              ),
              ButtonWidget(
                buttonColor: AppColors.yellow,
                text: Constants.signup,
              ),
              SizedBox(
                height: 3.height,
              ),
              ButtonWidget(
                buttonColor: AppColors.black,
                text: Constants.signIn,
                onTap: () => Navigator.pushNamed(context, '/login'),
              ),
              SizedBox(
                height: 10.height,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
