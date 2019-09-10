# ![Live Sass Compiler](../img/live-sass-compiler-icon.png "Live Sass Compiler") <br/><span style="vertical-align: top;">VSCode Live SASS Compiler  & Server Extension 설치</span>

---

## Live Server 설치
Live SASS compiler(이하 LSC)를 설치하기 위해서는 우선 Live server를 설치해야 된다.

### 종속성(Dependancy)을 가진 Extension

종속성이란 어떤 것이 다른 것에 얽매여 있다는 말이다. A가 B에 대해 종속적이라면 B가 존재하는 환경에서만 A가 존재할 수 있다는 뜻이다. 예를 들어 윈도우용 포토샵 프로그램은 Windows 운영체제에서만 설치되고, Macintish OSX에서는 설치되지 않는다. 이 경우 윈도우용 포토샵은 Windows OS에 종속적이라 할 수 있다. 이런 경우는 물과 물고기처럼 주변에서 심심치 않게 발견할 수 있다.

마찬가지로 LSC가 Live Server에 대해 종속적이라면 Live Server가 설치되어 있어야 LSC가 설치된다는 뜻이다.

---

## Live Sass(Syntactically awesome style sheets) Compiler 설치

Live Server를 설치하지 않고 LSC를 설치해도 괜찮다. 왜냐하면 그냥 LSC를 설치할 경우 두 extension의 종속관계에 대해 설명하는 대화상자가 나오고 나서 강제로 Live Server를 먼저 설치하기 때문이다.

<code class="ctrl">Ctrl</code> <code class="shift">Shift</code> + <code>X</code>를 눌러서 Extension sidebar를 불러낸 후 검색창에 '<span class="emph">live sass</span>'를 입력한다. Live Sass Compiler 3.0.0을 선택한 후 설치한다.

<hr class="thin" />

<!-- ## Sass & SCSS

어떤 경우든 W3C CSS spec을 담은 CSS file을 HTML file에 결합시키는 것은 확장자가 .css인 스타일쉬트 파일이다. 그리고 Sass나 SCSS 등을 pre-processor라 부른다. 즉, Sass나 SCSS라는 형식의 파일을 만들고 이 파일에 SCSS 문법에 맞는 CSS rule을 만들면 compiler(여기서는 Live Sass Compiler)가 미리(pre) 처리(processing)해서 .css 파일을 만들어 준다는 뜻이다.

그런데 이런 pre-processor를 두고 어떤 이는 Sass라 부르고, 다른 이는 SCSS라 부른다. 내가 알아본 결과 Sass는 SCSS의 초기버전으로써 현재도 일부 사용하며 문법적으로 눈에 띄게 다르지만 이미 많은 분량을 Sass로 작업한 사람들이 있기 때문에 아직 사용한다. 따라서 현재 새 버전은 SCSS다. 따라서 Sass 또는 SCSS라 무차별하게 부르기 보다는 SCSS라 부르는 것이 보다 명확하긴한데, 초기버전인 Sass라는 이름이 더 많이 알려져 있어서 많은 사람들이 Sass라 부르고 있다.

<hr class="thin" /> -->

## Customize SASS Extension

LSC의 경우 설정해야 할 변수들이 몇 개 있다. VSCode를 처음 접하는 사람은 좀 복잡하고 번거롭게 느낄지 모르나, 고급 사용자가 되기 위해 반드시 거쳐야되는 과정이므로 필요한 설정들이다. 아래의 설명을 들어보면 이해할 수 있을 것이다.

### Live SASS 실행 및 watch 옵션
LSC의 실행은 VSCode 화면 status bar 오른쪽의 'Watch Sass' 단추를 클릭하면 된다. 그러면 버튼이름이 'Watching...'으로 변하는데 이 것은 확장자 .scss를 가진 파일에 수정을 가하면 LSC가 자동감지하여 compile 시켜주는 mode로 들어가 있다는 의미다.

<hr class="thin" />

### File exclusion - 컴파일하지 않을 파일을 <span class="emph">Glob pattern</span>으로 제외시키기 
```json
"liveSassCompile.settings.excludeList": [
  "**/node_modules/**",
  ".vscode/**",
],
```
#### 사용예제
node_modules/ ** 
: node_modules folder 속의 모든 파일

** / node_modules / ** 
: Current Working Directory(VSCode를 실행한 폴더) 속의 모든 node_modules 폴더 속의 모든 파일

<hr class="thin" />

### Autoprefix 설정

