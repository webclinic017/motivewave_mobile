
import 'package:flutter_bloc/flutter_bloc.dart';

class Observable<T> extends Cubit<T>
{
  Observable(T val) : super(val);

  void update(T? val)
  {
    if (val == null || val == state) return; // filter out null values
    emit(val);
  }
}

class ObservableNull<T> extends Cubit<T?>
{
  ObservableNull(T? val) : super(val);

  void update(T? val)
  {
    if (val == state) return;
    emit(val);
  }
}

