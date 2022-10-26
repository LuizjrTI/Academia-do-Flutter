void main(List<String> args) {
  var nomeCompleto = 'Luiz';
  print(nomeCompleto);
  nomeCompleto = 'luiz jr';
  print(nomeCompleto);

  // Variaveis Finais
  // Não podem ser alteradas depois de inicializadas (Imutáveis)
  // São definidas no programa em tempo de execução(RunTime)
  // utilize sem moderação
  final nomeCompletoFinal = "teste final";
  final nomeCompletoFinal2 = nomeCompleto;

  //const
  // Não podem ser alteradas depois de inicializadas (Imutáveis)
  // São definidas no programa em tempo de compilação!!!
  // Não podem receber valores de outras váriaveis a não ser que essas variaves forem const tambem
  // utilize sem moderação
  const nomeCompletoConst = "teste const";
  //const nomeCompletoConst2 = nomeCompleto;
}
