enum UserRegisterEmail {
  title('Vamos começar!'),
  subtitle('Qual é o seu e-mail?');

  final String value;

  const UserRegisterEmail(this.value);
}

enum UserRegisterPassword {
  title('Agora...'),
  subtitle('Crie uma senha!');

  final String value;
  const UserRegisterPassword(this.value);
}

enum UserRegisterName {
  title('Pra finalizar'),
  subtitle('Qual é o seu nome?');

  final String value;
  const UserRegisterName(this.value);
}
