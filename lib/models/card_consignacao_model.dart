class CardConsignacaoModel {
  String nomeServico;
  String situacao;
  String valorEmprestimo;
  String valorUsado;

  CardConsignacaoModel({
    required this.nomeServico,
    required this.situacao,
    required this.valorEmprestimo,
    required this.valorUsado,
  });

  factory CardConsignacaoModel.fromJson(Map<String, dynamic> map) {
    return CardConsignacaoModel(
      nomeServico: map['nomeServico'],
      situacao: map['situacao'],
      valorEmprestimo: map['valorEmprestimo'],
      valorUsado: map['valorUsado'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nomeServico': nomeServico,
      'situacao': situacao,
      'valorEmprestimo': valorEmprestimo,
      'valorUsado': valorUsado
    };
  }
}
