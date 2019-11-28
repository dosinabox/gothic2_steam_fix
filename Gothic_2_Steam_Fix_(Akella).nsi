###################################
##      ������������ ������      ##
###################################

Unicode true

!include "MUI.nsh"
!include "FileFunc.nsh"
!include "GothicFixesCommon.nsh"

###################################
##            ��������           ##
###################################

!define MOD_NAME "Gothic 2 Steam Fix"
!define MOD_VERSION "11.2019"
!define MOD_DETAILED_VERSION "19.11.26.0"
!define MOD_AUTHOR "D36"

Name "${MOD_NAME}"
OutFile "Gothic_2_Steam_Fix_(Akella)_${MOD_VERSION}.exe"

VIProductVersion "${MOD_DETAILED_VERSION}"
VIAddVersionKey "FileVersion" "${MOD_DETAILED_VERSION}"
VIAddVersionKey "LegalCopyright" "� ${MOD_AUTHOR}"
VIAddVersionKey "FileDescription" "���������� ${MOD_NAME}"
VIAddVersionKey "ProductVersion" "${MOD_VERSION}"

###################################
##      ��������� ����������     ##
###################################

!define MUI_ICON "Gothic2_Steam_Fix.ico"
!define MUI_HEADERIMAGE
!define MUI_HEADERIMAGE_BITMAP "logo.bmp"
!define MUI_WELCOMEFINISHPAGE_BITMAP "pic.bmp"

Caption "${MOD_NAME} (������)"
!define MUI_TEXT_WELCOME_INFO_TITLE "$\t   $\n$\t${MOD_NAME}"
!define MUI_TEXT_WELCOME_INFO_TEXT "������ ������� ����������� ������������ ��� ��������� �� ������ Steam-������ Gothic II: Gold Edition ��� ������ ������ � �����."

!define MUI_TEXT_DIRECTORY_SUBTITLE " "
DirText $DirectoryText

!define MUI_TEXT_COMPONENTS_TITLE "����� ����������� ��� ���������"
!define MUI_TEXT_COMPONENTS_SUBTITLE " "
!define MUI_COMPONENTSPAGE_TEXT_TOP "�������� ���������� ${MOD_NAME}, ������� �� ������ ����������.$\n������� ������ \
'����������' ��� �����������."
!define MUI_COMPONENTSPAGE_TEXT_COMPLIST "���������� ��� ���������:"
!define MUI_COMPONENTSPAGE_SMALLDESC

!define MUI_TEXT_INSTALLING_TITLE "����������� ������ � ���������..."
!define MUI_TEXT_INSTALLING_SUBTITLE " "

!define MUI_TEXT_FINISH_INFO_TITLE "$\t   $\n$\t��������� ���������!"
!define MUI_TEXT_FINISH_INFO_TEXT "������ ���� ����� ��������� �� Steam. ��������� �������������� ���������� ��� ������ �� ��������� � �� �������������.\
$\n$\n�������� ����!"

BrandingText " "

###################################
##     ��������  ������������    ##
###################################

!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

###################################
##             �����             ##
###################################

!insertmacro MUI_LANGUAGE "Russian"

###################################
##          �����������          ##
###################################

