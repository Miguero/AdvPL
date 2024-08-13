/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/18/conversoes-entre-horas-e-minutos-com-htom-e-mtoh-maratona-advpl-e-tl-300/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe301
Aciona uma requisi��o GET para uma p�gina da internet
@type  Function
@author Atilio
@since 22/02/2023
@see https://tdn.totvs.com/display/tec/HTTPGet
@obs 

    Fun��o HttpGet
    Par�metros
        + cUrl       , Caractere    , Indica a URL que ser� feito o GET
        + cGetParms  , Caractere    , Indica os par�metros que ser�o passados na requisi��o
        + nTimeOut   , Num�rico     , Indica um n�mero de segundos para timeout
        + aHeadStr   , Array        , Indica um array com os headers da requisi��o
        + cHeaderGet , Caractere    , Busca o retorno dos headers da requisi��o (passar por refer�ncia com @)
    Retorno
        + cRet       , Caractere    , Retorna uma string que corresponde a solicita��o

    Obs.: Exemplo original em https://terminaldeinformacao.com/2020/08/06/exemplo-de-integracao-com-viacep-usando-fwrest/

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe301()
    Local aArea         := FWGetArea()
    Local cResult       := ''
    Local cCep          := '17054679'

    //Aciona a requisi��o via HttpGet
    cResult := HttpGet(;
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
