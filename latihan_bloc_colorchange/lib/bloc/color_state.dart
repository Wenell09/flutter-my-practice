// ignore_for_file: must_be_immutable

part of 'color_bloc.dart';

@immutable
sealed class ColorState {}

final class ColorInitial extends ColorState {}

class ColorUpdateState extends ColorState {
  bool? initialState;

  ColorUpdateState({
    this.initialState,
  });
}
