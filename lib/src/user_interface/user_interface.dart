import 'package:flutter/material.dart' show WidgetsFlutterBinding, runApp;
import 'package:zam_event_bus/zam_event_bus.dart';

import 'pages/bmi_details/view_models/_.index.dart';
import 'pages/home/view_models/_.index.dart';
import 'root.view.dart';

class ZamBmiCalculatorUserInterface extends BasicUserInterface {
  @override
  final eventTransformers = const [
    WeightSelectorViewModelMapper(),
    BmiViewModelMapper(),
    BmiCategoryViewModelMapper(),
    SelectedWeightViewModelMapper(),
    HumanBodyViewModelMapper(),
    BmiDetailsViewModelMapper(),
    HeightViewModelMapper(),
  ];

  final RootView rootView;

  ZamBmiCalculatorUserInterface(
    EventBus eventBus,
  )   : rootView = RootView(eventBus),
        super(eventBus);

  @override
  Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    super.initialize();
  }

  @override
  run() async {
    runApp(rootView);
  }

  @override
  dispose() async {}
}
