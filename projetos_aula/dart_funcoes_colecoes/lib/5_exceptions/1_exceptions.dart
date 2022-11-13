void main(List<String> args) {
  var idade = '38 anos';
  String? nome;

  try {
    var idadeParse = int.parse(idade);
    nome!.toLowerCase();

    if (idadeParse == 38) {
      throw Exception();
    }
  } on FormatException catch (e, s) {
    print(e);
    print(s);
    //Exception especifica
    print('Error ao converter idade');
  } on TypeError catch (e, s) {
    print('Error ao converter idade');
  } on Exception {
    print('idade igaul a 38');
  } catch (error) {
    //Exception geral
    print('Error ao Executar o programa');
  } finally {
    print('finally'); // sempre será usado (mesmo dando certo ou errado);
  }
}
