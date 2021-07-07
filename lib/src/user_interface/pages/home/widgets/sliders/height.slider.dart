import '../../../_widget.imports.dart';
import '../shapes/height_slider_thumb.shape.dart';
import '../shapes/height_slider_track.shape.dart';

class HeightSlider extends StatelessWidget {
  static const _trackWidth = 80.0;
  static const _min = 1;
  static const _max = 200;

  final String label;
  final double value;
  final ParameterizedVoidCallback<double> onChanged;

  const HeightSlider({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _trackWidth,
      child: RotatedBox(
        // Makes the slider vertical.
        quarterTurns: 3,
        child: SliderTheme(
          data: SliderThemeData(
            overlayShape: RoundSliderOverlayShape(overlayRadius: 0),
            // Width is used as height since rotated.
            trackHeight: _trackWidth,
            trackShape: HeightSliderTrackShape(
              min: _min,
              max: _max,
              value: value.toInt(),
              height: _trackWidth,
              textStyle:
                  Theme.of(context).textTheme.headline5?.copyWith(fontSize: 18),
            ),
            thumbShape: HeightSliderThumbShape(
              trackWidth: _trackWidth,
              label: value.toInt().toString(),
              labelStyle: Theme.of(context).textTheme.headline4,
            ),
          ),
          child: Slider(
            onChanged: onChanged,
            value: value,
            min: _min.toDouble(),
            max: _max.toDouble(),
          ),
        ),
      ),
    );
  }
}
