<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:fx="#fx-functions" exclude-result-prefixes="msxsl fx">
	<xsl:output method="html" version="4.0" indent="yes" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"/>
	<xsl:template match="//dataroot" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
		<html>
			<head>
				<META HTTP-EQUIV="Content-Type" CONTENT="text/html;charset=UTF-8"/>
				<title>Pedido</title>
				<style type="text/css">
		.Style0 { BORDER-STYLE: none; COLOR: #0e2841; BACKGROUND-COLOR: transparent; BORDER-WIDTH: 1px; BORDER-COLOR: #0e2841; TEXT-ALIGN: left; WRITING-MODE: lr-tb; VISIBILITY: visible; FONT-WEIGHT: 400; FONT-SIZE: 18pt; FONT-FAMILY: Diphylleia; FONT-STYLE: normal; TEXT-DECORATION: none; PADDING-TOP: 0.cm; PADDING-BOTTOM: 0.cm; PADDING-RIGHT: 0.cm; PADDING-LEFT: 0.cm }
	
		.Style1 { BORDER-STYLE: none; BACKGROUND-COLOR: transparent; BORDER-WIDTH: 1px; BORDER-COLOR: #a6a6a6; VISIBILITY: visible }
	
		.Style2 { BORDER-STYLE: solid; COLOR: #404040; BACKGROUND-COLOR: transparent; BORDER-WIDTH: 1px; BORDER-COLOR: #a6a6a6; TEXT-ALIGN: left; WRITING-MODE: lr-tb; VISIBILITY: visible; FONT-WEIGHT: 400; FONT-SIZE: 11pt; FONT-FAMILY: Diphylleia; FONT-STYLE: normal; TEXT-DECORATION: none; PADDING-TOP: 0.038cm; PADDING-BOTTOM: 0.038cm; PADDING-RIGHT: 0.077cm; PADDING-LEFT: 0.077cm }
	
		.Style3 { BORDER-STYLE: none; COLOR: #666666; BACKGROUND-COLOR: transparent; BORDER-WIDTH: 1px; BORDER-COLOR: #7f7f7f; TEXT-ALIGN: left; WRITING-MODE: lr-tb; VISIBILITY: visible; FONT-WEIGHT: 400; FONT-SIZE: 11pt; FONT-FAMILY: Diphylleia; FONT-STYLE: normal; TEXT-DECORATION: none; PADDING-TOP: 0.038cm; PADDING-BOTTOM: 0.038cm; PADDING-RIGHT: 0.077cm; PADDING-LEFT: 0.077cm }
	
		.Style4 { BORDER-STYLE: solid; COLOR: #404040; BACKGROUND-COLOR: transparent; BORDER-WIDTH: 1px; BORDER-COLOR: #a6a6a6; TEXT-ALIGN: left; WRITING-MODE: lr-tb; VISIBILITY: visible; FONT-WEIGHT: 400; FONT-SIZE: 11pt; FONT-FAMILY: Diphylleia; FONT-STYLE: normal; TEXT-DECORATION: none; PADDING-TOP: 0.038cm; PADDING-BOTTOM: 0.038cm; PADDING-RIGHT: 0.077cm; PADDING-LEFT: 0.077cm }
	
		.Style5 { BORDER-STYLE: solid; COLOR: #467886; BACKGROUND-COLOR: transparent; BORDER-WIDTH: 1px; BORDER-COLOR: #a6a6a6; TEXT-ALIGN: left; WRITING-MODE: lr-tb; VISIBILITY: visible; FONT-WEIGHT: 400; FONT-SIZE: 11pt; FONT-FAMILY: Diphylleia; FONT-STYLE: normal; TEXT-DECORATION: underline; PADDING-TOP: 0.038cm; PADDING-BOTTOM: 0.038cm; PADDING-RIGHT: 0.077cm; PADDING-LEFT: 0.077cm }
	
		.Style6 { BORDER-STYLE: solid; BACKGROUND-COLOR: transparent; BORDER-WIDTH: 1px; BORDER-COLOR: #a6a6a6; TEXT-ALIGN: general; VISIBILITY: visible }
	
		.Style7 { BORDER-STYLE: ; COLOR: #404040; BACKGROUND-COLOR: transparent; BORDER-WIDTH: ; BORDER-COLOR: #46b1e1; VISIBILITY: visible; FONT-WEIGHT: 400; FONT-SIZE: 11pt; FONT-FAMILY: Diphylleia; FONT-STYLE: normal; TEXT-DECORATION: none }
	</style>
			</head>
			<body link="#0c0000" vlink="#050000">
				<xsl:variable name="GlobalGroup" select="Cliente"/>
				<!-- Calculate expressions and running sums -->
				<xsl:value-of select="fx:CalculateExpressions_Global($GlobalGroup[1], $GlobalGroup)"/>
				<div style="BORDER-STYLE: none; WIDTH: 11.998cm; BACKGROUND-COLOR: #5b619f; VISIBILITY: visible; HEIGHT: 1.142cm; POSITION: relative">
					<span class="Style0" style="LEFT: 1.841cm; TOP: 0.105cm; WIDTH: 2.031cm; HEIGHT: 0.994cm; OVERFLOW: hidden; POSITION: absolute">Pedido</span>
					<IMG id="Logotipo_automático0" class="Style1" style="LEFT: 0.529cm; TOP: 0.105cm; WIDTH: 1.206cm; HEIGHT: 0.994cm; BACKGROUND-COLOR: silver; POSITION: absolute" SRC="file:///R:\pages\Rudwolf's_WebPages\images\Logotipo_automático0.png"/>
				</div>
				<xsl:for-each select="Cliente">
					<!-- Calculate expressions and running sums -->
					<xsl:value-of select="fx:CalculateExpressions_Detail(., $GlobalGroup)"/>
					<div style="BORDER-STYLE: none; WIDTH: 11.998cm; BACKGROUND-COLOR: #ffffff; VISIBILITY: visible; HEIGHT: 10.878cm; POSITION: relative">
						<span class="Style2" style="LEFT: 5.333cm; TOP: 0.592cm; WIDTH: 5.798cm; HEIGHT: 0.994cm; OVERFLOW: hidden; POSITION: absolute">
							<xsl:value-of select="nombre"/>
						</span>
						<span class="Style3" style="LEFT: 0.592cm; TOP: 0.592cm; WIDTH: 4.62cm; HEIGHT: 0.994cm; OVERFLOW: hidden; POSITION: absolute">Nombre o nickname</span>
						<span class="Style4" style="LEFT: 5.333cm; TOP: 1.925cm; WIDTH: 5.798cm; HEIGHT: 1.777cm; OVERFLOW: hidden; POSITION: absolute">
							<xsl:value-of select="apellidos"/>
						</span>
						<span class="Style3" style="LEFT: 0.592cm; TOP: 1.925cm; WIDTH: 4.62cm; HEIGHT: 1.777cm; OVERFLOW: hidden; POSITION: absolute">Apellidos</span>
						<span class="Style5" style="LEFT: 5.333cm; TOP: 4.042cm; WIDTH: 5.798cm; HEIGHT: 0.634cm; OVERFLOW: hidden; POSITION: absolute">
							<xsl:variable name="HLINK_email" select="string(email)"/>
							<xsl:if test="string-length($HLINK_email) &gt; 0">
								<a>
									<xsl:attribute name="href">
										<xsl:value-of select="fx:HyperlinkPartFromString($HLINK_email, 5)"/>
									</xsl:attribute>
									<xsl:attribute name="title">
										<xsl:value-of select="fx:HyperlinkPartFromString($HLINK_email, 4)"/>
									</xsl:attribute>
									<xsl:value-of select="fx:HyperlinkPartFromString($HLINK_email, 0)"/>
								</a>
							</xsl:if>
						</span>
						<span class="Style3" style="LEFT: 0.592cm; TOP: 4.042cm; WIDTH: 4.62cm; HEIGHT: 0.634cm; OVERFLOW: hidden; POSITION: absolute">Correo electronico</span>
						<span class="Style2" style="LEFT: 5.333cm; TOP: 5.015cm; WIDTH: 5.798cm; HEIGHT: 0.613cm; OVERFLOW: hidden; POSITION: absolute">
							<xsl:value-of select="numero_telefonico"/>
						</span>
						<span class="Style3" style="LEFT: 0.592cm; TOP: 5.015cm; WIDTH: 4.62cm; HEIGHT: 0.613cm; OVERFLOW: hidden; POSITION: absolute">Número telefonico</span>
						<span class="Style4" style="LEFT: 5.333cm; TOP: 5.968cm; WIDTH: 5.798cm; HEIGHT: 1.777cm; OVERFLOW: hidden; POSITION: absolute">
							<xsl:value-of select="pedido"/>
						</span>
						<span class="Style3" style="LEFT: 0.592cm; TOP: 5.968cm; WIDTH: 4.62cm; HEIGHT: 1.777cm; OVERFLOW: hidden; POSITION: absolute">Pedido</span>
						<span class="Style3" style="LEFT: 0.592cm; TOP: 8.084cm; WIDTH: 4.62cm; HEIGHT: 1.523cm; OVERFLOW: hidden; POSITION: absolute">Documento de referencia</span>
					</div>
				</xsl:for-each>
				<!-- Prepare for any expressions in the report or page footer -->
				<xsl:value-of select="fx:PrepExpressions($GlobalGroup[1], $GlobalGroup)"/>
				<div style="BORDER-STYLE: none; WIDTH: 11.998cm; BACKGROUND-COLOR: #ffffff; VISIBILITY: visible; HEIGHT: 0.cm; POSITION: relative"></div>
			</body>
		</html>
	</xsl:template>
	<msxsl:script language="VBScript" implements-prefix="fx" xmlns:msxsl="urn:schemas-microsoft-com:xslt"><![CDATA[							
	Option Explicit
	
	' ********************************************************************************** 
	' **  Functions dynamically generated to evaluate expressions used as a Control Source   
	' ********************************************************************************** 
	
	
	' ********************************************************************************** 
	' **  Functions dynamically generated to evaluate running sums 
	' ********************************************************************************** 
	
		
	' This function will calculate the running sums and expressions for the Detail section
	Function CalculateExpressions_Detail(CurrentNode, GroupNodes)
		PrepExpressions CurrentNode, GroupNodes
		
		
		On Error Resume Next
	
	
		CalculateExpressions_Detail = ""
	End Function
	
		
	' This function will calculate the running sums and expressions for the Global section
	Function CalculateExpressions_Global(CurrentNode, GroupNodes)
		PrepExpressions CurrentNode, GroupNodes
		
		
		On Error Resume Next
	
	
		CalculateExpressions_Global = ""
	End Function
	

	' ********************************************************************************** 
	' **  Functions dynamically generated to be used for sorting and grouping
	' ********************************************************************************** 
	


	' ********************************************************************************** 
	' **  Code staticly copied for expressions to use    
	' ********************************************************************************** 
	
	'variable declaration
	Dim objCurrNode
	Dim objCurrNodeT
	Dim cGroupCount
	Dim objGroupNodes

	Set objGroupNodes = Nothing
	Set objCurrNode = Nothing
	cGroupCount = 0
	
	Function PrepExpressions(CurrentNode, GroupNodes)		
		CacheCurrentNode CurrentNode
		CacheGroupNodes GroupNodes
		PrepExpressions = ""
	End Function
	
	Function CacheCurrentNode(objNodeList)		
		Set objCurrNode = objNodeList.item(0)
		CacheCurrentNode = ""
	End Function
	
	Function CacheGroupNodes(objNodeList)
		Set objGroupNodes = objNodeList
		cGroupCount = objGroupNodes.length
		CacheGroupNodes = ""
	End Function

	Function GroupValue_quarter(strValue)
		GroupValue_quarter = Left(strValue, 4) & DatePart("q", BuildDateFromStr(strValue, False))
	End Function
	
	Function GroupValue_week(strValue)
		GroupValue_week = Left(strValue, 4) & DatePart("ww", BuildDateFromStr(strValue, False))
	End Function
	
	Function GroupValue_interval(nValue, nInterval)
		GroupValue_interval = Int(nValue / nInterval)
	End Function

	Function Page()
		Page = 1
	End Function
	
	Function Pages()
		Pages = 1
	End Function

	Function ToString(varValue)
		On Error Resume Next
		ToString = ""
		ToString = CStr(varValue)
	End Function

	Function ToNumber(varValue)
		On Error Resume Next
		ToNumber = 0
		ToNumber = CDbl(varValue)
	End Function
	
	Function FormatFromXSL(strRef, strFormat, iNumDecimals, LCID, nType)
		FormatFromXSL = ToString(Format(GetValue(strRef, nType), strFormat, iNumDecimals, LCID, nType))
	End Function

	Function Format(varValue, strFormat, iNumDecimals, LCID, nType)
		Dim FormatTemp
		Dim strTemp
										
		If IsDate(varValue) Then
			Select Case strFormat
				Case "General Date"
					FormatTemp = FormatDateTime(varValue, vbGeneralDate)
				Case "Long Date"
					FormatTemp = FormatDateTime(varValue, vbLongDate)
				Case "Medium Date"
					If GetLocale = 1054 Then ' Special case for thai year
						FormatTemp = Day(varValue) & "-" & MonthName(Month(varValue), True) & "-" & Right(FormatDateTime(varValue, vbShortDate), 2)
					Else
						FormatTemp = Day(varValue) & "-" & MonthName(Month(varValue), True) & "-" & Mid(Year(varValue), 3, 2)
					End If
				Case "Short Date"
					FormatTemp = FormatDateTime(varValue, vbShortDate)
				Case "Long Time"
					FormatTemp = FormatDateTime(varValue, vbLongTime)							
				Case "Medium Time"
					strTemp = FormatDateTime(varValue, vbLongTime)
					If (IsNumeric(Mid(strTemp, 2, 1))) Then
						FormatTemp = Mid(strTemp,1,5) & Mid(strTemp, 9)
					Else
						FormatTemp = Mid(strTemp,1,4) & Mid(strTemp, 9)
					End If
				Case "Short Time"
					FormatTemp = FormatDateTime(varValue, vbShortTime)
				Case Else
					Select Case LCase(strFormat)
						Case "yyyy", "q", "m", "y", "d", "w", "ww", "h", "n", "s"
							FormatTemp = DatePart(LCase(strFormat), varValue)
						Case Else
							' This does not currently support custom formats such as dd-mmm-yyyy										
							FormatTemp = FormatDateTime(varValue, vbGeneralDate)
					End Select
			End Select
		ElseIf IsNumeric(varValue) Then
			Select Case strFormat
				Case "General Number"
					FormatTemp = varValue
				Case "Currency"
					FormatTemp = FormatCurrencyPerLocale(varValue, iNumDecimals, LCID)
				Case "Euro"
					' This does not really support the Euro format.
					FormatTemp = FormatCurrencyPerLocale(varValue, iNumDecimals, LCID)
				Case "Fixed"
					If IsNumeric(iNumDecimals) Then
						FormatTemp = FormatNumber(varValue, iNumDecimals, vbTrue, vbUseDefault, vbFalse)
					Else
						FormatTemp = FormatNumber(varValue, 2, vbTrue, vbUseDefault, vbFalse)
					End If
				Case "Standard"
					If IsNumeric(iNumDecimals) Then
						FormatTemp = FormatNumber(varValue, iNumDecimals, vbUseDefault, vbUseDefault, vbTrue)
					Else
						FormatTemp = FormatNumber(varValue, 2, vbUseDefault, vbUseDefault, vbTrue)
					End If
				Case "Percent"
					If IsNumeric(iNumDecimals) Then
						FormatTemp = FormatPercent(varValue, iNumDecimals)
					Else
						FormatTemp = FormatPercent(varValue)
					End If
				Case "Scientific"
					Dim nExp
					Dim nValue
					If (varValue = 0)  Then
						nExp = 0
					Else
				      		nExp = Int(Log(Abs(varValue)) / Log(10))
					End If
					nValue = Round(CDbl(varValue)/(10^CDbl(nExp)), 2)
					If (Sgn(nExp) < 0) Then
						FormatTemp = FormatNumber(nValue, 2, vbTrue, vbFalse, vbFalse) & "E" & nExp
					Else
						FormatTemp = FormatNumber(nValue, 2, vbTrue, vbFalse, vbFalse) & "E+" & nExp
					End If
				Case "True/False"
					If (CBool(varValue)) Then
						FormatTemp = "True"
					Else
						FormatTemp = "False"
					End If
				Case "Yes/No"
					If (CBool(varValue)) Then
						FormatTemp = "Yes"
					Else
						FormatTemp = "No"
					End If 
				Case "On/Off"
					If (CBool(varValue)) Then
						FormatTemp = "On"
					Else
						FormatTemp = "Off"
					End If 
				Case Else 	' This is a custom format				
					If nType = 6 Then ' This is a currency
						FormatTemp = FormatCurrencyPerLocale(varValue, iNumDecimals, LCID) 
					End If
			End Select
		End If

		If IsEmpty(FormatTemp) Then								
			FormatTemp = varValue
		End If

		If FHasNoContent(FormatTemp) Then
			Format = " "
		Else
			Format = FormatTemp
		End If
						
	End Function

	Function 	FormatCurrencyPerLocale(varValue, iNumDecimals, LCID)
		Dim CurrentLCID
		If LCID >< "" Then	CurrentLCID = SetLocale(LCID)
		If IsNumeric(iNumDecimals) Then
			FormatCurrencyPerLocale = FormatCurrency(varValue, iNumDecimals)
		Else
			FormatCurrencyPerLocale = FormatCurrency(varValue)
		End If
		If Not IsEmpty(CurrentLCID) Then SetLocale CurrentLCID 
	End Function
	
	Function FHasNoContent(objValue)
		FHasNoContent = True
		
		If IsNull(objValue) Then Exit Function
		If IsEmpty(objValue) Then Exit Function
		If Not IsObject(objValue) Then 
			If objValue = "" Then Exit Function
		Else
			If objValue Is Nothing Then Exit Function
		End if

		FHasNoContent = False
	End Function

	Function IIf(fCond, varTrue, varFalse)
		If fCond Then
			IIf = varTrue
		Else
			IIf = varFalse
		End If
	End Function

	Function Nz(varValue, varReplace)
		If FHasNoContent(varValue) Then
			Nz = varReplace
		Else
			Nz = varValue
		End If
	End Function

	Function Sum(strExpr)
		Dim nSum, i

		nSum = 0
		Set objCurrNodeT = objCurrNode

		For i = 0 To cGroupCount - 1
			Set objCurrNode = objGroupNodes.item(i)	
			nSum = nSum + ToNumber(Eval(strExpr))
		Next
				
		Set objCurrNode = objCurrNodeT
		Sum = nSum
	End Function
	
	Function Count(strExpr)
		Dim nCount, i
		
		If strExpr = "*" Then
			Count = cGroupCount
			Exit Function
		End If
		
		Set objCurrNodeT = objCurrNode
		nCount = 0
		For i = 0 To cGroupCount - 1
			Set objCurrNode = objGroupNodes.item(i)	
			If Not FHasNoContent(Eval(strExpr)) Then
				nCount = nCount + 1
			End If	
		Next

		Set objCurrNode = objCurrNodeT
		Count = nCount
	End Function
		
	Function Avg(strExpr)
		Dim nSum
		Dim nCount
		nSum = Sum(strExpr)
		nCount = Count(strExpr)
		If nCount > 0 Then
			Avg = nSum / nCount
		Else
			Avg = nSum
		End If
	End Function

	Function Min(strExpr)
		Dim varMin, i
		Dim varTemp
		
		Set objCurrNodeT = objCurrNode

		For i = 0 To cGroupCount - 1
			Set objCurrNode = objGroupNodes.item(i)	
			varTemp = Eval(strExpr)
			If IsEmpty(varMin) Or (varTemp < varMin) Then
				varMin = varTemp
			End If	
		Next

		Set objCurrNode = objCurrNodeT
		Min = varMin
	End Function
	
	Function Max(strExpr)
		Dim varMax, i
		Dim varTemp
	
		varMax = Eval(strExpr)
		Set objCurrNodeT = objCurrNode
		
		For i = 0 To cGroupCount - 1
			Set objCurrNode = objGroupNodes.item(i)	
			varTemp = Eval(strExpr)
			If IsEmpty(varMax) Or (varTemp > varMax) Then
				varMax = varTemp
			End If	
		Next
		
		Set objCurrNode = objCurrNodeT
		Max = varMax
	End Function
	
	Function GetValue(strRef, nType)
		' Set Null as the default return value
		GetValue = Null

		' Return Null if anything goes wrong
		On Error Resume Next
	
		Dim objNode
		Set objNode = objCurrNode.selectSingleNode(strRef)
		If (objNode Is Nothing) Or IsNull(objNode) Or IsEmpty(objNode) Or Not IsObject(objNode) Then
			Exit Function
		End If

		Dim CurrentLCID
		CurrentLCID = SetLocale(1033)
		
		Select Case nType
			Case 2		 	' adSmallInt
				GetValue = CLng(objNode.text)

			Case 3 		' adInteger
				GetValue = CLng(objNode.text)

			Case 20		' adBigInt
				GetValue = CLng(objNode.text)

			Case 17		' adUnsignedTinyInt
				GetValue = CLng(objNode.text)

			Case 18		' adUnsignedSmallInt
				GetValue = CLng(objNode.text)

			Case 19		' adUnsignedInt
				GetValue = CLng(objNode.text)

			Case 21		' adUnsignedBigInt
				GetValue = CLng(objNode.text)

			Case 4		' adSingle
				GetValue = CDbl(objNode.text)

			Case 5		' adDouble
				GetValue = CDbl(objNode.text)

			Case 6		' adCurrency
				GetValue = CCur(objNode.text)

			Case 14		' adDecimal
				GetValue = CDbl(objNode.text)

			Case 131		' adNumeric
				GetValue = CDbl(objNode.text)

			Case 139		' adVarNumeric
				GetValue = CDbl(objNode.text)

			Case 11		' adBoolean
				GetValue = CBool(objNode.text)

			Case 7 		' adDate
				GetValue = BuildDateFromStr(objNode.text, True)

			Case 133		' adDBDate
				GetValue = BuildDateFromStr(objNode.text, True)

			Case 134		' adDBTime
				GetValue = BuildDateFromStr(objNode.text, True)

			Case 135		' adDBTimeStamp
				GetValue = BuildDateFromStr(objNode.text, True)

			Case 8		' adBSTR
				GetValue = objNode.text				

			Case 120		' adChar
				GetValue = objNode.text				

			Case 200		' adVarChar
				GetValue = objNode.text				

			Case 201		' adLongVarChar
				GetValue = objNode.text				

			Case 130		' adWChar:
				GetValue = objNode.text				

			Case 202		' adVarWChar
				GetValue = objNode.text				

			Case 203		' adLongVarWChar	
				GetValue = objNode.text		

			Case -7 		' Special value used to get just the date.
				GetValue = BuildDateFromStr(objNode.text, False)				

			Case Else
				GetValue = objNode.text				
		End Select

		SetLocale CurrentLCID
	End Function

	Dim gStaticDate
	Function StaticDate()
		If IsEmpty(gStaticDate) Then gStaticDate = GetValue("/*/@generated", -7)
		StaticDate = gStaticDate
	End Function

	Dim gStaticNow
	Function StaticNow()
		If IsEmpty(gStaticNow) Then gStaticNow = GetValue("/*/@generated", 7)
		StaticNow = gStaticNow
	End Function
	
	Function BuildDateFromStr(strDate, fIncludeTime)
		Dim CurrentLCID
		CurrentLCID = SetLocale(1033)
		' This requires that the Locale be set to en-us (1033).
		BuildDateFromStr = CDate(Left(strDate,10))

		If (fIncludeTime) Then
			BuildDateFromStr = BuildDateFromStr  + CDate(Right(strDate,8))
		End If
		SetLocale CurrentLCID
	End Function

	Function ArrayItem(arr, index)
		If index > UBound(arr) Then
			ArrayItem = ""
		Else
			ArrayItem = arr(index)
		End If
	End Function

	Function HyperlinkPartFromNodeList(nodelist, nPart)
		If nodelist.length = 0 Then
			HyperlinkPartFromNodeList = ""
		Else
			HyperlinkPartFromNodeList = HyperlinkPartFromString(nodelist.item(0).text, nPart)
		End If
	End Function
	
	Function HyperlinkPart(strRef, nPart)
		HyperlinkPart = HyperlinkPartFromString(GetValue(strRef, 200), nPart)
	End Function
	
	Function HyperlinkPartFromString(strHyperlink, nPart)
		Dim arrParts
		Dim strHyperlinkPart
		Dim strAddress, strSubAddress
		
		arrParts = Split(strHyperlink, "#")

		Select Case nPart
			Case 0 		' acDisplayedValue
				strHyperlinkPart = ArrayItem(arrParts, 0)
				If strHyperlinkPart = "" Then
					strAddress = ArrayItem(arrParts, 1)
					strSubAddress = ArrayItem(arrParts, 2)

					If strAddress = "" and strSubAddress = "" Then
						strHyperlinkPart = ""
					ElseIf strSubAddress = "" Then
						strHyperlinkPart = strAddress
					ElseIf strAddress = "" Then
						strHyperlinkPart = strSubAddress
					Else
						strHyperlinkPart = strAddress & " - " & strSubAddress
					End If
				End If
			Case 1 		' acDisplayText
				strHyperlinkPart = ArrayItem(arrParts, 0)
			Case 2 		' acAddress
				strHyperlinkPart = ArrayItem(arrParts, 1)
			Case 3 		' acSubAddress
				strHyperlinkPart = ArrayItem(arrParts, 2)
			Case 4 		' acScreenTip
				strHyperlinkPart = ArrayItem(arrParts, 3)
			Case 5 		' acFullAddress
				strAddress = ArrayItem(arrParts, 1)
				strSubAddress = ArrayItem(arrParts, 2)
				
				If strAddress = "" and strSubAddress = "" Then
					strHyperlinkPart = "#"
				ElseIf strSubAddress = "" Then
					strHyperlinkPart = strAddress
				Else
					strHyperlinkPart = strAddress & "#" & strSubAddress
				End If
		End Select
		HyperlinkPartFromString = strHyperlinkPart
	End Function
			]]></msxsl:script>
</xsl:stylesheet>
