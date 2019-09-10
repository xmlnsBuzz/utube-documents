# Color Customize 01 - Matching Pair and HightLight

VSCode를 제대로 다루려면 필연적으로 직접 Settings 파일의 내용을 구성해야 된다. 요즘 프로그램들의 일반적인 추세를 보면, 대개가 JSON(JavaScript Object Notations) file(확장자 .json)에 필요한 설정을 표기(Notations)하여 담아두는데, 이번에는 JSON 파일의 구조에 대해 간단히 알아보고 editor의 글자색 배경색 등을 사용자가 직접 설정하는 방법중 그 일부분에 대해 알아본다.

---
## Color customization
VSCode는 interface의 거의 모든 부분에 사용자가 색상을 지정하는 것을 허용한다. 사용자가 지정할 수 있는 색상은 수백개에 달하므로 이 것을 모두 다루기에는 무리이므로 필요한 몇 가지에 대해 직접 설명하고 나머지는 색상을 지정하는 요령에 대해서만 설명하기로 한다. 이 동영상은 color customization의 처 번째 동영상이다.

## VSCode settings에서의 Cascading

VSCode의 settings는 세가지 종류가 있고, 종류에 따른 우선순위가 있다. 우선순위란 말 그대로 먼저 적용되는 순서다. 이 순서가 가장 낮은 것 부터 높은 것까지 나열하면 아래와 같다.

1. <span class="emph">Default settings</span> : 처음 설치하고, 아무런 setting도 하지 않은 상태
2. <span class="emph">User settings</span> : Default setting을 수정하여 모든 사용자의 모든 폴더에 적용되는 설정
3. <span class="emph">WorkSpace settings</span> : Cwd(Current Working Directory)에서 만 적용되는 설정이다. 현재 이 채널에서 다루는 내용은 HTML, CSS ,JS에 특화되어 있는데 사용자에 따라 python, vue 등과 같은 특정 프로그램에 맞게 특화시킬 필요가 있을 경우 또는 여러가지 언어를 다룰 경우 각 언어에 맞는 setting을 해 두고 필요한 settings을 지정할 수 있다.            


이 것은 CSS에서도 적용되는 개념이다.

## JSON 맛보기

### JSON 파일의 기본형식

```json
"변수이름": 숫자, // 숫자의 경우 quoting 하지 않는다.

"변수이름": "문자열", // 문자열은 quoting한다.

"변수이름": {
    "keyword1": "value1",
    "keyword2": "value2"
},
"workbench.colorCustomizations": {
    "editorBracketMatch.background": "#c8431ad7",
    "editorBracketMatch.border": "#ffe600",}
```
<!-- 
### Serialize 

```json
"editor.fontSize": 16,

"editor.wordWrap": "on",

"변수이름": {"keyword1": "value1", "keyword2": "value2"},

"workbench.colorCustomizations": { "keyword": "value", "keyword2": "value2"}
```
 -->

### settings.json(Workspace)
```json
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
```
<hr class="thin" />

### Bracket Pair Background color & Border color
열리고 닫히는 괄호쌍(bracket pair)의 배경색과 border색을 지정한다.

```json
"editorBracketMatch.background": "#a73215",
"editorBracketMatch.border": "#ffffff",
```
<hr class="thin" />

### Selection Background, highlight backgroud & highlight border
드랙 등의 방법으로 선택한 영역과 단어(앞과 뒤에 공백문자가 있는 문자열)의 색깔을 지정한다.

```json
"editor.selectionBackground": "#3f8f09e3",
"editor.selectionHighlightBackground": "#167004",
"editor.selectionHighlightBorder": "#a3a529b2",
```
<hr class="thin" />

### Word highlight backgroud

```json
"editor.wordHighlightBackground": "#791b03",
"editor.wordHighlightBorder": "#d8961d",
```


```json
```

<hr class="thin" />

### Line highlight Background & Border
Editor 문서 속에 커저가 focus된 줄(line)의 배경색과 테두리색 지정


```json
"editor.selectionHighlightBorder": "#927a39",
"editor.selectionHighlightBackground": "#927a39",
```

## JSON 파일의 주석(comments)

JSON 에서는 원칙적으로 주석이 허용되지 않지만, VSCode에서의 특정파일(예 : settings.json 등등)에서는 <span class="emph">예외적</span>으로 '//' 으로 시작하여 주석을 사용할 수 있다.

---

