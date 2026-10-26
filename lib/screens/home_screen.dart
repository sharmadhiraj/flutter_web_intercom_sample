import 'package:flutter/material.dart';
import 'package:flutter_web_intercom_sample/screens/support_screen.dart';
import 'package:flutter_web_intercom_sample/widgets/action_button.dart';
import 'package:flutter_web_intercom_sample/widgets/demo_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DemoPage(
      title: "Home",
      description: "The Intercom launcher is hidden on this page.",
      icon: Icons.home_outlined,
      actions: [
        ActionButton(
          label: "Open support page",
          icon: Icons.support_agent,
          filled: true,
          onPressed: () => _openSupport(context),
        ),
      ],
    );
  }

  void _openSupport(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const SupportScreen()),
    );
  }
}
