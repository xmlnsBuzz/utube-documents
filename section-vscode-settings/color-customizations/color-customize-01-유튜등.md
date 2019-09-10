# VSCode 인터페이스 Color 설정 - VSCode interface color customization
---
## Video URL : https://youtu.be/kPGX2A2_mxA

## Description
JSON 파일을 수정하는 방법을 배워서 VSCode settings interface 색상을 설정합니다. VSCode의 고급설정과 세부설정은 JSON 파일을 직접 수정해야만 되므로 JSON 파일에 대해 소개하고, 일반 JSON과는 조금 다른 VSCode에 사용되는 JSON 파일의 형식에 대해서도 설명합니다.

그리고 VSCode의 Default settings, User settings, Workspace settings 들의 차이점과 이 세가지 setting 중 어떤 값이 우선적용되는지의 관계(cascading)에 대해서도 설명합니다.
--- Time Stamp ---
01:46 - VSCode에서의 Cascading
02:05 - User Settings file(settings.json)의 경로
02:47 - JSON file로 User settings editing 하기
07:49 - JSON file에서의 주석(comments)
10:38 - Editor color 9가지 설정하기
16:39 - Workspace settings 설정하기
17:42 - Default, User, Workspace 간의 Cascading


settings.json 
----- 이 아래 부터 ---
{
  "workbench.colorCustomizations": {
    // Bracket Pair Background color & Border color
    "editorBracketMatch.background": "#c8431ad7",
    "editorBracketMatch.border": "#ffe600",

    // Selection highlight backgroud & border
    "editor.selectionBackground": "#78c932a6",
    "editor.selectionHighlightBorder": "#ffffffbd",
    "editor.selectionHighlightBackground": "#a0a0a0bd",

    // Line highlight Background & Border
    "editor.lineHighlightBackground": "#2cfbfb41",
    "editor.lineHighlightBorder": "#b4dede41",

    // Tag pair & Word background color
    "editor.wordHighlightBackground": "#a355da5a",
    "editor.wordHighlightBorder": "#c2cf0f56",
  },
}
--- 이 윗 부분까지 ---

Sia Channel에서 사용하는 color customization settings
--- start ---


    "workbench.colorCustomizations": {
        // foreGround 
        "foreground": "#ffffff", // overall 글자색
        "tab.activeForeground": "#e2e2e2",
        "dropdown.foreground": "#ffffff",
        "descriptionForeground": "#facece", // welcome화면 일반 글씨
        "sideBarSectionHeader.foreground": "#ffffff",
        "focusBorder": "#9fff9c79", // NOTE: sideBar의 파일의 rename 등을 하려고 선택했을 때.
        // border 
        "tab.activeBorder": "#09ff00",
        "dropdown.border": "#00d9ff",
        "textLink.activeForeground": "#4c00ff",
        "activityBar.border": "#8b8888", // Activity Bar border color with the Side Bar.
        "tab.hoverBorder": "#4fdafdce",
        "tab.unfocusedActiveBorder": "#c98d8d",
        "editor.wordHighlightBackground": "#a793939d",
        "tab.unfocusedHoverBackground": "#4fdafdce",
        // selection 
        "selection.background": "#3700ff", // NOTE: sideBar의 파일의 rename 등을 하려고 선택할 때.
        "editor.selectionHighlightBackground": "#69ac5b97",
        "editor.selectionHighlightBorder": "#23a79cb2",
        "editorCursor.background": "#ff0000",

        "editor.selectionBackground": "#72e92d72",
        // widget 
        "widget.shadow": "#119db6", // ctrl + f, ctrl + h 등을 했을 때 나오는 widget 박스 그림자.
        "editorSuggestWidget.selectedBackground": "#746e30a1",
        // background 
        "editor.lineHighlightBackground": "#a8a15c41",
        "editor.lineHighlightBorder": "#c44a1a52",
        "textBlockQuote.background": "#dfac4d69",
        "textBlockQuote.border": "#48e948e5",
        "tab.activeBackground": "#119db6",
        "dropdown.background": "#2396aa",
        "dropdown.listBackground": "#119db6c0",
        "sideBarSectionHeader.background": "#2d64da",
        "editor.background": "#333333",
        // sideBar 
        "sideBar.background": "#4b4b4bbb",
        "sideBar.dropBackground": "#ff0000",
        // editor group
        "editorBracketMatch.background": "#0862e1", // Background color behind matching brackets.
        "editorBracketMatch.border": "#e3bde1fd",
        //Color for matching brackets boxes.
        "editorGroup.dropBackground": "#4fdafdce",
        "editorGroupHeader.tabsBackground": "#555555",
        // terminal
        "terminal.border": "#ff0000",
        "terminal.background": "#464646",
        //list - 왼쪽 탐색 창 목록 관련
        "list.hoverForeground": "#ffffff",
        "list.hoverBackground": "#119db667",
        // 선택된 항목에서 focus가 빠졌을 때, 선택은 유지되며 바뀔 색깔 지정.
        "list.inactiveSelectionForeground": "#00d9ff",
        // Main menu Bar - 인터페이스 상단메뉴 관련
        "menubar.selectionForeground": "#eeeeee", //Foreground color of the selected menu item in the menubar.
        "menubar.selectionBackground": "#4fdafdce", //Background color of the selected menu item in the menubar.
        "menubar.selectionBorder": "#4fdafdce", //Border color of the selected menu item in the menubar.
       
        "menu.foreground": "#ffffff", 
        "menu.background": "#119db6", 
        "menu.selectionForeground": "#ffffff", 
        "menu.selectionBackground": "#0c788b",
        "menu.selectionBorder": "#0c788b",
        "menu.separatorBackground": "#ff0000",
        "scrollbar.shadow": "#ce474775", 
        "scrollbarSlider.activeBackground": "#ff910060",
        "scrollbarSlider.background": "#1fbbae67", 
        "scrollbarSlider.hoverBackground": "#fbff0096", /
        "progressBar.background": "#ff0000"
         },

--- end ---

*** comma 빠뜨리지 않도록 주의 ***

## Tag
vscode,settings,color customization,vscode default settings,vscode user settings,vscode workspace settings,cascading,json,json comments,sia,fullstack

[tag 참조](../../Youtube-tag.md)