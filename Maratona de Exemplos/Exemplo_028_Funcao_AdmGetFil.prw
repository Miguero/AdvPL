/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/05/funcao-admgetfil-para-abrir-uma-tela-de-selecao-de-filiais-maratona-advpl-e-tl-028/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe028
Exemplo de fun��o que abre a sele��o de filiais
@type Function
@author Atilio
@since 26/11/2022
@obs Fun��o AdmGetFil
    Par�metros
        + Define se ser� todas as filiais
        + Somente filiais da empresa logada
        + Define se as filiais levar�o em conta o compartilhamento da tabela
        + Somente filiais da unidade de neg�cio logada
        + Define se ir� exibir um help caso nenhuma filial seja selecionada
        + Define se ir� exibir a tela para sele��o
        + Define o tipo de busca das filiais se � tudo compartilhado conforme o par�metro cAlias
    Retorno
        + Array com filiais selecionadas

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe028()
    Local aArea  := FWGetArea()
    Local aSelec := {}

    //Busca as filiais para selecionar
    aSelec := AdmGetFil()

    //Mostra a mensagem
    FWAlertInfo("Quantas filiais selecionadas: " + cValToChar(Len(aSelec)), "Filiais")

    FWRestArea(aArea)
Return
