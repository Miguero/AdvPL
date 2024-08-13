/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/05/alterando-parametros-com-as-funcoes-putmv-e-putmvfil-maratona-advpl-e-tl-396/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe396
Altera o conte�do de um par�metro da SX6
@type Function
@author Atilio
@since 28/03/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=24347029
@obs 

    Fun��o PutMV
    Par�metros
        Nome do par�metro na SX6
        Novo conte�do que ser� atribu�do
    Retorno
        Retorna .T. se conseguiu atualizar ou .F. se n�o

    Fun��o PutMVFil
    Par�metros
        Nome do par�metro na SX6
        Novo conte�do que ser� atribu�do
        C�digo da filial em que ser� atribu�do o par�metro
    Retorno
        Retorna .T. se conseguiu atualizar ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe396()
    Local aArea     := FWGetArea()
    
    //Altera o conte�do de um par�metro
    PutMV("MV_ACENTO", "S")

    //Altera o conte�do de um par�metro em uma determinada filial
    PutMVFil("MV_ULTDEPR", Date(), "01")

    FWRestArea(aArea)
Return
