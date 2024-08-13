/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/08/validando-se-uma-tabela-existe-no-dicionario-com-a-funcao-existesx2-maratona-advpl-e-tl-160/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe161
Verifica se uma fun��o existe no RPO
@type Function
@author Atilio
@since 19/12/2022
@see https://tdn.totvs.com/display/tec/Findfunction
@obs 
    Fun��o ExistFunc
    Par�metros
        + Nome da fun��o a ser verificada
    Retorno
        + .T. Se a fun��o foi encontrada ou .F. se ela n�o foi encontrada

    Fun��o FindFunction
    Par�metros
        + cFuncao      , Caractere   , Nome da fun��o a ser verificada
    Retorno
        + lRet         , L�gico      , .T. Se a fun��o foi encontrada ou .F. se ela n�o foi encontrada

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe161()
    Local aArea     := FWGetArea()

    //Se a fun��o existir, aciona ela, sen�o mostra mensagem de erro
    If ExistFunc("u_zExe084")
        u_zExe084()
    Else
        FWAlertError("Fun��o n�o encontrada", "Teste ExistFunc")
    EndIf

    //Se a fun��o existir, aciona ela, sen�o mostra mensagem de erro
    If FindFunction("u_zExe084")
        u_zExe084()
    Else
        FWAlertError("Fun��o n�o encontrada", "Teste FindFunction")
    EndIf
    
    FWRestArea(aArea)
Return
