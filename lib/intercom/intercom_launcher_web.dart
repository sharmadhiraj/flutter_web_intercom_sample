import 'dart:js_interop';

@JS("setIntercomLauncherVisible")
external void _setLauncherVisible(bool visible);

@JS("openIntercomMessenger")
external void _openMessenger();

void setIntercomLauncherVisible(bool visible) => _setLauncherVisible(visible);

void openIntercomMessenger() => _openMessenger();
