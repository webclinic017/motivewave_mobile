
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:motivewave/src/util/util.dart';

class Observable<T> extends Cubit<T>
{
  late T prevValue;
  int lastUpdate=0;
  Observable(T val) : super(val) { prevValue = val; }

  void update(T? val)
  {
    if (val == null || val == state) return; // filter out null values
    prevValue = state;
    lastUpdate = now();
    emit(val);
  }

}

class ObservableNull<T> extends Cubit<T?>
{
  T? prevValue;
  int lastUpdate=0;
  ObservableNull(T? val) : super(val);

  void update(T? val)
  {
    if (val == state) return;
    prevValue = state;
    lastUpdate = now();
    emit(val);
  }
}

