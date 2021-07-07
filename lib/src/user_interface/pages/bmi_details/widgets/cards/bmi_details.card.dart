import '../../../_widget.imports.dart';

class BmiDetailsCard extends StatelessWidget {
  static const _constraints = BoxConstraints(
    minWidth: 360,
    maxWidth: 600,
  );

  final VoidCallback onClick;
  final Widget bmiTextWidget;
  final Widget bmiCategoryTextWidget;
  final Widget idealWeightTextWidget;
  final Widget bmiTitleTextWidget;

  const BmiDetailsCard({
    required this.onClick,
    required this.bmiTextWidget,
    required this.bmiCategoryTextWidget,
    required this.idealWeightTextWidget,
    required this.bmiTitleTextWidget,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Card(
        child: Container(
          padding: EdgeInsets.all(20),
          constraints: _constraints,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bmiTitleTextWidget,
                SizedBox(height: 20),
                bmiTextWidget,
                SizedBox(height: 6),
                bmiCategoryTextWidget,
                SizedBox(height: 40),
                Container(
                  // decoration: BoxDecoration(
                  //   color: Theme.of(context)
                  //       .scaffoldBackgroundColor
                  //       .withOpacity(0.3),
                  //   borderRadius: BorderRadius.circular(8),
                  // ),
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      idealWeightTextWidget,
                      SizedBox(height: 6),
                      Text('Normal BMI: 18.5 - 25.0'),
                      SizedBox(height: 6),
                      Text('Formula used: weight / height²'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
