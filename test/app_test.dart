@TestOn('browser')

import 'package:angular_app/app_component.dart';
import 'package:angular_app/app_component.template.dart' as ng;
import 'package:angular_test/angular_test.dart';
import 'package:test/test.dart';

void main() {
  final testBed =
      NgTestBed.forComponent<AppComponent>(ng.AppComponentNgFactory);
  NgTestFixture<AppComponent> fixture;

  setUp(() async {
    fixture = await testBed.create();
  });

  tearDown(disposeAnyRunningTest);

  test('Contains Submit button', () {
    final html = fixture.rootElement.querySelector('button').matches('button');
    expect(html,true);
  });
}
