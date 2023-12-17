import 'package:expense_mate/view/login_screen/imports/login_screen_imports.dart';

class LoginTextField extends StatefulWidget {
  const LoginTextField({super.key});

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
                style: TextStyle(color: AppColors.secondaryColor),
                children: [
              TextSpan(
                  text: 'Welcome Back \n',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1)),
              TextSpan(
                  text: 'Continue to Sign Up!',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1))
            ])),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
