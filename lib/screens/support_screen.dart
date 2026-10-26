import 'package:flutter/material.dart';
import 'package:flutter_web_intercom_sample/intercom/intercom_launcher.dart';
import 'package:flutter_web_intercom_sample/intercom/intercom_scope.dart';
import 'package:flutter_web_intercom_sample/screens/about_screen.dart';
import 'package:flutter_web_intercom_sample/widgets/action_button.dart';
import 'package:flutter_web_intercom_sample/widgets/demo_page.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntercomScope(
      child: DemoPage(
        title: "Support",
        description: "The Intercom launcher is visible on this page.",
        icon: Icons.support_agent,
        actions: [
          const ActionButton(
            label: "Open messenger",
            icon: Icons.chat_bubble_outline,
            filled: true,
            onPressed: openIntercomMessenger,
          ),
          ActionButton(
            label: "Open about page",
            icon: Icons.info_outline,
            onPressed: () => _openAbout(context),
          ),
        ],
      ),
    );
  }

  void _openAbout(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const AboutScreen()),
    );
  }
}
