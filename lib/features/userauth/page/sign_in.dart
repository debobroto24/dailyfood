import 'package:dailyfood/features/common_widgets/custon_icon_text_button.dart';
import 'package:dailyfood/features/common_widgets/kapp_bar.dart';
import 'package:dailyfood/features/common_widgets/ktext_button.dart';
import 'package:dailyfood/features/userauth/widgets/custom_text_form_field.dart';
import 'package:dailyfood/features/userauth/widgets/label_text.dart';
import 'package:dailyfood/features/userauth/widgets/password_form_field.dart';
import 'package:dailyfood/utils/kcolor.dart';
import 'package:dailyfood/utils/styles.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolor.bgColor,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: KappBar(text: "sign in")),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const Text("Welcome to dailyfood food service",
                  style: KtextStyls.headLine2),
              const Text(
                  "Enter your phone number and email addresss for signin enaoy your food :)",
                  style: KtextStyls.subTitle2),
              const SizedBox(height: 20),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    LabelText(text: "Enter your email", icon: Icons.join_right),
                    CustomTextFormField(
                      controller: emailController,
                    ),
                    const SizedBox(height: 20),
                    LabelText(text: "Password", icon: Icons.join_right),
                    PasswordFormField(controller: passController),
                    const SizedBox(height: 20),
                    KTextButton(text: "Sign In", onPressed: () {}),
                    const SizedBox(height: 20),
                    const Text(
                      "or",
                      style: KtextStyls.subTitle1,
                    ),
                    const SizedBox(height: 20),
                    CustomIconTextButton(
                        text: "Login with Facebook",
                        iconImagePath: "assets/images/facebook.png",
                        onPressed: () {}),
                    const SizedBox(height: 15),
                    CustomIconTextButton(
                        text: "Login with Facebook",
                        iconImagePath: "assets/images/facebook.png",
                        color: Colors.blueAccent,
                        onPressed: () {}),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
