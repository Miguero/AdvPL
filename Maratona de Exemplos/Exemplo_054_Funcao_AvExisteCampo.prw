/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/01/validando-se-campos-existem-no-dicionario-com-a-funcao-avexistecampo-maratona-advpl-e-tl-054/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe054
Exemplo de fun��o que verifica se campos existem no dicion�rio
@type Function
@author Atilio
@since 05/12/2022
@obs 
    Fun��o AvExisteCampo 
    Par�metros
        + Array com o nome dos campos a serem verificados
    Retorno
        + Retorna .T. se encontrou todos os campos ou .F. se algum campo n�o existe na base

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe054()
    Local aArea            := FWGetArea()
    Local aCampos          := {}
    
    //Adiciona os campos que ser�o verificados
    aAdd(aCampos, "B1_COD")
    aAdd(aCampos, "B1_DESC")
    aAdd(aCampos, "B1_GRUPO")
    aAdd(aCampos, "B1_X_TST")

    //Faz a valida��o se os campos existem
    If AvExisteCampo(aCampos)
        FWAlertSuccess("Todos os campos existem na base", "Sucesso")
    Else
        FWAlertError("Existe(m) campo(s) n�o encontrado(s) na base!", "Falha")
    EndIf

    FWRestArea(aArea)
Return
