function t = exercicio1(func,func_d,x0)

% nao alterar: inicio
es = 0.01;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

v = zeros(imax,1);     
v(1) = x0;             
erro = zeros(imax,1);  

printf("Iteração | Aproximação     | Erro Relativo\n");
printf("-------------------------------------------\n");

for ii = 1:imax-1
  if ii ~= 1
    erro(ii) = abs((v(ii)-v(ii-1))/v(ii));
    printf("%3d      | %12.6f   | %12.6f\n", ii, v(ii), erro(ii));
    if erro(ii) < es
      break;
    endif
  else
    printf("%3d      | %12.6f   |    -----------\n", ii, v(ii));
  endif
  v(ii+1) = v(ii) - func(v(ii))/func_d(v(ii));
endfor

t = v(ii);   % último valor é a raiz

%%%%%%%%%%%%%%%%%%%%%%%%%%
endfunction

