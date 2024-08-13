/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/16/buscando-informacoes-de-um-combo-com-x3cbox-tksx3box-e-x3cboxtoarray-maratona-advpl-e-tl-540/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe541
Retorna a descri��o de uma op��o selecionada do combo
@type Function
@author Atilio
@since 07/04/2023
@obs 

    Fun��o X3Combo
    Par�metros
        Nome do Campo
        Op��o selecionado do Combo
    Retorno
        Retorna a descri��o do combo conforme a op��o selecionada

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe541()
    Local aArea      := FWGetArea()
    Local cCampo     := ""
    Local cOpcao     := ""
    Local cDescricao := ""

    //Define o campo, a op��o e busca a descri��o do combo
    cCampo := "A1_PESSOA"
    cOpcao := "F"
    cDescricao := X3Combo(cCampo, cOpcao)

    //Exibe o resultado
    FWAlertInfo("O resultado � '" + cDescricao + "'", "Teste X3Combo")

    FWRestArea(aArea)
Return
