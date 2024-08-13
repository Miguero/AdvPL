/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/23/convertendo-textos-entre-oem-e-ansi-com-oemtoansi-e-ansitooem-maratona-advpl-e-tl-373/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe373
Realiza a convers�o entre ANSI e OEM (MS-DOS)
@type Function
@author Atilio
@since 28/03/2023
@see https://tdn.totvs.com/display/tec/ANSIToOEM e https://tdn.totvs.com/display/tec/OEMToANSI
@obs 

    Fun��o AnsiToOem
    Par�metros
        + cStringAnsi    , Caractere    , String no formato ANSI
    Retorno
        + cRet           , Caractere    , String no formato OEM/MS-DOS

    Fun��o OemToAnsi
    Par�metros
        + cStringOem     , Caractere    , String no formato OEM/MS-DOS
    Retorno
        + cRet           , Caractere    , String no formato ANSI

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe373()
    Local aArea      := FWGetArea()
    Local cTextoOrig := ""
    Local cTextoNovo := ""

    //Realiza a convers�o de ANSI para OEM
    cTextoOrig := "Jo�o Travess�o"
    cTextoNovo := AnsiToOem(cTextoOrig)
    FWAlertInfo("Texto original '" + cTextoOrig + "' ficou como '" + cTextoNovo + "'", "Teste AnsiToOem")

    //Realiza a convers�o de OEM para ANSI
    cTextoOrig := "Aten��o Aten��o - As belugas est�o chegando"
    cTextoNovo := OemToAnsi(cTextoOrig)
    FWAlertInfo("Texto original '" + cTextoOrig + "' ficou como '" + cTextoNovo + "'", "Teste OemToAnsi")
 
    FWRestArea(aArea)
Return
