class EnviarEmail {
  // nome call é obrigatorio
  bool call(String email) {
    print('Chamado método call');
    return enviar(email);
  }

  bool enviar(String email) {
    print('Chamado método enviar');
    return true;
  }
}
