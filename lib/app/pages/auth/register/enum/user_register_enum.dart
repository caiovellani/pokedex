enum UserRegisterStep {
  email('Qual é o seu e-mail?'),
  password('Crie uma senha'),
  name('Qual é o seu nome?');

  final String title;
  const UserRegisterStep(this.title);
}
