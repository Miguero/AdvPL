/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/13/buscando-o-conteudo-de-uma-tag-xml-atraves-da-wsadvvalue-maratona-advpl-e-tl-534/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe534
Busca o conte�do de uma tag em um objeto XML
@type Function
@author Atilio
@since 04/04/2023
@see https://tdn.totvs.com/display/public/framework/WSAdvValue
@obs 
    Fun��o WSAdvValue
    Par�metros
        + oXml        , Objeto     , Nome do objeto instanciado
        + cObjCpoInfo , Caractere  , Nome da tag a ser pesquisada
        + cType       , Caractere  , Tipo do dado no XML
        + xDefault    , Indefinido , Valor default quando n�o encontrar no XML
        + cNotNILMsg  , Caractere  , Mensagem de erro (caso seja obrigat�rio e n�o venha o valor)
        + lAsArray    , L�gico     , Indica se o retorno ser� do tipo Array
        + cAdvType    , Caractere  , Tipo do dado em AdvPL
        + cAdv2Par    , Caractere  , Vari�vel que ser� preenchida com o valor em AdvPL
        + cRecNS      , Caractere  , Namespace utilizado
        + lRealLong   , L�gico     , Se .T. passar� por uma tratativa no valor caso no XML seja LONG
    Retorno
        + xRet       , Indefinido , Retorna o objeto da tag dentro do XML ou um Array caso possua v�rias "sub-tags"

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe534()
    Local aArea      := FWGetArea()
    Local cXML       := ""
    Local oXML
    Local oDetalhes
    Local cAviso     := ""
    Local cErro      := ""
    Local oNome

    //Monta o XML que ser� convertido em um Objeto
    cXML := '<?xml version="1.0"?>' + CRLF
    cXML += '<detalhes>' + CRLF
    cXML += '  <nome>Atilio</nome>' + CRLF
    cXML += '  <idade>29</idade>' + CRLF
    cXML += '  <gostaDeLer>sim</gostaDeLer>' + CRLF
    cXML += '  <sites>' + CRLF
    cXML += '    <site item="1">' + CRLF
    cXML += '	  <nome>Terminal de Informacao</nome>' + CRLF
    cXML += '	  <url>terminaldeinformacao.com</url>' + CRLF
    cXML += '	</site>' + CRLF
    cXML += '	<site item="2">' + CRLF
    cXML += '	  <nome>Atilio Sistemas</nome>' + CRLF
    cXML += '	  <url>atiliosistemas.com</url>' + CRLF
    cXML += '	</site>' + CRLF
    cXML += '  </sites>' + CRLF
    cXML += '</detalhes>' + CRLF

    //Transformando o XML (texto) em um objeto
    oXML := XmlParser(cXML, "_", @cAviso, @cErro)

    //Se houve alguma falha
    If ! Empty(cErro)
        FWAlertError("Houve um erro na convers�o do texto para objeto: " + cErro, "Falha no 'parse' do XML")
    Else

        //Pega a "subtag" de detalhes
        oDetalhes := oXML:_detalhes

        //Busca o valor de uma tag atrav�s da fun��o
        oNome := WSAdvValue(oDetalhes, "_nome", "string")
        If ValType(oNome) != "U"
            FWAlertInfo("O nome � " + oNome:TEXT, "Teste WSAdvValue")
        EndIf
    EndIf

    FWRestArea(aArea)
Return
