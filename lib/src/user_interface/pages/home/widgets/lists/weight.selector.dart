import '../../../_widget.imports.dart';
import '../shapes/weight_indicator.shape.dart';

class WeightSelector extends StatelessWidget {
  static const _width = 300.0;
  static const _height = 50.0;
  static const _viewportFraction = 0.4;
  static const _padding = EdgeInsets.fromLTRB(80, 10, 80, 5);

  final int initialIndex;
  final int itemCount;
  final ParameterizedCallback<int, Widget> itemBuilder;
  final ParameterizedVoidCallback<int> onChanged;

  const WeightSelector({
    required this.initialIndex,
    required this.itemCount,
    required this.itemBuilder,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: _width,
            height: _height,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              pageSnapping: false,
              controller: PageController(
                initialPage: initialIndex,
                viewportFraction: _viewportFraction,
              ),
              itemCount: itemCount,
              itemBuilder: (context, index) => itemBuilder(index),
              onPageChanged: onChanged,
            ),
          ),
          WeightIndicator(),
        ],
      ),
    );
  }
}
