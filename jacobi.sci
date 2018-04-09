//MÉTODO DE JACOBI

//A = matriz de coeficientes do sistema linear
//b = vetor de termos independentes do sistema
//xo = solução inicial, pois se trata de um método iterativo
//e = erro de aceitação estipulado
//n = número máximo de iterações que algoritmo deve realizar
//iter = número de iterações realizadas para a convergência do sistema
//x = vetor de soluções do sistema
//xa = x anterior, vetor de soluções atualizado a cada iteração

function [x,iter] = jacobi(A,b,xo,e,n)
    //pegando o tamanho da matriz
    [l,c] = size(A);
    //inicializando o erro, solução inicial e iterações realizadas 
    erro = 1;
    x = xo;
    iter = 0;
    //repetição do método enquanto o erro estipulado não é satisfeito
    while erro > e & iter < n
        xa = x;
        //percorrendo as linhas e isolando as incógnitas
        for i = 1:l
            soma = 0;
            for j = 1:l
                if j ~= i
                    //utilizando o valor inicial da solução (xa) 
                    //para calular os elementos de x
                    soma = soma + A(i,j)*xa(j);
                end
            end
            //cálculo das incógnitas
            x(i) = (b(i) - soma) / A(i,i);
        end
        iter = iter + 1;
        //atualizando o valor do erro a cada iteração
        erro = max(abs(x-xa)) / max(abs(x));
    end
endfunction
