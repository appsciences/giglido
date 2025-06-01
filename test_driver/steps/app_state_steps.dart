import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:gherkin/gherkin.dart';

class GivenTheAppIsRunning extends Given1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input) async {
    final driver = world.driver;
    // Wait for the app to be ready
    await driver?.waitFor(find.byValueKey('app_root'));
  }

  @override
  RegExp get pattern => RegExp(r"the todo app is running");
}

class ThenTheAppShouldBeInIdleMode extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input) async {
    final driver = world.driver;
    // Verify idle mode indicator is present
    await driver?.waitFor(find.byValueKey('idle_mode_indicator'));
  }

  @override
  RegExp get pattern => RegExp(r"the app should be in idle mode");
}

class ThenKeyboardShortcutsShouldBeActive extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input) async {
    final driver = world.driver;
    // Verify keyboard shortcuts are active by checking the shortcuts help overlay
    await driver?.waitFor(find.byValueKey('keyboard_shortcuts_active'));
  }

  @override
  RegExp get pattern => RegExp(r"the keyboard shortcuts should be active");
} 