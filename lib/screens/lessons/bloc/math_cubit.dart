import 'package:bloc/bloc.dart';
import '../../../text.dart';

class MathCubit extends Cubit<String> {
  MathCubit() : super('Poehali?');
  int i = 0;
  void nextPieceOfText() => emit(listOne[i += 1]);
  void previousPieceOfText() => emit('dftertertdfg');
}
