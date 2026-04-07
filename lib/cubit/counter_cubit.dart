import 'package:basketball_points_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncreamntState());
  int teamApoints = 0;
  int teamBpoints = 0;
  void temaAIncreamnt({required String tem, required int buttenNumber}) {
    if (tem == 'A') {
      teamApoints += buttenNumber;
      emit(CounterAIncreamntState());
    } else {
      teamBpoints += buttenNumber;
      emit(CounterBIncreamntState());
    }
    
  }

  void reset() {
  teamApoints = 0;
  teamBpoints = 0;
  emit(CounterInitialState());
}

}

