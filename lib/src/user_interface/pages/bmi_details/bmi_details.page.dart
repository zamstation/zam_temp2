import 'dart:ui';

import '../_widget.imports.dart';
import 'sections/_.index.dart';

class BmiDetailsPage extends StatelessWidget {
  static const route = Pages.bmiDetails;

  const BmiDetailsPage();

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        alignment: Alignment.center.add(Alignment(0, -0.4)),
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: BmiDetailsSection(),
      ),
    );
  }
}
