part of 'color_bloc.dart';

@immutable
sealed class ColorEvent {}

class InitialEvent extends ColorEvent {
  InitialEvent();
}

class ToAmber extends ColorEvent {
  ToAmber();
}

class ToLightBlue extends ColorEvent {
  ToLightBlue();
}
