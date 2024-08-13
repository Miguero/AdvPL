/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/11/descobrindo-o-separador-atraves-da-whatsepare-maratona-advpl-e-tl-531/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe531
Fun��o que busca qual � o separador usado em uma string (, ou / ou \ ou | ou * ou # ou ;)
@type Function
@author Atilio
@since 07/04/2023
@obs 

    Fun��o WhatSepare
    Par�metros
        Recebe o texto a ser analisado
    Retorno
        Retorna qual o caractere encontrado como separador no texto

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe531()
    Local aArea      := FWGetArea()
    Local cTexto     := ""
    Local cSeparador := ""

    //Define o texto
    cTexto := "Daniel;Atilio;Terminal de Informa��o;"
    cSeparador := WhatSepare(cTexto)

    //Exibe o resultado
    FWAlertInfo("Para o texto '" + cTexto + "' o separador encontrado foi '" + cSeparador + "'", "Teste WhatSepare")

    FWRestArea(aArea)
Return
