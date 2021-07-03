
import 'package:flutter_bloc/flutter_bloc.dart';

class Observable<T> extends Cubit<T?>
{
  Observable() : super(null);

  void update(T? val)
  {
    // filter out null values
    if (val != null) emit(val);
  }
}