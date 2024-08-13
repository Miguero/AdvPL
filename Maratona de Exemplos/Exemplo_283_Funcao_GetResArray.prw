/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/09/buscando-o-tipo-de-estacao-que-esta-rodando-o-sistema-com-getremotetype-maratona-advpl-e-tl-282/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe283
Busca arquivos contidos dentro do RPO
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/display/tec/GetResArray
@obs 
    
    Fun��o GetResArray
    Par�metros
        + cMask       , Caractere   , Indica a m�scara de pesquisa
        + nRPO        , Caractere   , Indica se quer pesquisar em [1] RPO Padr�o; [2] RPO TLPP; [3] RPO Custom; Ou se n�o for informado nada ser� nos 3
    Retorno
        + aRet        , Array       , Retorna os arquivos encontrados no reposit�rio

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe283()
    Local aArea      := FWGetArea()
    Local aArquivos  := {}
    Local cArqui     := ""
    Local cMensagem  := ""

    //Busca todos os arquivos que sejam do tipo PNG
    aArquivos := GetResArray("*.png")

    //Percorre os fontes incrementando a mensagem
    aEval(aArquivos, {|cArqui| (cMensagem += cArqui + CRLF) } )

    //Exibe uma mensagem com os programas
    ShowLog(cMensagem)

    FWRestArea(aArea)
Return
