String? nomeCompleto;

void main(List<String> args) {
  // Null Aware operator
  // var nomeCompletoLocal = nomeCompleto ?? 'Nome não preenchido';
  // IF convencional
  if (nomeCompleto != null) {
    print(nomeCompleto!.toUpperCase());
  }
  // Conditional Property Access
  print(nomeCompleto?.toUpperCase() ?? 'Nome não preenchido');
}
