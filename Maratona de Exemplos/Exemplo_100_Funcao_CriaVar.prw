/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/16/criando-variaveis-conforme-definicoes-do-dicionario-usando-a-criavar-maratona-advpl-e-tl-100/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe100
Cria uma vari�vel conforme as parametriza��es do dicion�rio de dados
@type Function
@author Atilio
@since 11/12/2022
@obs 
    Fun��o CriaVar
    Par�metros
        + Nome do campo
        + Se dever� ser considerado o inic. padr�o do campo
        + Indica se deve adicionar espacos a esquerda (L); direita (R); ou centralizado (C)
        + Cria como vari�vel p�blica na mem�ria (somente para campos que sejam virtuais no X3_CONTEXT)
    Retorno
        + Retorna o conte�do do campo a ser colocado na vari�vel

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe100()
    Local aArea     := FWGetArea()
    Local dDtCad
    Local cHrCad

    //Inicializa as vari�veis conforme o conte�do do inic. padr�o dos campos
    dDtCad := CriaVar("A1_DTCAD")
    cHrCad := CriaVar("A1_HRCAD")

    //Mostra uma mensagem
    FWAlertInfo("Data = " + dToC(dDtCad) + " e Hora = " + cHrCad, "Teste CriaVar")

    FWRestArea(aArea)
Return
