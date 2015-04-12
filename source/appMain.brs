'********************************************************************
'**  Video Player Example Application - Main
'**  November 2009
'**  Copyright (c) 2009 Roku Inc. All Rights Reserved.
'********************************************************************


' http://192.168.2.15
' Username: rokudev
' Password: 1888


Sub Main()

    'initialize theme attributes like titles, logos and overhang color
    initTheme()

    'prepare the screen for display and get ready to begin
    screen=preShowHomeScreen("", "")
    if screen=invalid then
        print "unexpected error in preShowHomeScreen"
        return
    end if

    'set to go, time to get started
    showHomeScreen(screen)

    ' uncomment the above lines to drop to home screen.
    ' here we bypass that screen and drop straight to the
    ' poster since we only have one category.
    ' THIS CAN BE USED TO SKIP FIRST SCREEN...
    'initCategoryList()
    'kid = m.Categories.Kids[0]
    'screen = displayCategoryPosterScreen(kid)
    'if screen=invalid then
    '    print "unexpected error in preShowHomeScreen"
    '    return
    'end if


End Sub


'*************************************************************
'** Set the configurable theme attributes for the application
'** 
'** Configure the custom overhang and Logo attributes
'** Theme attributes affect the branding of the application
'** and are artwork, colors and offsets specific to the app
'*************************************************************

Sub initTheme()

    app = CreateObject("roAppManager")
    theme = CreateObject("roAssociativeArray")

    theme.BackgroundColor = "#4F8FBB"
    
    theme.ListItemText = "#693779"
    theme.PosterScreenLine1Text = "#ffffff"
    theme.PosterScreenLine2Text = "#693779"
    theme.SpringboardActorColor = "#0A64A4"
    theme.SpringboardSynopsisColor = "#ffffff"
    theme.SpringboardTitleText = "#ffffff"

    theme.OverhangOffsetSD_X = "72"
    theme.OverhangOffsetSD_Y = "31"
    theme.OverhangSliceSD = "pkg:/images/Overhang_Background_SD.png"
    theme.OverhangLogoSD  = "pkg:/images/Overhang_Logo_SD.png"

    theme.OverhangOffsetHD_X = "125"
    theme.OverhangOffsetHD_Y = "35"
    theme.OverhangSliceHD = "pkg:/images/Overhang_Background_HD.png"
    theme.OverhangLogoHD  = "pkg:/images/Overhang_Logo_HD.png"

    app.SetTheme(theme)

End Sub
