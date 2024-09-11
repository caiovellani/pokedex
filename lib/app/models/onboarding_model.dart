class OnboardingContentModel {
  final String image;
  final String title;
  final String description;

  OnboardingContentModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnboardingContentModel> contents = [
  OnboardingContentModel(
    title: 'Todos os Pokémons em um único lugar',
    image: 'assets/images/onboarding1.png',
    description:
        'Acesse uma vasta lista de Pokémons de todas as gerações já feitas pela Nintendo.',
  ),
  OnboardingContentModel(
    title: 'Mantenha sua Pokédex atualizada',
    image: 'assets/images/onboarding2.png',
    description:
        'Cadastre-se e mantenha seu perfil, pokémon favoritos, configurações e muito mais, salvos no aplicativo, mesmo sem conexão com a internet.',
  ),
];
