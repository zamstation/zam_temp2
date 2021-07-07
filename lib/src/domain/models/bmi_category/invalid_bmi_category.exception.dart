import '../_.imports.dart';

@immutable
class InvalidBmiCategoryException extends NamedException {
  get problem => 'BMIs should fall under at least one of the BMI Categories.';
  get solution => 'This is an internal exception and should be handled.';
  get severity => ExceptionSeverity.critical;

  const InvalidBmiCategoryException();
}
