import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:gherkin/gherkin.dart';

class WhenIPressKey extends When1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String key) async {
    final driver = world.driver;
    // Simulate key press
    await driver?.tap(find.byValueKey('key_${key.toLowerCase()}'));
  }

  @override
  RegExp get pattern => RegExp(r'I press "([^"]*)"');
}

class WhenIType extends When1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String text) async {
    final driver = world.driver;
    // Type the text into the active input field
    await driver?.enterText(text);
  }

  @override
  RegExp get pattern => RegExp(r'I type "([^"]*)"');
} 