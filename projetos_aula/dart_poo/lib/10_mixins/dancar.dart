import 'package:dart_poo/10_mixins/artista.dart';

mixin Dancar on Artista {
  String dancar() {
    return 'Danca forro';
  }

  @override
  String habilidade() {
    return 'Dançarino';
  }
}
