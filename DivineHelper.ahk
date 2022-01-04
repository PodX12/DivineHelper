;;Divine Helper by twitch.tv/PodX12

#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

global startingPosition = "x650 y350"

;Positions remove the leading ; from the position you would like to use and add to the previous position
;default dimensions width 180, height

;top left
;global helperPosition = "x0 y0"

;top right
global helperPosition = "x1740 y50"

;bottom left
;global helperPosition = "x0 y880"

;bottom right
;global helperPosition = "x1740 y880"

ShowDivineSelect()
{
    gui, new
    gui, Default
    gui, +LastFound +LabelMyGui
    gui, add, groupbox, w450 h300, Select the fossil starting block: 

    ;;;;;;;;;;ROW 1;;;;;;;;;;;;
    gui, add, button, yp+30 xp+10 w100 h50 gDone, 0
    gui, add, button, xp+110 w100 h50 gDone, 1
    gui, add, button, xp+110 w100 h50 gDone, 2
    gui, add, button, xp+110 w100 h50 gDone, 3

    ;;;;;;;;;;ROW 2;;;;;;;;;;;;
    gui, add, button, yp+60 xp-330 w100 h50 gDone, 4
    gui, add, button, xp+110 w100 h50 gDone, 5
    gui, add, button, xp+110 w100 h50 gDone, 6
    gui, add, button, xp+110 w100 h50 gDone, 7

    ;;;;;;;;;;ROW 3;;;;;;;;;;;;
    gui, add, button, yp+60 xp-330 w100 h50 gDone, 8
    gui, add, button, xp+110 w100 h50 gDone, 9
    gui, add, button, xp+110 w100 h50 gDone, 10
    gui, add, button, xp+110 w100 h50 gDone, 11

    ;;;;;;;;;;ROW 4;;;;;;;;;;;;
    gui, add, button, yp+60 xp-330 w100 h50 gDone, 12
    gui, add, button, xp+110 w100 h50 gDone, 13
    gui, add, button, xp+110 w100 h50 gDone, 14
    gui, add, button, xp+110 w100 h50 gDone, 15

    Gui, Add, Text, yp+60 x20, Fossil Images: 
    Gui, Font, Underline cBlue
    Gui, Add, Text, xp+70 gLink, https://i.imgur.com/n7BgQtY.png

    gui, show, %position%, Divine Travel Helper
    return WinExist()

    Link:
        {
            Run "https://i.imgur.com/n7BgQtY.png"
            return
        }
    Done:
        {
            guiControl := A_GuiControl
            gui, destroy

            divine := GetDivineCoords(guiControl)

            ;reassign due to errors when compiling strings
            sh1X := divine.sh1.x
            sh1Y := divine.sh1.y
            sh2X := divine.sh2.x
            sh2Y := divine.sh2.y
            sh3X := divine.sh3.x
            sh3Y := divine.sh3.y

            msg1 = 1: X %sh1X% Y %sh1Y%
            msg2 = 2: X %sh2X% Y %sh2Y%
            msg3 = 3: X %sh3X% Y %sh3Y%

            gui, new
            gui, Default
            Gui, +AlwaysOnTop
            Gui, Color, 333333, Blue
            Gui, Font, s15 
            Gui, Add, Text, CCCCCC, %msg1%
            Gui, Add, Text, CCCCCC, %msg2%
            Gui, Add, Text, CCCCCC, %msg3%
            gui, show, %helperPosition%, Divine Travel Helper

            return WinExist()
        }
    }

