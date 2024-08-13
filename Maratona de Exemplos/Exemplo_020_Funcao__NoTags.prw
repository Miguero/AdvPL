/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/08/28/funcao-_notags-para-remover-caracteres-especiais-em-html-maratona-advpl-e-tl-020/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe020
Exemplo de convers�o de decimal para hexadecimal
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.totvs.com/pages/releaseview.action?pageId=173083053
@obs Fun��o _NoTags
    Par�metros
        + cTexto   , Caractere , Vari�vel de origem que poder� ter conte�do que ser� substitu�do
    Retorno
        + cRetorno , Caractere , Texto formatado, transformando os caracteres especiais

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe020()
    Local aArea        := FWGetArea()
    Local cTextoAnt    := "Empresa & CIA"
    Local cTextoDep

    //Retira caracteres especiais e mostra como ficou a mensagem
    cTextoDep := _NoTags(cTextoAnt)
    FWAlertError("Como ficou: " + cTextoDep, "Exemplo de _NoTags")

    FWRestArea(aArea)
Return
