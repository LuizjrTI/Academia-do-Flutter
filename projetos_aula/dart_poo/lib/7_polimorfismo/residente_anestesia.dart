import 'package:dart_poo/7_polimorfismo/anestesista.dart';

class ResidenteAnestesia extends Anesteista {
  @override
  void operar() {
    super.operar();
    //
    print("Limpar");
  }
}