Section "�������� ����� � ����������" SecMain
	SectionIn RO

	!insertmacro GMF_Delete "$INSTDIR\delsaves.exe"
	!insertmacro GMF_Delete "$INSTDIR\g2addon-2.6_readme.htm"
	!insertmacro GMF_Delete "$INSTDIR\Readme.txt"
	!insertmacro GMF_Delete "$INSTDIR\Readme_UK.txt"
	!insertmacro GMF_Delete "$INSTDIR\site.url"
	!insertmacro GMF_Delete "$INSTDIR\VDFS.dmp"
	!insertmacro GMF_Delete "$INSTDIR\Data\Breitbild_Patch.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\MENU_AutoScale_G2.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\FONT_High_Resolution.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\FONT_High_Resolution_1.1.0.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\FONT_High_Resolution_2.0.2.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\FONT_High_Resolution_2.0.3.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\FONT_High_Resolution_2.1.0.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\FONT_High_Resolution_2.2.0.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\FONT_High_Resolution_2.2.1.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\FONT_High_Resolution_3_0_1_Cyrillic.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\FONT_High_Resolution_3_0_1_Latin.vdf"
	!insertmacro GMF_Delete "$INSTDIR\System\dmband.dll"
	!insertmacro GMF_Delete "$INSTDIR\System\dmcompos.dll"
	!insertmacro GMF_Delete "$INSTDIR\System\dmime.dll"
	!insertmacro GMF_Delete "$INSTDIR\System\dmloader.dll"
	!insertmacro GMF_Delete "$INSTDIR\System\dmstyle.dll"
	!insertmacro GMF_Delete "$INSTDIR\System\dmsynth.dll"
	!insertmacro GMF_Delete "$INSTDIR\System\dmusic.dll"
	!insertmacro GMF_Delete "$INSTDIR\System\MssDS3D.m3d.exe"
	!insertmacro GMF_Delete "$INSTDIR\System\D3dim700.dll"
	!insertmacro GMF_Delete "$INSTDIR\System\D3DImm.dll"
	!insertmacro GMF_Delete "$INSTDIR\System\Vdfs32e.dll"
	!insertmacro GMF_Delete "$INSTDIR\System\Vdfs32e.exe"
	!insertmacro GMF_Delete "$INSTDIR\System\Vdfs32g.exe"
	!insertmacro GMF_Delete "$INSTDIR\System\KillHelp.exe"
	!insertmacro GMF_Delete "$INSTDIR\System\ar.exe"
	!insertmacro GMF_Delete "$INSTDIR\System\AntTweakBar.dll"
	!insertmacro GMF_Delete "$INSTDIR\System\Assimp32.dll"
	!insertmacro GMF_Delete "$INSTDIR\System\d3dcompiler_47.dll"
	!insertmacro GMF_Delete "$INSTDIR\System\ddraw.dll"
	!insertmacro GMF_Delete "$INSTDIR\System\GFSDK_SSAO.win32.dll"

	CreateDirectory "$INSTDIR\Data\ModVDF"
	CreateDirectory "$INSTDIR\Saves\current"

	SetOutPath "$INSTDIR"
	File "VDFS.cfg"
	File "SystemPack - �����.url"

	SetOutPath "$INSTDIR\_work\data\Music\NewWorld"
	File "Xardas Tower.sty"
	File "XT_DayStd.sgt"

	SetOutPath "$INSTDIR\_work\data\Video"
	File "Extro_PAL.bik"
	File "Logo1.bik"

	!insertmacro GMF_Delete "$INSTDIR\_work\data\Video\Logo2.bik"

	SetOutPath "$INSTDIR\Data"
	File "SystemPack.vdf"

	SetOutPath "$INSTDIR\System"
	File "Gothic.ini"
	File "Gothic2.exe"
	File "GothicGame.ini"
	File "GothicGame.rtf"
	File "GothicStarter.exe"
	File "Shw32.dll"
	File "sp.log"
	File "SystemPack.ini"
	File "vdfs32g.dll"
	!insertmacro _ReplaceInFile "Gothic.ini" "1280" "$RESX"
	!insertmacro _ReplaceInFile "Gothic.ini" "1024" "$RESY"

	IfFileExists "$INSTDIR\Data\Speech_English_Patch_Atari.vdf" english_found english_not_found
	english_found:
	Rename $INSTDIR\_work\data\scripts\content\cutscene\ou.dat $INSTDIR\_work\data\scripts\content\cutscene\ou.bin
	!insertmacro GMF_Delete "$INSTDIR\_work\data\scripts\content\cutscene\ou.lsc"
	!insertmacro GMF_Delete "$INSTDIR\_work\data\scripts\_compiled\ouinfo.inf"
	SetOutPath "$INSTDIR\Data"
	File "Textures_Addon_Menu_English.vdf"
	goto end_of_test
	english_not_found:
	end_of_test:

SectionEnd


SectionGroup "����������� �� ������" Group1

Section "����� � ��������" SecAdditional_1

	!insertmacro GMF_Delete "$INSTDIR\Data\Textures_multilingual_Jowood.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\Textures_Addon_Menu_English.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\Textures_Fonts_Apostroph.vdf"
	!insertmacro GMF_Delete "$INSTDIR\_work\data\scripts\_compiled\ouinfo.inf"
	!insertmacro GMF_Delete "$INSTDIR\_work\data\scripts\content\cutscene\ou.dat"
	!insertmacro GMF_Delete "$INSTDIR\_work\data\scripts\content\cutscene\ou.lsc"
	!insertmacro GMF_Delete "$INSTDIR\_work\data\scripts\content\cutscene\ou.csl"
	!insertmacro GMF_Delete "$INSTDIR\_work\data\video\Addon_Title.bik"

	SetOutPath "$INSTDIR\_work\data\scripts\_compiled"
	File "gothic.dat"
	File "menu.dat"

	SetOutPath "$INSTDIR\_work\data\scripts\content\cutscene"
	File "OU.bin"

	SetOutPath "$INSTDIR\Data"
	File "Textures_Russian.vdf"
	File "Fonts_Russian.vdf"

SectionEnd


