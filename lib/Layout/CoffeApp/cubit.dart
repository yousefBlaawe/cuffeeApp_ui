import 'package:bloc/bloc.dart';
import 'package:cuffeeappuitow/Layout/CoffeApp/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CubitCoffeeScreen extends Cubit<StateCoffeeScreen>
{
  CubitCoffeeScreen():super(initalSate());
  static CubitCoffeeScreen get (context)
  {
    return BlocProvider.of(context);
  }


}