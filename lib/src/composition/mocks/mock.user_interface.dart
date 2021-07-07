import 'package:zam_core/rxdart.dart';
import 'package:zam_event_bus/zam_event_bus.dart';
import 'package:zam_view_models/zam_view_models.dart';

import '../../application/events/_.index.dart';

@immutable
class BmiViewModel extends ViewModel {
  final String weight;
  final String height;
  final String bmi;
  final String bmiCategory;

  BmiViewModel({
    required this.weight,
    required this.height,
    required this.bmi,
    required this.bmiCategory,
  });

  @override
  get props => [weight, height, bmi];
}

class BmiViewModelMapper extends ViewModelMapper<BmiCalculated, BmiViewModel> {
  const BmiViewModelMapper();

  @override
  BmiViewModel execute(BmiCalculated event, EventBus bus) {
    final model = event.data;
    return BmiViewModel(
      weight: model.weight.value.toInt().toString(),
      height: model.height.toString(),
      bmi: model.toString(),
      bmiCategory: model.category.toString(),
    );
  }
}

class MockZamBmiCalculatorUserInterface extends BasicUserInterface {
  @override
  final eventTransformers = [BmiViewModelMapper()];

  final subs = CompositeSubscription();

  MockZamBmiCalculatorUserInterface(EventBus eventBus) : super(eventBus);

  @override
  run() async {
    eventBus.select<BmiViewModel>().listen((viewModel) {
      print('\n  OUTPUT:');
      print('     Weight: ${viewModel.weight}');
      print('     Height: ${viewModel.height}');
      print('     Bmi: ${viewModel.bmi}');
      print('     You are ${viewModel.bmiCategory}');
      print('\n');
    }).addTo(subs);

    await Future.delayed(Duration(milliseconds: 10));
    eventBus.publish(WeightProvided(56));
    await Future.delayed(Duration(milliseconds: 10));
  }

  @override
  dispose() async {
    subs.dispose();
  }
}
