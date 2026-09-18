function [resultado] = FriisPadrao(d)
  Dados = load("FriisDados.txt");
  D = d;
  Pt = Dados(2);
  Gt = Dados(3);
  Gr = Dados(4);
  Frequencia = Dados(5);
  Lambda = (3 * 10^8)/ Frequencia;

  PrValor = Pt * Gt * Gr * ((Lambda/(4 * pi * D))^2);

  resultado = PrValor

 endfunction