Vendor prefix라고도 불린다. 벤더 프리픽스(vendor prefix)란 major 웹 브라우저에서 이전 버전과의 역호환성(backward compatibility) 때문에 사용하는데, CSS 권고안에 포함되지 못한 기능 또는 권고안에는 포함되어 있지만 아직 완벽하게 정립되지않은 css property들의 기능을 낮은 버전의 브라우저에서 사용하고자 할 때 접두사(prefix)로 붙여 낮은 버전에 알려주어 해당 기능을 사용할 수 있게 해준다.

- -webkit- : chrome, safari, android
- -moz- : firefox 
- -ms- : IE 
- -o- : opera  

등이 있다.

```json
"liveSassCompile.settings.autoprefix": [
  "> 1%",
  "last 2 versions"
]
```

<hr class="thin" />


### Live Sass Compiler의 Format 설정

- Format 설정 기본값
```json
"liveSassCompile.settings.formats": [
  {
    "format": "expanded", // compressed, compact, nested
    "extensionName": ".css", // .css가 default, .min.css로 압축(compressed)형식도 사용가능.
    "savePath": null, // '~' .scss file의 위치, 
  }
],

```

#### 컴파일되는 .css 파일의 format 지정 - Exported CSS style

expanded 
: default

compressed 
: white space(공백문자)를 모두 제거한다. 주로 .min.css 형식의 확장자를 붙인다.

compact 
: CSS rule block은 유지하되 code block ( '{' 속에 있는 property & value '}' ) 속의 whitespace 제거.

nested 
: do it yourself

#### 파일 확장자 지정 - Extension name

확장자를 지정한다. 주로 .css , .min.css 등으로 지정하는데 확장자란 마지막에 나타나는 '.'(period) 뒤의 철자에 의해 결정되므로 '.min.css' 도 결국 .css 이지만, 구분을 위해 앞에다 '.min'을 붙이는 것 뿐이다.

예를 들어 <span class="emph">binding.css.file.with.html.css</span> 의 확장자는 '.css' 다.

#### Compile 되는 .css 파일의 위치를 <span class="emph">Glob pattern</span>으로 표시.

##### <span class="emph">Glob pattern</span>

null
: default 값, SCSS file이 있는 위치에 저장

~
: .scss file이 있는 폴더위치


../
: 한 단계 상위폴더 표시

/
: 폴더 표시 
예 : '/css' -> 현재위치의 하위폴더 'css'

**/folderName
: 폴더이름이  'folderName'인 모든 폴더(혹은 directory)

folderName/**
: 이름이 'folderName'인 폴더 속의 모든 파일 및 폴더

** / folderName / **
: 위의 2개를 합친 것. 모든 'folderName' 폴더 및 폴더속의 모든 파일 및 폴더.


<hr class="thin" />

### CSS file 생성폴더의 위치에 대한 몇가지 시나리오.
LSC에 의해 생성되는 CSS file(.css)들의 위치를 지정하는 것은 유지관리를 위해 나름 중요하다. SCSS file이 몇개 안된다면 SCSS file과 같은 위치에 생성시키는 기본값인 'null'을 사용해도 좋을 것이다.  

하지만 대개 관리해야될 파일이 많아지게 되므로 CSS file의 생성시킬 위치를 특정시켜 지정하는 것은 내 경험상 필수적이라 생각한다. 그래서 두 가지 시나리오를 생각해 봤는데, 이 것(glob pattern)을 이해할 수 있다면 각자 나름의 보관위치를 지정해 관리할 수 있을 것이다.

1. CWD(Current Working Directory)의 css folder 속에 모두 저장하는 방법. 
> <span class="emph">/css</span>

- <span class="emph">CWD</span> 
index.html
  - <span class="emph">css</span>
  main.css
  project01.css
  project02.css
  - <span class="emph">project01</span>
  project01.html
    - <span class="emph">scss</span>
    project01.scss
  - <span class="emph">project02</span>
  project02.html
    - <span class="emph">scss</span>
    project02.scss
  - <span class="emph">scss</span>
  main.scss


2. 각각의 folder 속의 css folder에 저장하는 방법. 
> <span class="emph">~/../css</span>

- <span class="emph">CWD</span> 
index.html
...
  - <span class="emph">css</span>
  main.css
  - <span class="emph">project01</span>
  project01.html
    - <span class="emph">css</span>
    project01.css
    - <span class="emph">scss</span>
    project01.scss
  - <span class="emph">project02</span>
  project02.html
    - <span class="emph">css</span>
    project02.css
    - <span class="emph">scss</span>
    project02.scss
  - <span class="emph">scss</span>
  main.scss

<hr class="thin" />

### Map file 생성 여부

```json
"liveSassCompile.settings.generateMap": true
```
<hr class="thin" />

### Output window 표시 여부

```json
"liveSassCompile.settings.showOutputWindow": true,
```

---
## Channel.sia.code