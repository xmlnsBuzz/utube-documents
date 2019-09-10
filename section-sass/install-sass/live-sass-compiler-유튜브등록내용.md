# Live Sass Compiler & Live Server

## Video URL : https://youtu.be/q9j7X4jk2Bs

## Description
Sass 초창기에는 node-sass나 ruby등과 gulp.js 등을 통해 Sass 파일을 CSS 파일로 컴파일시켰습니다. -watch 옵션을 사용하여 다소의 편리성을 보강했지만 CLI(Command Line Interface)에 익숙하지 않은 사람들에게 부담이었고 익숙한 사람들도 매번 source와 target을 지정하는 일은 번거로운 일이었습니다.

하지만 이제부터는 VSCode의 확장팩 형식으로 사용하는 live sass compiler는 이런 부담과 불편함을 한꺼번에 해결해 줍니다.

특히 live sass compiler의 환경변수 설정을 통해 bootstrap, wordpress같은 프레임웤을 사용할 경우 

1. 작업폴더의 모든 .scss 파일을 컴파일하지 않도록하고 제외목록을 만들고 
2. 특정 폴더를 지정하여 다양한 방법으로 컴파일된 .css 파일을 보관할 수 있으며
3. expanded, compressed, compact 등의 옵션을 이용해 다양한 format을 변환 가능합니다.

--- Time Stamp ---
01:47 - Live Sass 및 Live Server 확장팩 설치
03:19 - Live Sass Compiler 환경변수설정(Configuration)
05:24 - Live Sass Compiler 실행 및 Watch option 
06:27 - File Exclusion - 컴파일하지 않을 파일 및 폴더 지정
06:50 - Glob Pattern
10:58 - Editing settings.json - JSON 파일 편집
12:30 - Vendor Prefix 및 Compile 시킬 CSS file format 설정
18:41 - Compile되는 CSS file의 확장자 지정. .css 혹은 .min.css
20:32 - CSS file을 저장할 위치 지정 시나리오 
23:39 - null -> .SCSS 원본파일이 있는 위치에 저장.
24:22 - "/css" -> 모든 CSS file을 한 곳에 저장.
25:56 - "~/../css" -> 하위 폴더마다 각각의 css folder를 만들어서 따로 저장
28:56 - Map file 생성 여부
29:24 - Output Window(Terminal pane에 있는) 생성 여부

## Tag
Sass,  -watch, live sass compiler, .scss .css, expanded, compressed, compact, nested, format, Live Server, extension pack, 확장팩 설치,Configuration, File Exclusion, Glob Pattern, JSON 파일 편집, Vendor Prefix, .min.css, null, ~/../css, Map file, Output Window