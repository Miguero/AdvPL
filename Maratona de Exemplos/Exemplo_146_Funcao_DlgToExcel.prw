/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/01/buscando-o-numero-do-dia-com-dow-maratona-advpl-e-tl-147/
*/


//Bibliotecas
#Include "TOTVS.ch"
#Include "TopConn.ch"

/*/{Protheus.doc} User Function zExe146
Fun��o que gera um arquivo do Excel (csv) atrav�s de informa��es vindas por par�metros
@type Function
@author Atilio
@since 16/12/2022
@see https://tdn.totvs.com/pages/releaseview.action?pageId=39682606
@obs 
    Fun��o DlgToExcel
    Par�metros
        + aExport     , Array       , Dados que ser�o exportados separados em 1 = Tipo; 2 = T�tulo; 3 = Cabe�alho dos Campos; 4 = Dados
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe146()
    Local aArea      := FWGetArea()
    Local aCabec     := {}
    Local aDados     := {}
    Local aCampos    := {}
    Local aHeader    := {}
    Local aCols      := {}
    Local cQryAux    := ""
    
    //Exemplo #1 - Exporta um Array
    aCabec := {"Nome", "Data Nascimento", "Cidade"}
    
    aAdd(aDados, {"Daniel", sToD("19930712"), "Bauru"})
    aAdd(aDados, {"Joao",   sToD("19910131"), "Agudos"})
    aAdd(aDados, {"Maria",  sToD("19921231"), "Piratininga"})

    DlgToExcel({ {"ARRAY", "Exportacao de dados de um Array", aCabec, aDados} })



    //Exemplo #2 - Exportar uma tabela
    aCampos := {}
    aAdd(aCampos, {"Grupo",     "BM_GRUPO"})
    aAdd(aCampos, {"Descricao", "BM_DESC"})

    DlgToExcel({ {"TABELA", "Exportacao de dados de uma Tabela", aCampos, "SBM"} })



    //Exemplo #3 - Exporta um GetDados (grid com aHeader e aCols)

    //             T�tulo               Campo        M�scara         Tamanho                   Decimal     Valid    Usado  Tipo F3     Combo
    aAdd(aHeader, {"C�digo",            "B1_COD",    "",             TamSX3("B1_COD")[01],     0,          ".T.",   ".T.", "C", "",    ""} )
    aAdd(aHeader, {"Descri��o",         "B1_DESC",   "",             TamSX3("B1_DESC")[01],    0,          ".T.",   ".T.", "C", "",    ""} )
    aAdd(aHeader, {"Tipo",              "B1_TIPO",   "",             TamSX3("B1_TIPO")[01],    0,          ".T.",   ".T.", "C", "",    ""} )
    aAdd(aHeader, {"Unidade Medida",    "B1_UM",     "",             TamSX3("B1_UM")[01],      0,          ".T.",   ".T.", "C", "",    ""} )

    //Busca os produtos
    cQryAux := " SELECT B1_COD, B1_DESC, B1_TIPO, B1_UM "+ CRLF
    cQryAux += " FROM " + RetSQLName("SB1") + " SB1 "+ CRLF
    cQryAux += " WHERE B1_FILIAL = '" + FWxFilial("SB1") + "' AND B1_MSBLQL != '1' AND SB1.D_E_L_E_T_ = ' ' "+ CRLF
    TCQuery cQryAux New Alias "QRY_AUX"

    //Percorre os dados e adiciona nos arrays
    While ! QRY_AUX->(EoF())
        aAdd(aCols, {;
            QRY_AUX->B1_COD,;  // Produto
            QRY_AUX->B1_DESC,; // Descri��o
            QRY_AUX->B1_TIPO,; // Tipo
            QRY_AUX->B1_UM,;   // Unid. Med.
            .F.;               // Linha Excluida?
        })

        QRY_AUX->(DbSkip())
    EndDo
    QRY_AUX->(DbCloseArea())

    DlgToExcel({ {"GETDADOS", "Exportacao de dados de uma Grid", aHeader, aCols} })

    FWRestArea(aArea)
Return
