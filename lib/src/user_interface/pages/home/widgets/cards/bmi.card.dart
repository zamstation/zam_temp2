import '../../../_widget.imports.dart';

class BmiCard extends StatelessWidget {
  static const _constraints = BoxConstraints(
    minWidth: 300,
    maxWidth: 600,
  );

  final VoidCallback onClick;
  final Widget bmiTextWidget;
  final Widget bmiCategoryTextWidget;

  const BmiCard({
    required this.onClick,
    required this.bmiTextWidget,
    required this.bmiCategoryTextWidget,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(16),
        ),
        constraints: _constraints,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bmiTextWidget,
            SizedBox(height: 8),
            bmiCategoryTextWidget,
          ],
        ),
      ),
    );
  }
}
