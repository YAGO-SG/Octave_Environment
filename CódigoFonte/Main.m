f = figure("Name", "Simulador", "Position", [1, 1, 900, 500], "Color", [34 36 42]/255);

set(f, 'position', [100, 150, 900, 500]);

mensagem = uicontrol( ...
    "style", "text", ...
    "string", "Digite o modelo para o cálculo", ...
    'ForegroundColor', [1 1 1],
    'BackgroundColor', [34 36 42]/255,
    "position", [50 450 200 30]);


botao = uicontrol('Parent', f, ...
                  'Style', 'pushbutton',
                  'String', 'Friis',
                  'ForegroundColor', [1 1 1],
                  'BackgroundColor', [54 56 64]/255,
                  'Position', [80, 400, 140, 40],
                  "Callback", @(src,event) Friis());


botao = uicontrol('Parent', f, ...
                  'Style', 'pushbutton',
                  'String', 'Log-distance',
                  'ForegroundColor', [1 1 1],
                  'BackgroundColor', [54 56 64]/255,
                  'Position', [80, 320, 140, 40],
                  'Callback', @(src,event) LogDistance());

botao = uicontrol('Parent', f, ...
                  'Style', 'pushbutton',
                  'String', 'Perda de potência',
                  'ForegroundColor', [1 1 1],
                  'BackgroundColor', [54 56 64]/255,
                  'Position', [80, 240, 140, 40],
                  'Callback', @(src,event) PerdaPotencia());


botao = uicontrol('Parent', f, ...
                  'Style', 'pushbutton',
                  'String', 'Encerrar Programa',
                  'ForegroundColor', [1 1 1],
                  'BackgroundColor', [54 56 64]/255,
                  'Position', [80, 80, 140, 40],
                  "callback", @(src,event) close(f));
