import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'lessons_view.dart';
import 'math_cubit.dart';

class MathPage extends StatelessWidget {
  const MathPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MathCubit(),
      child: MathView(),
    );
  }
}
