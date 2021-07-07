import '_.imports.dart';

@immutable
class BmiInputProvided implements UseCaseEvent {
  final int weight;
  final int height;

  const BmiInputProvided(this.weight, this.height);
}
