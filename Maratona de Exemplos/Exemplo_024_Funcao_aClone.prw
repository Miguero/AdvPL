/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/01/funcao-aclone-para-criar-copia-de-arrays-maratona-advpl-e-tl-024/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe024
Exemplo de fun��o para clonar um Array
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.totvs.com/pages/releaseview.action?pageId=23888837
@obs Fun��o aClone
    Par�metros
        + Array que ser� clonado
    Retorno
        + Conte�do do Array clonado

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe024()
    Local aArea      := FWGetArea()
    Local aDadOrig   := {}
    Local aDadCop1   := {}
    Local aDadCop2   := {}

    //Adicionando conteudos no array original
    aAdd(aDadOrig, "Terminal de Informa��o")
    aAdd(aDadOrig, "Se inscreva no Canal")

    //Agora vou copiar usando o :=
    aDadCop1 := aDadOrig
    
    //E vou copiar usando o aClone
    aDadCop2 := aClone(aDadOrig)

    //Vou editar a primeira posi��o de cada array copiado
    //   notem que ao alterar o aDadCop1 ele atualiza o aDadOrig pois foi usado o :=
    //   ent�o se voc�s forem copiar um array, utilizem o aClone, pois o := ele acaba se tornando como um "ponteiro"
    aDadCop1[1] := "Daniel - " + aDadCop1[1]
    aDadCop2[1] := "Atilio - " + aDadCop2[1]
    FWAlertInfo("aDadOrig[1]: " + aDadOrig[1] + CRLF + "aDadCop1[1]: " + aDadCop1[1] + CRLF + "aDadCop2[1]: " + aDadCop2[1], "Posi��o 1 de cada Array")

    FWRestArea(aArea)
Return
