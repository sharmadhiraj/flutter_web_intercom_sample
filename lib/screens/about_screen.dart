import 'package:flutter/material.dart';
import 'package:flutter_web_intercom_sample/widgets/action_button.dart';
import 'package:flutter_web_intercom_sample/widgets/demo_page.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DemoPage(
      title: "About",
      description: "The launcher hides again as soon as this page covers "
          "the support page.",
      icon: Icons.info_outline,
      actions: [
        ActionButton(
          label: "Go back",
          icon: Icons.arrow_back,
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
