import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: _ProjectPadding.padding40pxTop,
            child: const UserMailField(),
          ),
          Padding(
            padding: _ProjectPadding.padding10pxTop,
            child:
                const UserPasswordField(), // TODO | Şifreye show / hide eklenecek.
          ),
          Padding(
            padding: _ProjectPadding.padding40pxTop,
            child: const SubmitButton(),
          ),
          forgotPassword()
        ],
      ),
    );
  }

  TextButton forgotPassword() => TextButton(
        onPressed: () => {},
        child: const Text('Şifremi Unuttum'),
      );
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => {},
        child: const Text('Giriş'),
        style: ElevatedButton.styleFrom(
            primary: (Colors.grey[800]),
            fixedSize: const Size(120, 40),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))));
  }
}

class UserPasswordField extends StatelessWidget {
  const UserPasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.lock_outline),
          border: const OutlineInputBorder(),
          hintText: _ProjectTexts.inputPasswordText),
    );
  }
}

class UserMailField extends StatelessWidget {
  const UserMailField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.mail_outline),
            border: const OutlineInputBorder(),
            hintText: _ProjectTexts.inputMailText));
  }
}

class _ProjectPadding {
  static EdgeInsets padding10pxTop = const EdgeInsets.only(top: 10);
  static EdgeInsets padding20pxTop = const EdgeInsets.only(top: 20);
  static EdgeInsets padding40pxTop = const EdgeInsets.only(top: 40);
}

class _ProjectTexts {
  static String inputMailText = 'Lütfen mail adresinizi giriniz';
  static String inputPasswordText = 'Lütfen şifrenizi giriniz';
}
