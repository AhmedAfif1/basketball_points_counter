import 'package:basketball_points_counter/cubit/counter_cubit.dart';
import 'package:basketball_points_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  int teamA = 0;
  int teamB = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, State) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text(
              'Points Counter',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Team A', style: TextStyle(fontSize: 34)),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamApoints}',
                        style: TextStyle(fontSize: 120),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).temaAIncreamnt(tem: 'A', buttenNumber: 1);
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).temaAIncreamnt(tem: 'A', buttenNumber: 2);
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).temaAIncreamnt(tem: 'A', buttenNumber: 3);
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 300, child: VerticalDivider(width: 45)),
                  Column(
                    children: [
                      Text('Team B', style: TextStyle(fontSize: 34)),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamBpoints}',
                        style: TextStyle(fontSize: 120),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).temaAIncreamnt(tem: 'B', buttenNumber: 1);
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).temaAIncreamnt(tem: 'B', buttenNumber: 2);
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).temaAIncreamnt(tem: 'B', buttenNumber: 3);
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).reset();
                },
                child: Text('Reset', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        );
      },

      listener: (context, State) {
        if (State is CounterAIncreamntState) {
          teamA = BlocProvider.of<CounterCubit>(context).teamApoints;
        } else {
          teamB = BlocProvider.of<CounterCubit>(context).teamBpoints;
        }
      },
    );
  }
}
