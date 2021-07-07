import 'package:zam_event_bus/zam_event_bus.dart';

import '../application/application.dart';
import 'mocks/mock.user_interface.dart';

class ZamBmiCalculatorTestComposer extends Composer {
  @override
  final config = ZamBmiCalculatorTestComposerConfig();

  @override
  Application buildApp() {
    final eventBus = EventBus.withLogger();
    final userInterface = MockZamBmiCalculatorUserInterface(eventBus);
    final application = ZamBmiCalculatorApplication(userInterface, eventBus);
    return application;
  }
}

class ZamBmiCalculatorTestComposerConfig extends TestComposerConfig {
  const ZamBmiCalculatorTestComposerConfig();
}
