// MÉTODO DE GAUSS (DECOMPOSIÇÃO DE GAUSS)

//Matriz = Matriz dos coeficientes do sistema linear
//b = vetor solução do sistema linear
//MA = Matriz Aumentada triangular na qual o sistema foi transformado
//x = vetor solução do sistema


function [x, MA] = gauss(Matriz, b)
    //pegando o tamanho(dimensões) da Matriz
    [l,c] = size(Matriz);
    //atribuindo a variável a matriz aumentada com o vetor b
    MA = [Matriz b];
    //percorrendo da 1ª até a penúltima linha p/ fazer o pivotamento
    for i = 1:l-1
        //fazendo o pivotamento dos valores 
        pivo = MA(i,i);
        for j = i+1:c
            fator = MA(j,i) / pivo;
            MA(j,:) = MA(j,:) - fator*MA(i,:);
        end
    end
    //executando a resolução retroativa
    x = resolucaoRetroativa(MA(:,1:c), MA(:,c+1));
endfunction
