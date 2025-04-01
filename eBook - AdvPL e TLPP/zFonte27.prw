/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte27
Exemplo de fun��o para deletar um elemento do array
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.totvs.com/pages/releaseview.action?pageId=23889096
/*/

User Function zFonte27()
    Local aArea     := FWGetArea()
    Local aNomes    := {}

    //Adicionando os nomes
    aAdd(aNomes, "Daniel")
    aAdd(aNomes, "Jo�o")
    aAdd(aNomes, "Maria")
    
    //Deleta o elemento da posi��o 2, vai ficar como: ["Daniel", "Maria", Nil]
    aDel(aNomes, 2)

    //Redimensiona o Array, diminuindo uma posi��o que estava como Nil
    aSize(aNomes, Len(aNomes) - 1)

    //Exibe agora o que est� na posi��o 2
    FWAlertInfo("Posi��o 2 � " + aNomes[2], "Exemplo de aDel")

    FWRestArea(aArea)
Return
