/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/28/validando-se-no-xml-existe-com-attismemberof-xmlchildex-e-xmlnodeexist-maratona-advpl-e-tl-051/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe051
Exemplo de fun��o que identifica se um atributo existe em um objeto (AttIsMemberOf) ou uma tag existe dentro do XML (XMLChildEx)
@type Function
@author Atilio
@since 05/12/2022
@see https://tdn.totvs.com/display/tec/AttlsMemberOf e https://tdn.totvs.com/display/tec/XmlChildEx
@obs 
    Fun��o AttIsMemberOf
    Par�metros
        + oObj       , Objeto     , Nome do objeto inst�nciado
        + cAttName   , Caractere  , Nome da propriedade sendo pesquisada
        + lRecursive , L�gico     , Indica se a pesquisa tamb�m ser� feita em classes superiores
    Retorno
        + lRet       , L�gico     , Retorna .T. se encontrou a tag ou .F. se n�o encontrou

    Fun��o XMLChildEx
    Par�metros
        + oParent    , Objeto     , Ojeto inst�nciado
        + cProcura   , Caractere  , Nome da propriedade sendo pesquisada (tudo em mai�sculo)
    Retorno
        + xRet       , Indefinido , Retorna o objeto da tag dentro do XML ou um Array caso possua v�rias "sub-tags"

    Fun��o XmlNodeExist
    Par�metros
        Objeto inst�nciado
        Nome da propriedade sendo pesquisada
    Retorno
        Retorna .T. se encontrou a tag ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe051()
    Local aArea      := FWGetArea()
    Local cXML       := ""
    Local oXML
    Local oDetalhes
    Local cAviso     := ""
    Local cErro      := ""
    Local xResult

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
            FWAlertInfo("O atributo 'idade' foi encontrado no objeto, sendo: " + oDetalhes:_idade:TEXT, "Exemplo de AttIsMemberOf")
        EndIf

        

        //Realizando a procura de tag com XMLChildEx (voc� precisa mandar o nome da tag tudo em mai�sculo)
        xResult := XMLChildEx(oDetalhes, "_GOSTADELER")
        If ValType(xResult) != "U"
            FWAlertInfo("A tag 'gostaDeLer' foi encontrada no objeto, sendo: " + xResult:TEXT, "Exemplo de XMLChildEx")
        EndIf



        //Verificando se a tag existe, independente se escreve tudo min�sculo ou mai�sculo
        If XmlNodeExist(oDetalhes, "_GostaDeLer")
            FWAlertInfo("A tag 'gostaDeLer' foi encontrada no objeto, sendo: " + oDetalhes:_gostaDeLer:TEXT, "Exemplo de XmlNodeExist")
        EndIf
    EndIf

    FWRestArea(aArea)
Return
