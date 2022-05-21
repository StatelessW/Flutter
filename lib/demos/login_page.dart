import 'package:flutter/material.dart';

class LoginPageDemo extends StatefulWidget {
  const LoginPageDemo({Key? key}) : super(key: key);

  @override
  State<LoginPageDemo> createState() => _LoginPageDemoState();
}

class _LoginPageDemoState extends State<LoginPageDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          Padding(
            padding: _ProjectPaddings
                .paddingFromTop50px, // Bu paddingleri devamlı elle vermek yerine daha mantıklı bir yol olabilir sanki.
            child: UserMailField(),
          ),
          Padding(
            padding: _ProjectPaddings.paddingFromTop20px,
            child: UserPasswordField(),
          ),
          Padding(
            padding: _ProjectPaddings.paddingFromTop40px,
            child: SubmitButton(),
          ),
          ForgotPasswordButton(),
        ],
      ),
    );
  }
}

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => {}, child: const Text(_ProjectStrings.forgotPasswordText), style: const ButtonStyle());
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {},
      child: const Text(_ProjectStrings.submitButtonText),
      style: ElevatedButton.styleFrom(
          primary: (Colors.grey[800]),
          fixedSize: const Size(120, 40),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}

class UserPasswordField extends StatefulWidget {
  const UserPasswordField({
    Key? key,
  }) : super(key: key);

  @override
  State<UserPasswordField> createState() => _UserPasswordFieldState();
}

class _UserPasswordFieldState extends State<UserPasswordField> {
  bool _isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: _isObsecure,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: _ProjectStrings.passwordInputText,
          prefixIcon: const Icon(Icons.lock_outline_rounded),
          suffixIcon: IconButton(
            onPressed: () {
              _isObsecureStateControl();
            },
            icon: Icon(_isObsecureIFStatement()),
          )),
    );
  }

  IconData _isObsecureIFStatement() => _isObsecure ? Icons.visibility : Icons.visibility_off;

  void _isObsecureStateControl() {
    return setState(() {
      _isObsecure = !_isObsecure;
    });
  }
}

class UserMailField extends StatelessWidget {
  const UserMailField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      keyboardType: TextInputType.emailAddress,
      autofillHints: [AutofillHints.email],
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: _ProjectStrings.mailInputText,
        prefixIcon: Icon(
          Icons.mail_outlined,
        ),
      ),
    );
  }
}

class _ProjectPaddings {
  static const EdgeInsets paddingFromTop10px = EdgeInsets.only(top: 10);
  static const EdgeInsets paddingFromTop20px = EdgeInsets.only(top: 20);
  static const EdgeInsets paddingFromTop40px = EdgeInsets.only(top: 40);
  static const EdgeInsets paddingFromTop50px = EdgeInsets.only(top: 50);
  static const EdgeInsets paddingFromBottom20px = EdgeInsets.only(bottom: 20);
}

class _ProjectStrings {
  static const String mailInputText = 'Lütfen mail adresinizi giriniz';
  static const String passwordInputText = 'Lütfen parolanızı giriniz';
  static const String forgotPasswordText = 'Şifremi Unuttum';
  static const String submitButtonText = 'Giriş';
}
