import 'dart:async';

import 'package:flutter/material.dart';

enum ColorEvent { toBlue, toAmber }

class ColorBloc {
  Color _color = Colors.amber;

  final StreamController<ColorEvent> _eventController = StreamController();
  StreamSink<ColorEvent> get eventSink => _eventController.sink;

  final StreamController<Color> _stateController = StreamController();
  StreamSink<Color> get _stateSink => _stateController.sink;
  Stream<Color> get stateStream => _stateController.stream;

  void _mapToEvent(ColorEvent colorEvent) {
    if (colorEvent == ColorEvent.toAmber) {
      _color = Colors.amber;
    } else {
      _color = Colors.blue;
    }
    _stateSink.add(_color);
  }

  ColorBloc() {
    _eventController.stream.listen(_mapToEvent);
  }

  void dispose() {
    _eventController.close();
    _stateController.close();
  }
}
