/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/26/formatando-datas-com-fsdateconv-maratona-advpl-e-tl-196/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe197
Fun��o que retorna o tipo de pessoa se � fisica ou juridica do Cliente ou Fornecedor
@type Function
@author Atilio
@since 11/02/2023
@obs 
    Fun��o FTipPessoa
    Par�metros
        + Tipo que deseja validar 2=Clientes ; 1=Fornecedores
        + C�digo e Loja de pesquisa na tabela de cliente ou fornecedor dependendo do cTipo
    Retorno
        + Retorna o tipo de pessoa se � f�sica ou jur�dica

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe197()
    Local aArea     := FWGetArea()
    Local cTipo     := "2"
    Local cChave    := "C0000101" //A1_COD + A1_LOJA
    Local cRetorno  := ""

    //Montando uma mensagem que ser� exibida
    cRetorno := FTipPessoa(cTipo, cChave)
    FWAlertInfo("O tipo de pessoa �: " + cRetorno, "Teste FTipPessoa")

    FWRestArea(aArea)
Return
