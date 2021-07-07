import '_.imports.dart';

@immutable
class BmiCalculateFailed extends UseCaseFailedEvent {
  const BmiCalculateFailed(Exception exception) : super(exception);
}
