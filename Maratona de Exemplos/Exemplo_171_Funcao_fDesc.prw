/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/13/buscando-informacoes-de-uma-tabela-com-a-funcao-fdesc-maratona-advpl-e-tl-171/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe171
Fun��o para trazer conte�do de campos que existam no dicion�rio
@type Function
@author Atilio
@since 20/12/2022
@obs 
    Fun��o fDesc
    Par�metros
        + Alias da Tabela
        + Chave de pesquisa do registro
        + Campo(s) de Retorno
        + M�ximo de caracteres a retornar
        + Filial base (se n�o for passado ir� considerar xFilial)
        + Qual �ndice da tabela ser� usado na pesquisa
        + Define se ir� posicionar na SX3
    Retorno
        + Retorna o conte�do conforme os parametros informados

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe171()
    Local aArea      := FWGetArea()
    Local cCodProd   := "F0003"
    Local cDesProd   := ""
    Local cCodCli    := "C00002"
    Local cLojCli    := "01"
    Local cDadCli    := ""
    Local cMensagem  := ""
    
    //Busca a descri��o do produto e dados do cliente
    cDesProd := fDesc("SB1", cCodProd, "B1_DESC")
    cDadCli  := fDesc("SA1", cCodCli + cLojCli, "A1_NREDUZ + ';' + A1_TIPO + ';' + A1_NOME")

    //Monta a mensagem e exibe
    cMensagem := "cDesProd: " + cDesProd + CRLF
    cMensagem += "cDadCli: " + cDadCli
    FWAlertInfo(cMensagem, "Teste com fDesc")

    FWRestArea(aArea)
Return
