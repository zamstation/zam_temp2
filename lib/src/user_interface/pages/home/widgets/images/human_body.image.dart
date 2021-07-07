import '../../../_widget.imports.dart';

class HumanBodyImage extends StatelessWidget {
  final double width;
  final double height;

  const HumanBodyImage({
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Image.asset(
          ImageTokens.humanBody,
        ),
      ),
    );
  }
}
