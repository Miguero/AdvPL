/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/08/manipulando-registros-com-axinclui-axaltera-axdeleta-e-axvisual-maratona-advpl-e-tl-061/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe061
Exemplo de fun��o de tela de cadastro (o indicado � usar MVC, mas esse exemplo � apenas para demonstrar)
@author Atilio
@since 06/12/2022
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6814985 , https://tdn.totvs.com/pages/releaseview.action?pageId=23889132 , https://tdn.totvs.com/pages/releaseview.action?pageId=23889138 e https://tdn.totvs.com/pages/releaseview.action?pageId=23889145
@type function
@obs 
    Fun��o AxInclui
    Par�metros
        + cAlias      , Caractere       , Alias da tabela
        + nReg        , Num�rico        , N�mero do registro posicionado (RecNo) sendo o padr�o 0 pois � uma inclus�o
        + nOpc        , Num�rico        , N�mero da op��o sendo o padr�o 3 de Inclus�o
        + aAcho       , Array           , Array com nome dos campos que ser�o exibidos
        + cFunc       , Caractere       , Fun��o que ser� executada antes de abrir a tela
        + aCpos       , Array           , Array com nome dos campos que poder�o ser editados
        + cTudoOk     , Caractere       , Fun��o que ser� executada ao clicar no bot�o confirmar
        + lF3         , L�gico          , Indica se a tela foi criada a partir de uma consulta padr�o
        + cTransact   , Caractere       , Fun��o que ser� executada dentro da transa��o
        + aButtons    , Array           , Bot�es que ser�o adicionados no Outras A��es dentro da tela de edi��o
        + aParam      , Array           , Fun��es que ser�o executadas sendo: [1] = Antes de Exibir a tela; [2] = Ao clicar no Confirmar (TudoOk); [3] = Ap�s o confirmar dentro da transa��o; [4] = Ap�s o confirmar fora da transa��o
        + aAuto       , Array           , Indica os campos em uma execuca��o autom�tica
        + lVirtual    , L�gico          , Se .T. ir� usar vari�veis de mem�ria (com RegToMemory: M->); sen�o ir� usar os pr�prios campos
        + lMaximized  , L�gico          , Se .T. a janela vir� maximizada, sen�o ela vir� com o tamanho um pouco menor
        + cTela       , Caractere       , Nome da vari�vel que ser� utilizada no lugar da aTela
        + lPanelFin   , L�gico          , Se for .T. cria o painel do gestor financeiro
        + oFather     , Objeto          , Quando usado o lPanelFin cria um dialog dentro do objeto indicado
        + aDim        , Array           , Quando usado o lPanelFin indica as dimens�es da dialog que ser� criada
        + uArea       , Indefinido      , Quando usado o lPanelFin esse par�metro ser� usado dentro das fun��es do gestor financeiro
    Retorno
        + nOpca       , Num�rico        , Retorna 1 se o usu�rio clicou em Confirmar ou 2 se foi em Cancelar ou 3 se houve alguma falha ao acionar a tela

    Fun��o AxAltera
    Par�metros
        + cAlias      , Caractere       , Alias da tabela
        + nReg        , Num�rico        , N�mero do registro posicionado (RecNo)
        + nOpc        , Num�rico        , N�mero da op��o sendo o padr�o 4 de Altera��o
        + aAcho       , Array           , Array com nome dos campos que ser�o exibidos
        + aCpos       , Array           , Array com nome dos campos que poder�o ser editados
        + nColMens    , Num�rico        , Par�metro n�o usado (apenas compatibilidade)
        + cMensagem   , Caractere       , Par�metro n�o usado (apenas compatibilidade)
        + cTudoOk     , Caractere       , Fun��o que ser� executada ao clicar no bot�o confirmar
        + cTransact   , Caractere       , Fun��o que ser� executada dentro da transa��o
        + aButtons    , Array           , Bot�es que ser�o adicionados no Outras A��es dentro da tela de edi��o
        + aParam      , Array           , Fun��es que ser�o executadas sendo: [1] = Antes de Exibir a tela; [2] = Ao clicar no Confirmar (TudoOk); [3] = Ap�s o confirmar dentro da transa��o; [4] = Ap�s o confirmar fora da transa��o
        + aAuto       , Array           , Indica os campos em uma execuca��o autom�tica
        + lVirtual    , L�gico          , Se .T. ir� usar vari�veis de mem�ria (com RegToMemory: M->); sen�o ir� usar os pr�prios campos
        + lMaximized  , L�gico          , Se .T. a janela vir� maximizada, sen�o ela vir� com o tamanho um pouco menor
    Retorno
        + nOpca       , Num�rico        , Retorna 1 se o usu�rio clicou em Confirmar ou 2 se foi em Cancelar ou 3 se houve alguma falha ao acionar a tela

    Fun��o AxDeleta
    Par�metros
        + cAlias      , Caractere       , Alias da tabela
        + nReg        , Num�rico        , N�mero do registro posicionado (RecNo)
        + nOpc        , Num�rico        , N�mero da op��o sendo o padr�o 5 de Exclus�o
        + cTransact   , Caractere       , Fun��o que ser� executada dentro da transa��o
        + aCpos       , Array           , Array com nome dos campos que ser�o exibidos
        + aButtons    , Array           , Bot�es que ser�o adicionados no Outras A��es dentro da tela de edi��o
        + aParam      , Array           , Fun��es que ser�o executadas sendo: [1] = Antes de Exibir a tela; [2] = Ao clicar no Confirmar (TudoOk); [3] = Ap�s o confirmar dentro da transa��o; [4] = Ap�s o confirmar fora da transa��o
        + aAuto       , Array           , Indica os campos em uma execuca��o autom�tica
        + lMaximized  , L�gico          , Se .T. a janela vir� maximizada, sen�o ela vir� com o tamanho um pouco menor
    Retorno
        + nOpca       , Num�rico        , Retorna 1 se o usu�rio clicou em Confirmar ou 2 se foi em Cancelar ou 3 se houve alguma falha ao acionar a tela

    Fun��o AxVisual
    Par�metros
        + cAlias      , Caractere       , Alias da tabela
        + nReg        , Num�rico        , N�mero do registro posicionado (RecNo)
        + nOpc        , Num�rico        , N�mero da op��o sendo o padr�o 2 de Visualiza��o
        + aAcho       , Array           , Array com nome dos campos que ser�o exibidos
        + nColMens    , Num�rico        , Par�metro n�o usado (apenas compatibilidade)
        + cMensagem   , Caractere       , Par�metro n�o usado (apenas compatibilidade)
        + cFunc       , Caractere       , Fun��o que ir� carregar os campos
        + aButtons    , Array           , Bot�es que ser�o adicionados no Outras A��es dentro da tela de edi��o
        + lMaximized  , L�gico          , Se .T. a janela vir� maximizada, sen�o ela vir� com o tamanho um pouco menor
    Retorno
        + nOpca       , Num�rico        , Retorna 1 se o usu�rio clicou em Confirmar ou 2 se foi em Cancelar ou 3 se houve alguma falha ao acionar a tela
