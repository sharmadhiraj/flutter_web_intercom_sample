import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    required this.label,
    required this.icon,
    required this.onPressed,
    this.filled = false,
    super.key,
  });

  final String label;
  final IconData icon;
  final VoidCallback onPressed;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: label,
      button: true,
      child: SizedBox(
        width: double.infinity,
        child: filled ? _buildFilled() : _buildTonal(),
      ),
    );
  }

  Widget _buildFilled() {
    return FilledButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
    );
  }

  Widget _buildTonal() {
    return FilledButton.tonalIcon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
    );
  }
}
