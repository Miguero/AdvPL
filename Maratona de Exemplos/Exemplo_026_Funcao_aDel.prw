/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/03/funcao-adel-para-eliminar-elementos-de-um-array-maratona-advpl-e-tl-026/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe026
Exemplo de fun��o para deletar um elemento do array
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.totvs.com/pages/releaseview.action?pageId=23889096
@obs Fun��o aDel
    Par�metros
        + Array que ter� o elemento deletado
        + Posi��o num�rica que ser� deletada do array

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe026()
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
