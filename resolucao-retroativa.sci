//MÉTODO DE RESOLUÇÃO RETROATIVA

//Matriz = Matriz de coeficientes do sistema linear
//b = vetor de termos independentes do sistema
//x = vetor de soluções do sistema

function x = resolucaoRetroativa (Matriz, b)
     //pegando o tamanho(dimensões) da Matriz
    [l,c] = size(Matriz);
    //inicia a resolução retrotiva a partir da última linha da matriz
    for i = l:-1:1
        soma = 0;
        for j = i+1:c
            soma = soma + Matriz(i,j)*x(j);
        end
        //calculando resultados do vetor solução com base nos valores
        //encontrados a cada iteração
        x(i) = (b(i) - soma) / Matriz(i,i);
    end
endfunction
