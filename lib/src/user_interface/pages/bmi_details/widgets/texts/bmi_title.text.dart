import '../../../_widget.imports.dart';

class BmiTitleText extends StatelessWidget {
  const BmiTitleText();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 7),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text('BODY MASS INDEX'),
    );
  }
}