Section "������� � �����" SecAdditional_2
	
	!insertmacro GMF_Delete "$INSTDIR\Data\Speech_Addon_Patch.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\Speech_English_Patch_Atari.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\Speech_heyou_citygde_engl.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\Speech_Parlan_engl.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\Speech_Wegelagerer_Deutsch.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\Speech2.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\Speech_hotfix.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\Speech_patch.vdf"

	SetOutPath "$INSTDIR\_work\data\Video"
	File "DragonAttack.bik"
	File "Extro_AllesWirdGut.bik"
	File "Extro_Xardas.bik"
	File "Intro.bik"
	File "Intro_Addon.bik"
	File "OrcAttack.bik"

	SetOutPath "$INSTDIR\Data"
	File "Speech1.vdf"
	File "Speech_Addon.vdf"
	File "Speech_Add.vdf"

	SetOutPath "$INSTDIR"
	File "Speech_Changelog.txt"

SectionEnd

SectionGroupEnd


Section "������������� ����������" SecAdditional_3

	IfFileExists "$INSTDIR\Data\Textures_Russian.vdf" fix_russian fix_notrussian
	fix_russian:
	!insertmacro GMF_Delete "$INSTDIR\Data\g2a_nr_scriptpatch_v20_hotfix.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\g2a_nr_scriptpatch_v20_hotfix.mod"
	!insertmacro GMF_Delete "$INSTDIR\Data\g2a_nr_scriptpatch_v21_hotfix.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\g2a_nr_scriptpatch_v21_hotfix.mod"
	!insertmacro GMF_Delete "$INSTDIR\Data\g2a_nr_scriptpatch_v22_hotfix.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\g2a_nr_scriptpatch_v22_hotfix.mod"
	SetOutPath "$INSTDIR\Data"
	File "g2a_nr_scriptpatch.vdf"
	SetOutPath "$INSTDIR\System"
	!insertmacro GMF_File_Rename "GothicGame_fixed.ini" "GothicGame.ini"
	SetOutPath "$INSTDIR"
	File "Changelog_G2a_NR_ScriptPatch_v23.txt"
	goto end_of_russian_fix_test
	fix_notrussian:
	end_of_russian_fix_test:

	IfFileExists "$INSTDIR\Data\Textures_Addon_Menu_English.vdf" fix_english fix_notenglish
	fix_english:
	!insertmacro GMF_Delete "$INSTDIR\Data\g2a_nr_scriptpatch.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\g2a_nr_scriptpatch_v20_hotfix.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\g2a_nr_scriptpatch_v20_hotfix.mod"
	!insertmacro GMF_Delete "$INSTDIR\Data\g2a_nr_scriptpatch_v21_hotfix.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\g2a_nr_scriptpatch_v21_hotfix.mod"
	!insertmacro GMF_Delete "$INSTDIR\Data\g2a_nr_scriptpatch_v22_hotfix.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Data\g2a_nr_scriptpatch_v22_hotfix.mod"
	!insertmacro GMF_Delete "$INSTDIR\Changelog_G2a_NR_ScriptPatch_v23.txt"
	SetOutPath "$INSTDIR\Data"
	File "Unofficial_Patch_EN.vdf"
	SetOutPath "$INSTDIR"
	File "Unofficial_Patch_EN_Readme.txt"
	goto end_of_english_fix_test
	fix_notenglish:
	end_of_english_fix_test:

	IfFileExists "$INSTDIR\Manuel\G2_Short_Manual_FRa.pdf" fix_french fix_notfrench
	fix_french:
	!insertmacro GMF_Delete "$INSTDIR\Data\Unofficial_Patch_EN.vdf"
	!insertmacro GMF_Delete "$INSTDIR\Unofficial_Patch_EN_Readme.txt"
	goto end_of_french_fix_test
	fix_notfrench:
	end_of_french_fix_test:
	
SectionEnd


Section "��������������� �������" SecAdditional_4

	SetOutPath "$INSTDIR\Data"
	File "Textures_Widescreen.vdf"
	
	SetOutPath "$INSTDIR\System"
	!insertmacro _ReplaceInFile "Gothic.ini" "invMaxColumns=5" "invMaxColumns=6"

	IfFileExists "$INSTDIR\Data\Textures_Russian.vdf" russian_found russian_not_found
	russian_found:
	SetOutPath "$INSTDIR\Data"
	File "Textures_Widescreen_Russian.vdf"
	goto end_of_test2
	russian_not_found:
	end_of_test2:

SectionEnd