/*/

User Function zExe061()
	Local aArea   := FWGetArea()
	Local oBrowse
	Private aRotina := {}
	Private cCadastro := "Grupo de Produtos"

    DbSelectArea('SBM')
    SBM->(DbSetOrder(1)) //BM_FILIAL + BM_GRUPO

	//Definicao do menu
	aRotina := MenuDef()

	//Instanciando o browse
	oBrowse := FWMBrowse():New()
	oBrowse:SetAlias("SBM")
	oBrowse:SetDescription(cCadastro)
	oBrowse:DisableDetails()

	//Ativa a Browse
	oBrowse:Activate()

	FWRestArea(aArea)
Return Nil

/*/{Protheus.doc} MenuDef
Menu de opcoes na funcao zExe061
@author Atilio
@since 06/12/2022
@version 1.0
@type function
@obs Codigo gerado automaticamente pelo Autumn Code Maker
@see http://autumncodemaker.com
/*/

Static Function MenuDef()
	Local aRotina := {}

	//Adicionando opcoes do menu
	aAdd(aRotina, {"Pesquisar", "AXPESQUI", 0, 1})
	aAdd(aRotina, {"Visualizar", "AXVISUAL", 0, 2})
	aAdd(aRotina, {"Incluir", "AXINCLUI", 0, 3})
	aAdd(aRotina, {"Alterar", "AXALTERA", 0, 4})
	aAdd(aRotina, {"Excluir", "AXDELETA", 0, 5})
	aAdd(aRotina, {"Visualizar (manual)", "U_Z061VIS", 0, 2})
	aAdd(aRotina, {"Incluir (manual)", "U_Z061INC", 0, 3})
	aAdd(aRotina, {"Alterar (manual)", "U_Z061ALT", 0, 4})
	aAdd(aRotina, {"Excluir (manual)", "U_Z061EXC", 0, 5})

Return aRotina


/*/{Protheus.doc} Z061VIS
Visualizar (manual)
@author Atilio
@since 06/12/2022
@version 1.0
@type function
@obs Codigo gerado automaticamente pelo Autumn Code Maker
@see http://autumncodemaker.com
/*/

User Function Z061VIS()
	Local aArea       := FWGetArea()
    Local aAreaBM     := SBM->(FWGetArea())
    Local nOpcao      := 0
    Private cCadastro := "Teste de Visualiza��o"
    
    //Chama a fun��o
    nOpcao := AxVisual('SBM', SBM->(RecNo()), 2)
    If nOpcao == 1
        FWAlertInfo("Grupo visualizado: " + SBM->BM_GRUPO, "Exemplo AxVisual")
    EndIf
    
    FWRestArea(aAreaBM)
	FWRestArea(aArea)
Return


/*/{Protheus.doc} Z061INC
Incluir (manual)
@author Atilio
@since 06/12/2022
@version 1.0
@type function
@obs Codigo gerado automaticamente pelo Autumn Code Maker
@see http://autumncodemaker.com
/*/

User Function Z061INC()
    Local aArea       := FWGetArea()
    Local aAreaBM     := SBM->(FWGetArea())
    Local nOpcao      := 0
    Private cCadastro := "Teste de Inclus�o"
    
    //Chama a fun��o
    nOpcao := AxInclui('SBM', 0, 3)
    If nOpcao == 1
        FWAlertInfo("Grupo incluido: " + SBM->BM_GRUPO, "Exemplo AxInclui")
    EndIf
    
    FWRestArea(aAreaBM)
	FWRestArea(aArea)
Return


/*/{Protheus.doc} Z061ALT
Alterar (manual)
@author Atilio
@since 06/12/2022
@version 1.0
@type function
@obs Codigo gerado automaticamente pelo Autumn Code Maker
@see http://autumncodemaker.com
/*/

User Function Z061ALT()
	Local aArea       := FWGetArea()
    Local aAreaBM     := SBM->(FWGetArea())
    Local nOpcao      := 0
    Private cCadastro := "Teste de Altera��o"
    
    //Chama a fun��o
    nOpcao := AxAltera('SBM', SBM->(RecNo()), 4)
    If nOpcao == 1
        FWAlertInfo("Grupo alterado: " + SBM->BM_GRUPO, "Exemplo AxAltera")
    EndIf
    
    FWRestArea(aAreaBM)
	FWRestArea(aArea)
Return


/*/{Protheus.doc} Z061EXC
Excluir (manual)
@author Atilio
@since 06/12/2022
@version 1.0
@type function
@obs Codigo gerado automaticamente pelo Autumn Code Maker
@see http://autumncodemaker.com
/*/

User Function Z061EXC()
	Local aArea       := FWGetArea()
    Local aAreaBM     := SBM->(FWGetArea())
    Local nOpcao      := 0
    Private cCadastro := "Teste de Exclus�o"
    
    //Chama a fun��o
    nOpcao := AxDeleta('SBM', SBM->(RecNo()), 5)
    If nOpcao == 1
        FWAlertInfo("Grupo alterado: " + SBM->BM_GRUPO, "Exemplo AxDeleta")
    EndIf
    
    FWRestArea(aAreaBM)
	FWRestArea(aArea)
Return
