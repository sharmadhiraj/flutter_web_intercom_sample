import 'package:flutter/widgets.dart';
import 'package:flutter_web_intercom_sample/intercom/intercom_launcher.dart';
import 'package:visibility_detector/visibility_detector.dart';

/// Shows the Intercom launcher only while [child] is visible on screen.
class IntercomScope extends StatelessWidget {
  const IntercomScope({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key("intercom-scope"),
      onVisibilityChanged: (info) =>
          setIntercomLauncherVisible(info.visibleFraction > 0),
      child: child,
    );
  }
}
