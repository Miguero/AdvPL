/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/08/funcoes-aliascpo-e-prefixocpo-para-buscar-informacoes-conforme-campo-maratona-advpl-e-tl-031/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe031
Exemplo de fun��o para retornar o nome de uma tabela conforme o campo usando as fun��es AliasCPO e PrefixoCPO
@type Function
@author Atilio
@since 28/11/2022
@obs 
    Fun��o AliasCpo
    Par�metros
        + Nome do Campo que voc� deseja buscar o Alias
    Retorno
        + Retorna o nome do Alias

    Fun��o PrefixoCpo
    Par�metros
        + Nome do Alias que voc� desejar saber o prefixo de campo
    Retorno
        + Retorna o prefixo usado nos campos

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe031()
    Local aArea     := FWGetArea()
    Local cTstAlias := ""
    Local cTstPrefi := ""

    //Busca o Alias conforme nome de um campo
    cTstAlias := AliasCpo("C5_EMISSAO")

    //Busca o Prefixo conforme o nome da tabela
    cTstPrefi := PrefixoCPO("SB1")

    //Mostra o resultado
    FWAlertInfo("cTstAlias � " + cTstAlias + ", cTstPrefi � " + cTstPrefi, "Resultado AliasCPO e PrefixoCPO")

    FWRestArea(aArea)
Return