GetDivineCoords(divine){
    res := {}
    switch divine
    {
        case 0:
            res.sh1 := {}
            res.sh1.x := "251"
            res.sh1.y := "50"
            res.sh2 := {}
            res.sh2.x := "-169"
            res.sh2.y := "192"
            res.sh3 := {}
            res.sh3.x := "-82"
            res.sh3.y := "-242"
            res.empty := "Neg X, Pos Z"
        return res 
        case 1:
            res.sh1 := {}
            res.sh1.x := "213"
            res.sh1.y := "142"
            res.sh2 := {}
            res.sh2.x := "-230"
            res.sh2.y := "113"
            res.sh3 := {}
            res.sh3.x := "17"
            res.sh3.y := "-255"
            res.empty := "Neg X, Neg Z"
        return res 
        case 2:
            res.sh1 := {}
            res.sh1.x := "142"
            res.sh1.y := "213"
            res.sh2 := {}
            res.sh2.x := "113"
            res.sh2.y := "-230"
            res.sh3 := {}
            res.sh3.x := "-255"
            res.sh3.y := "17"
            res.empty := "Neg X, Neg Z"
        return res 
        case 3:
            res.sh1 := {}
            res.sh1.x := "50"
            res.sh1.y := "251"
            res.sh2 := {}
            res.sh2.x := "192"
            res.sh2.y := "-169"
            res.sh3 := {}
            res.sh3.x := "-242"
            res.sh3.y := "-82"
            res.empty := "Neg X, Pos Z"
        return res 
        case 4:
            res.sh1 := {}
            res.sh1.x := "-50"
            res.sh1.y := "251"
            res.sh2 := {}
            res.sh2.x := "-192"
            res.sh2.y := "-169"
            res.sh3 := {}
            res.sh3.x := "242"
            res.sh3.y := "-82"
            res.empty := "Pos X, Pos Z"
        return res 
        case 5:
            res.sh1 := {}
            res.sh1.x := "-142"
            res.sh1.y := "213"
            res.sh2 := {}
            res.sh2.x := "-113"
            res.sh2.y := "230"
            res.sh3 := {}
            res.sh3.x := "255"
            res.sh3.y := "17"
            res.empty := "Pos X, Neg Z"
        return res 
        case 6:
            res.sh1 := {}
            res.sh1.x := "-213"
            res.sh1.y := "142"
            res.sh2 := {}
            res.sh2.x := "230"
            res.sh2.y := "113"
            res.sh3 := {}
            res.sh3.x := "-17"
            res.sh3.y := "-255"
            res.empty := "Pos X, Neg Z"
        return res 
        case 7:
            res.sh1 := {}
            res.sh1.x := "-251"
            res.sh1.y := "50"
            res.sh2 := {}
            res.sh2.x := "169"
            res.sh2.y := "192"
            res.sh3 := {}
            res.sh3.x := "82"
            res.sh3.y := "-242"
            res.empty := "Neg X, Neg Z"
        return res 
        case 8:
            res.sh1 := {}
            res.sh1.x := "-251"
            res.sh1.y := "-50"
            res.sh2 := {}
            res.sh2.x := "169"
            res.sh2.y := "-192"
            res.sh3 := {}
            res.sh3.x := "82"
            res.sh3.y := "242"
            res.empty := "Neg X, Pos Z"
        return res 
        case 9:
            res.sh1 := {}
            res.sh1.x := "-213"
            res.sh1.y := "-142"
            res.sh2 := {}
            res.sh2.x := "230"
            res.sh2.y := "-113"
            res.sh3 := {}
            res.sh3.x := "-17"
            res.sh3.y := "255"
            res.empty := "Pos X, Pos Z"
        return res 
        case 10:
            res.sh1 := {}
            res.sh1.x := "-142"
            res.sh1.y := "-213"
            res.sh2 := {}
            res.sh2.x := "-113"
            res.sh2.y := "230"
            res.sh3 := {}
            res.sh3.x := "255"
            res.sh3.y := "-17"
            res.empty := "Pos X, Pos Z"
        return res 
        case 11:
            res.sh1 := {}
            res.sh1.x := "-50"
            res.sh1.y := "-251"
            res.sh2 := {}
            res.sh2.x := "-192"
            res.sh2.y := "169"
            res.sh3 := {}
            res.sh3.x := "242"
            res.sh3.y := "82"
            res.empty := "Pos X, Neg Z"
        return res 
        case 12:
            res.sh1 := {}
            res.sh1.x := "50"
            res.sh1.y := "-251"
            res.sh2 := {}
            res.sh2.x := "192"
            res.sh2.y := "169"
            res.sh3 := {}
            res.sh3.x := "-242"
            res.sh3.y := "82"
            res.empty := "Neg X, Neg Z"
        return res 
        case 13:
            res.sh1 := {}
            res.sh1.x := "142"
            res.sh1.y := "-213"
            res.sh2 := {}
            res.sh2.x := "113"
            res.sh2.y := "230"
            res.sh3 := {}
            res.sh3.x := "-255"
            res.sh3.y := "-17"
            res.empty := "Neg X, Pos Z"
        return res 
        case 14:
            res.sh1 := {}
            res.sh1.x := "213"
            res.sh1.y := "-142"
            res.sh2 := {}
            res.sh2.x := "-230"
            res.sh2.y := "-113"
            res.sh3 := {}
            res.sh3.x := "17"
            res.sh3.y := "255"
            res.empty := "Neg X, Pos Z"
        return res 
        case 15:
            res.sh1 := {}
            res.sh1.x := "251"
            res.sh1.y := "-50"
            res.sh2 := {}
            res.sh2.x := "-169"
            res.sh2.y := "-192"
            res.sh3 := {}
            res.sh3.x := "-82"
            res.sh3.y := "242"
            res.empty := "Pos X, Neg Z"
        return res 
    }
}

#IfWinActive, Minecraft
{
    ^+F::
        ShowDivineSelect()
    return   
}
