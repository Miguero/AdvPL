/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/03/buscando-a-extensao-usada-para-banco-local-com-a-getdbextension-maratona-advpl-e-tl-270/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe270
Retorna o nome da extens�o de arquivos (caso use arquivos locais como os antigos dtc ou dbf)
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/display/tec/GetDBExtension
@obs 

    Fun��o GetDBExtension
    Par�metros
        N�o tem par�metros
    Retorno
        + cRet           , Caractere        , Retorna a extens�o dos arquivos
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe270()
    Local aArea      := FWGetArea()
    Local cMensagem  := ""

    //Busca a informa��o e exibe
    cMensagem := "A extens�o de arquivos usadas �: " + GetDBExtension()
    FWAlertInfo(cMensagem, "Teste GetDBExtension")

    FWRestArea(aArea)
Return
