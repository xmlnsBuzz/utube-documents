# 문법에 맞는 HTML5+ 문서 ![SIA Logo](../../img/sia-logo-first.svg "Stack It All")

--- 

## HTML 문법에 대한 오해...

일반적으로 '문법'이라 하면, 우선 국어나 영어의 문법이 떠 오르기 때문에 엄청나게 어렵고 장기간 시간을 투자해 습득해야 되는 것이라는 선입견이 있는 것 같다. 하지만 HTML의 경우 문법을 준수하는 것이 여러모로 이득이 있으며, 마구잡이로 코딩해 놓고 나중에 수정하느라 시간낭비하는 것에 비해 오히려 시간도 절약되고, 알고나면 더 쉽다.  

HTML 문법은 "난해한 지식이 아니라 알면 하고, 모르면 못하는 경우"에 속한다. 즉, 누가 알려만 주면 할 수 있는 내용이지 이해가 어려워 못하는 내용이 아니다.  

아래의 예제를 보면 알겠지만, 이 채널에서 소개하는 W3C의 HTML과 CSS Spec들은 대개 내가 spec을 해석해서 HTML 문법에 맞는 문서를 배우는 사람들이 spec을 보다 쉽게 이해하는 것을 도우려는 내용들이다.


## 표준을 지켜서 얻는 장점.

- HTML 문법에 맞게 문서의 구조를 만들면 문서가 단순 명료해지기 때문에  문서의 관리가 용이하다.  
- 시각적 media(각종 desktop용 브라우저)뿐 아니라 소리, 점자, 프린터 등의 매체로 표현되었을 때 일관성을 유지할 수 있다.
- 검색엔진 Crawler에 최적화(SEO : Search Engine Optimization)되어 검색할 때 우선적으로 검색된다(네이버 등은 제외). Modern crawler들은 meta tag의 keywords나 description 등에 적어놓은 내용보다 실제 문서의 구조에서 검색 정보를 획득한다. HTML 문서의 구조를 문법에 맞지 않는 모호한 구조로 만들면 검색엔진이 정확한 구조를 해석할 수 없으므로 순위상 뒤로 밀린다. 
- 문서 로딩이 빠르다.
- Code가 compact하므로 불필요한 데이터를 소모하지 않으므로 통신량에 따라 비용을 지불하는 경우 호스팅 비용 절약.
- Chrome, FireFox 등의 브라우저(mobile 포함)에서 호환되므로 어떤 브라우저에서든지 일관되게 표현된다.

## HTML5+ 의 기본 문법
아래에 HTML 문법에 맞는 문서가 되기 위해 갖추어야 할 최소한의 문서를 만들었는데, 아래에 링크된 2개의 문서에서 내용을 발췌해 내가 이해하기 쉽게 합쳐 놓았다.  

이 동영상 아래 '더 보기...' 속의 link를 참조하기 바란다.

HTML5 Syntax : https://www.w3.org/TR/2012/WD-html-markup-20121025/syntax.html#syntax
HTML5 Documents : https://www.w3.org/TR/2012/WD-html-markup-20121025/documents.html#documents

## HTML 문법을 따르는 문서의 규칙
> A conformant document in the HTML syntax <span class="emph">must</span> consist of the following parts, in the following order:

1. BOM(Byte Order Mark) 문자. (Optional).
1. 주석과 공백문자 (Zero or More)
1. A doctype 선언
1. Locale 지정 (<span class="anBra">html</span>의 <code class="attr-name">lang</code> attribute)
1. Encoding 선언 (<span class="anBra">meta /</span>의 charset attribute)
1. Document's Title(<span class="anBra">title</span> element)
1. 주석과 공백문자 (Zero or More)
1. <span class="anBra">html</span> element와 해당 attributes (있을 경우) and its contents(<span class="anBra">head</span>, <span class="anBra">body</span>, 주석 등등 ).
1. 주석과 공백문자 (Zero or More)

## HTML5 표준에 맞는 최소한의 문서구조.
```html
<!-- comments -->
<!DOCTYPE html>
<html lang="ko">
<!-- comments -->
<head>
	<meta charset="utf-8" />
	<title>Document's Title</title>
</head>
<!-- comments -->
<body>
<!-- comments -->
</body>
<!-- comments -->
</html>
<!-- comments -->
```

## Element or Tag that's a question.
- ### div가 texts만을 contents로 가질 때
```html
<div class="wrap">
	Element냐 Tag이냐 그 것이 문제로다.
</div>
```

- ### div가 자식 elements와 texts를 가질 때
```html
<div class="wrap">
	<p><em>Element</em>냐 <em>Tag</em>이냐 그 것이 <strong>문제</strong>로다.</p>
</div>
```
- 위 코드의 출력결과
> *Element*냐 *Tag*이냐 그 것이 **문제**로다.

### 들여쓰기한 div의 구조
```html
<div class="wrap">
	<p>
		<em>Element</em>
		냐 
		<em>Tag</em>
		이냐 그 것이 
		<strong>문제</strong>로다.
	</p>
</div>
```

