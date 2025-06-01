import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:gherkin/gherkin.dart';

class GivenThereAreExistingTodoItems extends Given1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input) async {
    final driver = world.driver;
    // Verify that todo items exist
    await driver?.waitFor(find.byValueKey('todo_list'));
  }

  @override
  RegExp get pattern => RegExp(r"there are existing todo items");
}

class ThenTheFirstTodoItemShouldBeHighlighted extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input) async {
    final driver = world.driver;
    // Verify first item is highlighted
    final firstItem = await driver?.waitFor(find.byValueKey('todo_item_0'));
    final isHighlighted = await driver?.getText('todo_item_0_highlighted') == 'true';
    assert(isHighlighted == true, 'First todo item should be highlighted');
  }

  @override
  RegExp get pattern => RegExp(r"the first todo item should be highlighted");
}

class ThenTheHighlightShouldMoveToNextItem extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input) async {
    final driver = world.driver;
    // Verify highlight moved to next item
    await driver?.waitFor(find.byValueKey('todo_item_highlighted'));
  }

  @override
  RegExp get pattern => RegExp(r"the highlight should move to the next todo item");
}

class ThenTheHighlightShouldMoveToPreviousItem extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input) async {
    final driver = world.driver;
    // Verify highlight moved to previous item
    await driver?.waitFor(find.byValueKey('todo_item_highlighted'));
  }

  @override
  RegExp get pattern => RegExp(r"the highlight should move to the previous todo item");
}

class ThenIShouldSeeSearchInputField extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input) async {
    final driver = world.driver;
    // Verify search input field is visible
    await driver?.waitFor(find.byValueKey('search_input'));
  }

  @override
  RegExp get pattern => RegExp(r"I should see a search input field");
}

class ThenTodoShouldBeSaved extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input) async {
    final driver = world.driver;
    // Verify todo was saved
    await driver?.waitFor(find.byValueKey('todo_saved_indicator'));
  }

  @override
  RegExp get pattern => RegExp(r"the todo should be saved");
} 