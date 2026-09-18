function [saida] = LogDistance()
  DadosLog = load("LogDistance.txt");
  D = DadosLog(1);
  DInicial = DadosLog(2);
  n = DadosLog(3);

  if (length(DadosLog) == 4)
    Pr0 = DadosLog(4);
  else
    Pr0 = FriisPadrao(DInicial);
    fprintf("valor D0 é: %E", DInicial);
    fprintf("valor Pr0 é: %E", Pr0);
  endif

  d = 1:20;
  Pr = 0;

  PrValor = Pr0 * ((DInicial / D)^n);

  texto = sprintf("Resultado para o modelo de LogDistance: %E", PrValor);

  for i = 1:20
    Pr(i) = Pr0 * ((DInicial / d(i))^n);
  endfor

  mensagem = uicontrol( ...
    "style", "text", ...
    "string", texto, ...
    'ForegroundColor', [1 1 1],
    'BackgroundColor', [34 36 42]/255,
    "position", [240 315 400 50]);

  figure("Name", "Modelo de log distance")

  saida = plot(d, Pr);

 endfunction
