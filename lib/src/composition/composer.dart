import 'package:zam_event_bus/zam_event_bus.dart';

import '../application/application.dart';
import '../user_interface/user_interface.dart';

class ZamBmiCalculatorProdComposer extends Composer {
  @override
  final config = ZamBmiCalculatorProdComposerConfig();

  @override
  Application buildApp() {
    final eventBus = EventBus();
    final userInterface = ZamBmiCalculatorUserInterface(eventBus);
    final application = ZamBmiCalculatorApplication(userInterface, eventBus);
    return application;
  }
}

class ZamBmiCalculatorProdComposerConfig extends ProdComposerConfig {
  const ZamBmiCalculatorProdComposerConfig();
}
