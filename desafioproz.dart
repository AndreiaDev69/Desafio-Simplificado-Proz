void main() {
  Socio cadastroSocio() {
  print('Digite o nome do sócio: ');
  String nome = stdin.readLineSync(encoding: utf8)!;

  String cpf = '';
  do {
    print('Digite o CPF (apenas números): ');
    cpf = stdin.readLineSync(encoding: utf8)!;
    if (!isCnpjValid(cpf)) {
      print('CPF inválido. Tente novamente.');
    }
  } while (cpf.length != 11);
  cpf = formatCpf(cpf);

  print('  Endereço do Sócio: ');
  Endereco endereco = cadastroEndereco();

  return Socio('nome, cpf, endereco');
}

Endereco cadastroEndereco() {
  print('Digite o logradouro: ');
  String logradouro? = stdin.readLineSync(encoding: utf8)!;

  print('Digite o número do endereço: ');
  String numero? = stdin.readLineSync(encoding: utf8)!;

  print('Digite o complemento: ');
  String complemento? = stdin.readLineSync(encoding: utf8)!;

  print('Digite o  bairro: ');
  String bairro ?= stdin.readLineSync(encoding: utf8)!;

  print('Digite o nome do estado: ');
  String estado? = stdin.readLineSync(encoding: utf8)!;

  print('Digite o nome da cidade: ');
  String cidade? = stdin.readLineSync(encoding: utf8)!;

  print('Digite o CEP (somente números): ');
  String cep? = stdin.readLineSync(encoding: utf8)!;

  return Endereco(
    logradouro,
    numero,
    complemento,
    bairro,
    estado,
    cep,
    cidade,
     );
}

  
}