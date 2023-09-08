// ignore_for_file: must_be_immutable

part of 'counter_bloc.dart';

@immutable
class CounterState {
  int value;

  CounterState(this.value);
}
