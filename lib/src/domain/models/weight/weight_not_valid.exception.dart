import '../_.imports.dart';

@immutable
class WeightNotValidException extends NamedException {
  final double weight;

  get problem => 'The given weight value $weight is invalid.';
  get solution => 'Please provide a weight value greater than zero.';
  get severity => ExceptionSeverity.critical;

  const WeightNotValidException(this.weight);
}
