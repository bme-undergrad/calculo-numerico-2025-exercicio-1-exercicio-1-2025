function t = exercicio1(func,x0)

% nao alterar: inicio
es = 1;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

function t = exercicio1(func, x0)

  % nao alterar: inicio
  es = 1;       % erro relativo máximo (%)
  imax = 20;    % iterações máximas
  % nao alterar: fim

  % Segundo chute necessário para a secante
  x1 = x0 * 1.1;

  % Implementação do método da secante
  for i = 1:imax
    f0 = func(x0);
    f1 = func(x1);

    % evitar divisão por zero
    if abs(f1 - f0) < 1e-12
      t = x1;
      return
    end

    % passo da secante
    x2 = x1 - f1 * (x1 - x0) / (f1 - f0);

    % erro relativo
    ea = abs((x2 - x1) / x2) * 100;

    % checagem de convergência
    if ea < es
      t = x2;
      return
    end

    % avança
    x0 = x1;
    x1 = x2;
  endfor

  % se não convergir em 20 iterações, retorna último valor
  t = x2;

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