Section /o "������������� � ����������" SecAdditional_5

	SetOutPath "$APPDATA\dgVoodoo"
	File "dgVoodoo.conf"
	
	SetOutPath "$INSTDIR\System"
	File "D3DImm.dll"
	File "DDraw.dll"
	!insertmacro GMF_File_Rename "Gothic_laptop.ini" "Gothic.ini"
	!insertmacro GMF_File_Rename "SystemPack_laptop.ini" "SystemPack.ini"
	!insertmacro _ReplaceInFile "Gothic.ini" "1366" "$RESX"
	!insertmacro _ReplaceInFile "Gothic.ini" "768" "$RESY"

SectionEnd


###################################
##     �������� �����������      ##
###################################

LangString DESC_SecMain ${LANG_RUSSIAN} "�������� ���������� Gothic 2 Steam Fix (SystemPack, Player Kit, ���� 2.6)."
LangString DESC_Group1 ${LANG_RUSSIAN} "����� ����������� ����������� ����."
LangString DESC_SecAdditional_1 ${LANG_RUSSIAN} "�������� ��� �����, ���� ������ ���������� ������� ����� � �������� �� ������."
LangString DESC_SecAdditional_2 ${LANG_RUSSIAN} "�������� ��� �����, ���� ������ ���������� ������� ������� � ����� �� ������."
LangString DESC_SecAdditional_3 ${LANG_RUSSIAN} "�����������, ������������ �������������� ���� � �����������. ��������� ������ ����� ����!"
LangString DESC_SecAdditional_4 ${LANG_RUSSIAN} "�������� ��� �����, ���� � ������ �� ��������������� ������� (16x9 ��� 16�10)."
LangString DESC_SecAdditional_5 ${LANG_RUSSIAN} "������� � ��������� ��� ������� ���� �� �������� (dgvoodoo � ����������� �������)."

!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
!insertmacro MUI_DESCRIPTION_TEXT ${SecMain} $(DESC_SecMain)
!insertmacro MUI_DESCRIPTION_TEXT ${Group1} $(DESC_Group1)
!insertmacro MUI_DESCRIPTION_TEXT ${SecAdditional_1} $(DESC_SecAdditional_1)
!insertmacro MUI_DESCRIPTION_TEXT ${SecAdditional_2} $(DESC_SecAdditional_2)
!insertmacro MUI_DESCRIPTION_TEXT ${SecAdditional_3} $(DESC_SecAdditional_3)
!insertmacro MUI_DESCRIPTION_TEXT ${SecAdditional_4} $(DESC_SecAdditional_4)
!insertmacro MUI_DESCRIPTION_TEXT ${SecAdditional_5} $(DESC_SecAdditional_5)
!insertmacro MUI_FUNCTION_DESCRIPTION_END

###################################
##            �������            ##
###################################

Function .onInit
	SetSilent normal
	StrCpy $DirectoryText "���������� ������������� Steam-������ Gothic II: Gold Edition. ������� ������ '�����' ��� ����������� ��� '����� ...' ��� ������ ������ �����."
	SetRegView 32
	ReadRegStr $INSTDIR HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 39510" "InstallLocation"
	StrCmp $INSTDIR "" "" InstallPathIsFound
	SetRegView 64
	ReadRegStr $INSTDIR HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 39510" "InstallLocation"
	StrCmp $INSTDIR "" "" InstallPathIsFound
	InstallPathIsFound:
	IfFileExists "$INSTDIR\System\Gothic2.exe" InstallPathIsGood
	StrCpy $INSTDIR "$PROGRAMFILES\Steam\steamapps\common\Gothic II"
	StrCpy $DirectoryText "������� ������ '����� ...' � ������� �����, � ������� ����������� Gothic II: Gold Edition. ��� �������, ��� Steam\steamapps\common\Gothic II. \
$\n$\n����� ������� ������ '�����' ��� �����������."
	InstallPathIsGood:
	System::Call 'user32::GetSystemMetrics(i 0) i .r0'
	System::Call 'user32::GetSystemMetrics(i 1) i .r1'
	StrCpy $RESX $0
	StrCpy $RESY $1
	System::Call kernel32::GetSystemDEPPolicy()i.r3
	StrCmp $3 "error" skipDEP
	IntCmp $3 ${DEP_SYSTEM_POLICY_TYPE_ALWAYSOFF} skipDEP
	IntCmp $3 ${DEP_SYSTEM_POLICY_TYPE_OPTIN} skipDEP
	MessageBox MB_OK|MB_ICONEXCLAMATION "�������� ������� �������������� ���������� ������ Windows (DEP). ��������� � � ������������� ��������� ��� ��������� ������ ��� ������ ����� ����."
	skipDEP:
FunctionEnd

Function .onVerifyInstDir
	IfFileExists "$INSTDIR\System\Gothic2.exe" CheckIsSuccessful
	Abort
	CheckIsSuccessful:
FunctionEnd