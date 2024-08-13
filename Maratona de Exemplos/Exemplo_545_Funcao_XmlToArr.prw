/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/18/transformando-um-conteudo-xml-em-objeto-com-xmlparser-e-xmlparserfile-maratona-advpl-e-tl-544/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe545
Converte um n� para uma vari�vel Array separado da estrutura (diferente da XmlNode2Arr)
@type Function
@author Atilio
@since 07/04/2023
@obs 
    Fun��o XmlToArr
    Par�metros
        N� do objeto XML instanciado
    Retorno
        Retorna um Array conforme as informa��es contidas dentro do N�

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe545()
    Local aArea      := FWGetArea()
    Local cXML       := ""
    Local oXML
    Local cAviso     := ""
    Local cErro      := ""
    Local aDados     := {}

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

        //Realiza a convers�o inteira para um Array
        aDados := XmlToArr(oXML:_detalhes:_gostaDeLer)

        //Se houver informa��es, mostra mensagem
        If Len(aDados) > 0
            FWAlertSuccess("Objeto convertido para Array!", "Teste XmlToArr")
        EndIf

    EndIf

    FWRestArea(aArea)
Return
