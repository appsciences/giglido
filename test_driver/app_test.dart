import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'steps/app_state_steps.dart';
import 'steps/keyboard_steps.dart';
import 'steps/todo_steps.dart';

Future<void> main() {
  final config = FlutterTestConfiguration(
    features: [
      RegExp(r"features/.*\.feature"),
    ],
    reporters: [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')
    ],
    stepDefinitions: [
      // App state steps
      GivenTheAppIsRunning(),
      ThenTheAppShouldBeInIdleMode(),
      ThenKeyboardShortcutsShouldBeActive(),
      
      // Keyboard interaction steps
      WhenIPressKey(),
      WhenIType(),
      
      // Todo management steps
      GivenThereAreExistingTodoItems(),
      ThenTheFirstTodoItemShouldBeHighlighted(),
      ThenTheHighlightShouldMoveToNextItem(),
      ThenTheHighlightShouldMoveToPreviousItem(),
      ThenIShouldSeeSearchInputField(),
      ThenTodoShouldBeSaved(),
    ],
    customStepParameterDefinitions: [],
  );
    
  return GherkinRunner().execute(config);
} 