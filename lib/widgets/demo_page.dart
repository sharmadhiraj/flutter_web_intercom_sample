import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({
    required this.title,
    required this.description,
    required this.icon,
    required this.actions,
    super.key,
  });

  final String title;
  final String description;
  final IconData icon;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 420),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: _buildContent(context),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildHeader(context),
        const SizedBox(height: 32),
        for (final action in actions) ...[
          action,
          const SizedBox(height: 12),
        ],
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Icon(icon, size: 64, color: Theme.of(context).colorScheme.primary),
        const SizedBox(height: 16),
        Text(title, style: textTheme.headlineSmall),
        const SizedBox(height: 8),
        Text(
          description,
          textAlign: TextAlign.center,
          style: textTheme.bodyMedium,
        ),
      ],
    );
  }
}
