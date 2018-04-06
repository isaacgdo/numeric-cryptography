function [L,U] = decomposicaoLU (Matriz)
    [l,c] = size(Matriz);           //pegando o tamanho(dimensões) da Matriz
    L = eye(l,c);                   //Matriz Lower(L) recebendo a função que gera a Matriz identidade
    U = Matriz;                     //Matriz Upper(U) recebendo os valores da matriz passada p/ a função
    for i = 1:l-1
        pivo = U(i,i);
        for j = i+1:c
            fator = U(j,i)/pivo;
            //preenchendo os valores das matrizes L e U com iterações
            L(j,i) = fator;
            U(j,:) =  U(j,:) - fator*U(i,:);
        end
    end
endfunction
