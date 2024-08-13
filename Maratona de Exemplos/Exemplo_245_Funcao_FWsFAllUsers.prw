/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/19/fazendo-um-backup-das-linhas-de-grids-em-mvc-com-fwsaverows-e-fwrestrows-maratona-advpl-e-tl-244/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe245
Fun��o que busca todos os usu�rios cadastrados
@type  Function
@author Atilio
@since 20/02/2023
@see https://tdn.totvs.com/display/public/PROT/FWSFALLUSERS
@obs 
    Fun��o FWsFAllUsers
    Par�metros
        + aUserList   , Array    , Informa a lista de usu�rios
        + aKeyValues  , Array    , Lista com os campos que ser�o retornados
        + Reservado
        + Reservado
        + lBlock      , L�gico   , Retorna informa��o de usu�rios bloqueados
    Retorno
        + aUsers      , Array    , Array com as seguintes posi��es [1] Id da tabela de usu�rios (r_e_c_n_o_) ; [2] Id do usu�rio ; [3] Login do Usu�rio ; [4] Nome do usu�rio ; [5] email do usu�rio ; [6] departamento do usu�rio ; [7] cargo do usu�rio
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe245()
    Local aArea      := FWGetArea()
    Local lAcessa    := .F.
	Local cUsrLogad  := RetCodUsr()
	Local aTodosUsr  := FWSfAllUsers()
	Local nEncontrou := 0
    Local aGrupos    := {}
	Local nGrupoAtu  := 0
    Local aEmpFil    := {}

    //Se for admin, ele tem acesso a empresa e filial
	If FWIsAdmin()
		lAcessa := .T.
	Else
        //Efetua a busca pelo usu�rio logado
		nEncontrou:= aScan(aTodosUsr,{|x| x[2] == cUsrLogad })

        //Se encontrou o usu�rio
		If nEncontrou > 0
            //Busca todos os grupos que o usu�rio tem acesso
			aGrupos := FWSFUsrGrps(cUsrLogad)

            //Percorre os grupos
			For nGrupoAtu := 1 To Len(aGrupos)

                //Busca empresa e filial que o grupo tem acesso
				aEmpFil := FWGrpEmp(aGrupos[nGrupoAtu])

                //Se veio dados
				If Len(aEmpFil) > 0 

                    //Caso seja um arroba ou tiver a empresa e filial logadas, o usu�rio tem acesso
					If "@" $ aEmpFil[1] .Or. aEmpFil[1] == cEmpAnt + cFilAnt
						lAcessa := .T.
                        Exit
					EndIf
				EndIf
			Next
		endif
	EndIf

    If lAcessa
        FWAlertSuccess("Usu�rio possui acesso!", "Teste FWSfAllUsers")
    EndIf

    FWRestArea(aArea)
Return
