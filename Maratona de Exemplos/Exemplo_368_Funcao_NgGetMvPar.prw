/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/21/buscando-o-conteudo-de-um-parametro-de-uma-filial-com-a-nggetmvpar-maratona-advpl-e-tl-368/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe368
Busca o conte�do de um par�metro em uma empresa e filial espec�fica
@type Function
@author Atilio
@since 27/03/2023
@obs 

    Fun��o NgGetMvPar
    Par�metros
        Numero da Empresa (o mesmo que cEmpAnt)
        Numero da Filial (o mesmo que cFilAnt)
        Nome do parametro a ser pesquisado
        Valor default caso n�o encontre o par�metro
    Retorno
        Retorna o conte�do do par�metro

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe368()
    Local aArea     := FWGetArea()
    Local cConteudo := ""

    //Busca o par�metro na empresa 99 e filial 01
    cConteudo := NGGetMvPar("99", "01", "MV_X_PARAM", "CONTEUDO DEFAULT")

    //Exibe em uma mensagem
    FWAlertInfo("O conte�do do par�metro � '" + cConteudo + "'", "Teste NGGetMvPar")
 
    FWRestArea(aArea)
Return
