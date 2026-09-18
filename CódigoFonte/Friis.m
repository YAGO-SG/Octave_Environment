function [saida] = Friis()
  Dados = load("FriisDados.txt");
  D = Dados(1);
  Pt = Dados(2);
  Gt = Dados(3);
  Gr = Dados(4);
  Frequencia = Dados(5);
  Lambda = (3 * 10^8)/ Frequencia;
  Atr = 0;

  d = 1:0.1:20;
  Pr = 0;


  PrValor = Pt * Gt * Gr * ((Lambda/(4 * pi * D))^2);

  texto = sprintf("Resultado para o modelo de Friis: %E", PrValor);

  for i = 1:0.1:20
    Atr(i) = (Lambda/(4 * pi * d(i)))^2;
    Pr(i) = Pt * Gt * Gr * Atr(i);
  endfor

  mensagem = uicontrol( ...
    "style", "text", ...
    "string", texto, ...
    'ForegroundColor', [1 1 1],
    'BackgroundColor', [34 36 42]/255,
    "position", [240 395 350 50]);

  figure("Name", "Modelo de Friis");
  plot(d, Pr);

  saida = PrValor;
 endfunction
