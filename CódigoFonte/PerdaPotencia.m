function [resultado] = PerdaPotencia()
  DadosPot = load("PerdaPotencia.txt");
  DadosFriss = load("FriisDados.txt");
  D = DadosPot(1);
  Pt = DadosFriss(2);
  PrValor = FriisPadrao(D);

  LValor = (Pt / PrValor);
  LdbValor = (10 * log10(LValor));

  d = 1:20;
  Ldb = zeros(size(d));

  for i = 1:20
    L = Pt / FriisPadrao(d(i));
    Ldb(i) = 10 * log10(L);
  endfor

  texto = sprintf("Resultado para o modelo de Perda de potência: %E", LdbValor);

  mensagem = uicontrol( ...
    "style", "text", ...
    "string", texto, ...
    'ForegroundColor', [1 1 1],
    'BackgroundColor', [34 36 42]/255,
    "position", [240 245 410 50]);

  figure("Name", "Perda de Potência");

  resultado = plot(d,Ldb);

 endfunction
