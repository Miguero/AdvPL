/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/19/enviando-um-post-atraves-da-httppost-maratona-advpl-e-tl-302/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe302
Aciona uma requisi��o POST para uma p�gina da internet
@type  Function
@author Atilio
@since 22/02/2023
@see https://tdn.totvs.com/display/tec/HttpPost
@obs 

    Fun��o HttpPost
    Par�metros
        + cUrl       , Caractere    , Indica a URL que ser� feito o POST
        + cGetParms  , Caractere    , Indica os par�metros que ser�o passados na requisi��o GET
        + cPostParms , Caractere    , Indica os par�metros que ser�o passados na requisi��o POST
        + nTimeOut   , Num�rico     , Indica um n�mero de segundos para timeout
        + aHeadStr   , Array        , Indica um array com os headers da requisi��o
        + cHeaderGet , Caractere    , Busca o retorno dos headers da requisi��o (passar por refer�ncia com @)
    Retorno
        + cRet       , Caractere    , Retorna uma string que corresponde a solicita��o

    Obs.: Exemplo original em https://terminaldeinformacao.com/2020/08/06/exemplo-de-integracao-com-viacep-usando-fwrest/

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe302()
    Local aArea         := FWGetArea()
    Local cResult       := ''
    Local cCep          := '17054679'

    //Aciona a requisi��o via HttpPost
    cResult := HttpPost(;
        "https://viacep.com.br/ws/" + cCep + "/json/",; // cURL
        ,; // cGetParms
        ,; // nTimeOut
        ,; // aHeadStr
        ;  // cHeaderGet
    )
 
    //Exibe o resultado que veio do WS
    ShowLog(cResult)

    FWRestArea(aArea)
Return
