import '../../_library/adaptive_scaffold_body.dart';
import '../_widget.imports.dart';
import 'sections/_.index.dart';

class HomePage extends StatelessWidget {
  static const route = Pages.home;
  static const _maxWidth = 800.0;

  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveScaffoldBody(
        maxWidth: _maxWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BmiSection(),
            Expanded(
              child: Stack(
                children: [
                  HumanBodySection(),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: HeightSection(),
                  ),
                ],
              ),
            ),
            WeightSection(),
          ],
        ),
      ),
    );
  }
}
