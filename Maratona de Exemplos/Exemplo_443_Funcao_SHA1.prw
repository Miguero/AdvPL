/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/28/transformando-uma-string-aplicando-sha1-maratona-advpl-e-tl-443/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe443
Aplica um conte�do transformando ele em SHA1 (Secure Hash Algorithm)
@type Function
@author Atilio
@since 31/03/2023
@see https://tdn.totvs.com/display/tec/SHA1
@obs 

    Fun��o SHA1
    Par�metros
        + cContent   , Caractere     , Indica o conte�do que ser� aplicado o algoritmo
        + nRetType   , Num�rico      , Indica o tipo de Hash (1=ASCII ou 2=Hexadecimal)
    Retorno
        + cDigest    , Caractere     , Retorna o hash do conte�do

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe443()
	Local aArea     := FWGetArea()
    Local cNome     := "Daniel"
    Local cHash     := ""

    //Mostra ele em SHA1 com o Tipo 1
    cHash := SHA1(cNome, 1)
    FWAlertInfo(cHash, "Teste 1 da fun��o SHA1")

    //Mostra ele em SHA1 com o Tipo 2
    cHash := SHA1(cNome, 2)
    FWAlertInfo(cHash, "Teste 2 da fun��o SHA1")

	FWRestArea(aArea)
Return
