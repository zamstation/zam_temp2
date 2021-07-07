import '../_.imports.dart';

@immutable
class HeightNotValidException extends NamedException {
  final double height;

  get problem => 'The given height value $height is invalid.';
  get solution => 'Please provide a height value greater than zero.';
  get severity => ExceptionSeverity.critical;

  const HeightNotValidException(this.height);
}
