class Filme {
  const Filme({required this.nome, required this.classificacao, required this.duracao, required this.sinopse, required this.genero, required this.imagemURI, required this.horarios});
    final String nome;
    final String classificacao;
    final String duracao;
    final String sinopse;
    final String genero;
    final String imagemURI;
    final List<String> horarios;
}
