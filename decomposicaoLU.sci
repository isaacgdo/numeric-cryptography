function [L,U] = decomposicaoLU (Matriz)
    //pegando o tamanho(dimensões) da Matriz de coeficientes
    [l,c] = size(Matriz);      
    //Matriz Lower(L) recebendo a função que gera a Matriz identidade     
    L = eye(l,c);   
    //Matriz Upper(U) recebendo os valores da matriz passada p/ a função                
    U = Matriz;                     
    for i = 1:l-1
        //Definindo o pivô em cada iteração da matriz
        pivo = U(i,i);
        for j = i+1:c
            //definindo o fator que zera os elementos abaixo dos pivôs
            fator = U(j,i)/pivo;
            //preenchendo os valores das matrizes L e U com iterações
            L(j,i) = fator;
            U(j,:) =  U(j,:) - fator*U(i,:);
        end
    end
endfunction
