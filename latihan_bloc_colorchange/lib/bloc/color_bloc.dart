import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'color_event.dart';
part 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  bool initState = true;
  ColorBloc() : super(ColorInitial()) {
    on<ColorEvent>((event, emit) {
      //Implement an event handler
    });
    on<InitialEvent>((event, emit) {
      //  implement event handler
      emit(ColorUpdateState(initialState: initState));
    });
    on<ToAmber>((event, emit) {
      //implement event handler
      initState = true;
      emit(ColorUpdateState(initialState: initState));
    });
    on<ToLightBlue>((event, emit) {
      initState = false;
      emit(ColorUpdateState(initialState: initState));
    });
  }
}
