/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/08/buscando-as-funcoes-em-memoria-getprograms-maratona-advpl-e-tl-281/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe280
Classe para criar uma tabela tempor�ria (enquanto a thread estiver aberta a tabela ficar� dispon�vel no SQL)
@type  Function
@author Atilio
@since 21/02/2023
@see https://centraldeatendimento.totvs.com/hc/pt-br/articles/360052238313-Cross-Segmentos-TOTVS-Backoffice-Linha-Protheus-ADVPL-Onde-%C3%A9-feito-o-controle-sequencial-da-fun%C3%A7%C3%A3o-GetNextAlias
@obs 
    
    Fun��o GetNextAlias
    Par�metros
        Fun��o n�o tem par�metros
    Retorno
        Retorna o c�digo do pr�ximo alias dispon�vel

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe280()
    Local aArea      := FWGetArea()
    Local oTempTable
    Local aFields    := {}
    Local cAliasTmp  := GetNextAlias()
    
    //Cria a tempor�ria
    oTempTable := FWTemporaryTable():New(cAliasTmp)
    
    //Adiciona no array das colunas as que ser�o incluidas (Nome do Campo, Tipo do Campo, Tamanho, Decimais)
    aAdd(aFields, {"CODIGO",  "C",  6, 0})
    aAdd(aFields, {"NOME",    "C", 50, 0})
    aAdd(aFields, {"VALOR",   "N",  8, 2})
    aAdd(aFields, {"EMISSAO", "D",  8, 0})
    
    //Define as colunas usadas
    oTempTable:SetFields( aFields )
    
    //Cria �ndice com colunas setadas anteriormente
    oTempTable:AddIndex("1", {"CODIGO", "NOME"} )
    
    //Efetua a cria��o da tabela
    oTempTable:Create()

    //Exibe o alias da tabela
    FWAlertInfo("O alias da tabela � " + cAliasTmp, "Teste GetNextAlias")

    //Exclui a tempor�ria
    oTempTable:Delete()

    FWRestArea(aArea)
Return
