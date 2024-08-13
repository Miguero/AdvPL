/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/08/buscando-uma-linha-de-um-conteudo-memo-com-a-memoline-maratona-advpl-e-tl-343/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe342
Aplica um conte�do transformando ele em MD5 (Message Digest Algorithm 5)
@type Function
@author Atilio
@since 22/03/2023
@see https://tdn.totvs.com/display/tec/MD5
@obs 

    Fun��o MD5
    Par�metros
        + cValor     , Caractere     , Indica o conte�do que ser� aplicado o algoritmo
        + nType      , Num�rico      , Indica o tipo de Hash (1=Bin�rio ou 2=Hexadecimal)
    Retorno
        + cRet       , Caractere     , Retorna o hash do conte�do

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe342()
	Local aArea     := FWGetArea()
    Local cNome     := "Daniel"
    Local cHash     := ""

    //Mostra ele em MD5 com o Tipo 1 (bin)
    cHash := MD5(cNome, 1)
    FWAlertInfo(cHash, "Teste 1 da fun��o MD5")

    //Mostra ele em MD5 com o Tipo 2 (hexa)
    cHash := MD5(cNome, 2)
    FWAlertInfo(cHash, "Teste 2 da fun��o MD5")

	FWRestArea(aArea)
Return
