

import '../../../modles/coffeeApp_modles/Login_modles.dart';

abstract class stateCoffee {}

class initstate extends stateCoffee{}
class changeobsState extends stateCoffee{}
class loginLodingState extends stateCoffee{}
class loginSucssesState extends stateCoffee{
  final ModleLoginCoffee modle;
  loginSucssesState(this.modle);
}
class loginErrorSate extends stateCoffee{}
class registerScreenState extends stateCoffee{}