import 'package:apptide_test/utils/utils.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 7.width,
            vertical: 2.height,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(Icons.arrow_back),
                ),
              ),
              Center(
                child: Text('SIGNIN'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
