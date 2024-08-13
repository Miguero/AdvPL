/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/10/simulando-um-ctrl-c-com-a-funcao-copytoclipboard-maratona-advpl-e-tl-094/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe094
Exemplo de fun��o para colocar uma informa��o no clipboard do sistema operacional
@type Function
@author Atilio
@since 11/12/2022
@see https://tdn.totvs.com/display/tec/CopytoClipboard
@obs 
    Fun��o CopyToClipBoard
    Par�metros
        + cTexto        , Caractere    , Texto que ser� enviado para a �rea de transfer�ncia do S.O.

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe094()
    Local aArea     := FWGetArea()
    Local cTexto    := ""

    //Abre a tabela de produtos, e pega a primeira descri��o
    DbSelectArea("SB1")
    SB1->(DbSetOrder(1)) // Filial + C�digo
    cTexto := Alltrim(SB1->B1_DESC)

    //Coloca esse texto na clipboard
    CopyToClipBoard(cTexto)

    FWRestArea(aArea)
Return
