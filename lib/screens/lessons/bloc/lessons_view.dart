import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'math_cubit.dart';

class MathView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: BlocBuilder<MathCubit, String>(
          builder: (context, state) {
            return Text('$state',
                style: TextStyle(fontSize: 20.00, color: Colors.black));
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: Icon(Icons.add),
            onPressed: () => context.bloc<MathCubit>().nextPieceOfText(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            child: Icon(Icons.remove),
            onPressed: () => context.bloc<MathCubit>().previousPieceOfText(),
          ),
        ],
      ),
    );
  }
}
