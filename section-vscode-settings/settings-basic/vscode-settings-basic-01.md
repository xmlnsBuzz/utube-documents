# VSCode Settings 01 - 기본 세팅 01 ![SIA Logo](../../img/sia-logo-first.svg "Stack It All")
---
## Settings 
Settings(환경설정)을 하는 이유는 작업환경을 사용자의 선호도에 맞추어, 즉 사용자가 최적의 환경에서 작업할 수 있도록 환경변수(system variables)를 사용자 '스스로' 조정하는 것이다. 포토샵 등의 프로그램의 경우 settings 대신 'preferences'라고 부르기도 한다.



## 사용자 환경설정의 단축키
- JSON 파일을 직접 typing하여 조정  
  
- UI를 이용하여 조정
> Ctrl + , (comma)

---
## AutoSave
VSCode에서 하는 미리보기 등은 현재 저장된 문서를 읽어와서 실행시킨다. 그러므로 현재 editor 상에서 문서를 수정하였더라도 저장을 하지 않았다면 변경된 내용은 반영되지 않는다. 따라서 자동저장을 지정하면 문서가 자동으로 저장되어 사용자가 따로 저장(단축키 : Ctrl + S)명령을 하지 않아도 된다. 내 경우 자동저장모드를 계속 사용하는데, 현재까지 별 다른 불편은 없다.  

자동저장모드가 아닌 상태에서 어떤 문서가 저장되었는지 여부를 확인하려면 각 문서의 tab 부분을 보면 된다. x 표시는 저장된 상태이고 동그란 점(点) 모양이면 저장되지 않은 상태다.

---

<!-- ## File icon theme
File icon theme은 파일이나 폴더의 확장자에 따라 파일 및 폴더 이름 왼쪽에 특정한 icon으로 눈에 띄게 표시하여 서로 구분하기 수월하게 해 준다. 
### command palette를 사용하여 설정
> F1
----->

## Font

### Font size : 에디터에서 사용할 글자의 크기
- <span class="emph">editor.fontSize</span>

### Font family : 에디터에서 사용할 글자의 글꼴
- <span class="emph">editor.fontFamily</span>



### Coding用 fonts  

Coding用 폰트는 fixed width(고정폭 글씨체)를 사용한다. 기호와 숫자 문자등이 서로 뚜렷하게 구분되는 폰트를 사용한다.

* Consolas : 기본설정된 폰트
* Fira Code
* D2Coding
* 등등 ... 

---

## Word Wrap

- <span class="emph">editor.wordWrap</span>
- <span class="emph">editor.wordWrapColumn</span>
- <span class="emph">editor.wrappingIndent</span>

