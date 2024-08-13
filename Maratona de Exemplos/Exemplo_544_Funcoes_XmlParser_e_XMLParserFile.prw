/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/18/extraindo-uma-informacao-de-um-xml-em-um-array-com-xmltoarr-maratona-advpl-e-tl-545/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe544
Converte uma estrutura em string ou arquivo XML para um objeto
@type Function
@author Atilio
@since 07/04/2023
@see https://tdn.totvs.com/display/tec/XmlParser e https://tdn.totvs.com/display/tec/XmlParserFile
@obs 
    Fun��o XmlParser
    Par�metros
        + cXML       , Caractere  , Indica a string que cont�m o texto em XML
        + cReplace   , Caractere  , Indica o prefixo que ser� utilizado para cada tag encontrada
        + cError     , Caractere  , Caso ocorra erros na convers�o essa vari�vel receber� os detalhes
        + cWarning   , Caractere  , Caso ocorra avisos na convers�o essa vari�vel receber� os detalhes
    Retorno
        + oXML       , Objeto     , Objeto com a estrutura de acordo com o XML informado

    Fun��o XmlParserFile
    Par�metros
        + cFile      , Caractere  , Nome do arquivo que cont�m as informa��es do XML
        + cReplace   , Caractere  , Indica o prefixo que ser� utilizado para cada tag encontrada
        + cError     , Caractere  , Caso ocorra erros na convers�o essa vari�vel receber� os detalhes
        + cWarning   , Caractere  , Caso ocorra avisos na convers�o essa vari�vel receber� os detalhes
    Retorno
        + oXML       , Objeto     , Objeto com a estrutura de acordo com o XML informado

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe544()
    Local aArea      := FWGetArea()

    //Exemplo usando XMLParser
    fExemplo()

    //Exemplo usando XMLParserFile
    fExemploArq()

    FWRestArea(aArea)
Return

Static Function fExemplo()
    Local aArea      := FWGetArea()
    Local cXML       := ""
    Local oXML
    Local cAviso     := ""
    Local cErro      := ""

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

        //Realizando a procura de um atributo com AttIsMemberOf
        If AttIsMemberOf(oDetalhes, "_idade")
            FWAlertInfo("O atributo 'idade' foi encontrado no objeto, sendo: " + oDetalhes:_idade:TEXT, "Exemplo de XmlParser")
        EndIf

    EndIf

    FWRestArea(aArea)
Return

Static Function fExemploArq()
    Local aArea      := FWGetArea()
    Local cArquivo   := "\x_temp\teste.xml"
    Local oXML
    Local cAviso     := ""
    Local cErro      := ""

    //Transformando o XML (texto) em um objeto (s� funciona se o arquivo estiver dentro da Protheus Data)
    oXML := XmlParserFile(cArquivo, "_", @cAviso, @cErro)

    //Se houve alguma falha
    If ! Empty(cErro)
        FWAlertError("Houve um erro na convers�o do texto para objeto: " + cErro, "Falha no 'parse' do XML")
    Else

        //Pega a "subtag" de detalhes
        oDetalhes := oXML:_detalhes

        //Realizando a procura de um atributo com AttIsMemberOf
        If AttIsMemberOf(oDetalhes, "_idade")
            FWAlertInfo("O atributo 'idade' foi encontrado no objeto, sendo: " + oDetalhes:_idade:TEXT, "Exemplo de XmlParserFile")
        EndIf

    EndIf

    FWRestArea(aArea)
Return
