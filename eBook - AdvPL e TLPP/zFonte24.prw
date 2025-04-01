/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte24
Exemplo de fun��o para inserir um elemento no array
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.totvs.com/display/tec/AAdd, https://tdn.totvs.com/display/tec/AIns e https://tdn.totvs.com/display/tec/ASize
/*/

User Function zFonte24()
    Local aArea     := FWGetArea()
    Local aNomes    := {}

    //Adicionando os nomes
    aAdd(aNomes, "Daniel")
    aAdd(aNomes, "Jo�o")
    aAdd(aNomes, "Maria")
    
    //Redimensiona o Array, Aumentando uma posi��o, vai ficar como: ["Daniel", "Jo�o", "Maria", Nil]
    aSize(aNomes, Len(aNomes) + 1)

    //Insere o elemento na posi��o 2, vai ficar como: ["Daniel", Nil, "Jo�o", "Maria"]
    aIns(aNomes, 2)

    //Agora altera a posi��o 2
    aNomes[2] := "Jos�"

    //Exibe agora o que est� na posi��o 2
    FWAlertInfo("Posi��o 2 � " + aNomes[2], "Exemplo de aIns")

    FWRestArea(aArea)
Return
