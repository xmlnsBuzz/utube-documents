
# HTML보다 더 아래에... ![SIA Logo](../../img/sia-logo-first.svg "Stack It All")

---
<h2 class="special">뿌리는 땅 속에 있어야 한다.</h2>

<hr class="thin" />

## HTML 밑에 있는 것
<span class="anBra">html</span> element는 모든 elements를 담는 html 문서의 최상위 element이다. 따라서 <span class="anBra">html</span> element를 토대로 <span class="anBra">head</span>, <span class="anBra">body</span> 등의 모든 하위 element들이 위로 쌓이게(stacking) 되므로 <span class="anBra">html</span> element를 'root element' 또는 'document element'라 부른다.  

그렇다면 과연 <span class="anBra">html</span> 밑에는 아무 것도 없을까?  

그렇지 않다. <span class="anBra">html</span> element 바로 밑에 무언가가 있다. 이 번 시간에는 그 것에 대해 알아보자.

## Browser's Window Area
JavaScript DOM(Document Object Model)에서는 브라우저 창을 'window object'라고 부르고 BOM(Browser Object Model)에서는 'browser object'라 부르기도 하지만, 여기서 BOM은 논외로 한다.  

PC나 tablet이나 mobile phone에서 크롬 파이어폭스 등의 브라우저를 열면, 브라우저 interface가 나오고 인터페이스 내부에 창이라 부르는 영역이 생긴다. 만약 browser의 tab을 다섯 개 열었다면 모두 다섯 개의 window object가 존재하게 된다.

브라우저 주소 입력란(단축키 : <code class="alt">Alt</code> + <code>D</code>)에 'about:blank'라 입력하고 enter를 쳐 본다. 그러면 이미 알고 있다시피 흰색의 브라우저 창이 보이는데, 이 부분이 browser window이다.


## Viewport 
일반적으로 'Viewport'라 하면 mobile device의 스크린 만을 가리키는 것으로 알지만 W3C HTML과 CSS spec에서는 보다 포괄적인 의미에서 브라우저 창도 viewport라 부르며, 하나의 viewport 속에 다른 여러개의 viewport가 생길 수도 있다. 예로써 html 문서 속에 <span class="anBra">iframe</span>으로 다른 문서를 불러왔다면 이 때 생기는 창 역시 viewport이고 absolute나 fixed로 positioning된 사각형 영역 역시 viewport 다.

<h3 class="list-item">
	CSS3 positioning에서의 viewport 
</h3>  

W3C의 CSS Positioned Layout Module Level 3 (https://www.w3.org/TR/css-position-3/#viewport)에서는 absolute 또는 fixed로 positioning 된 element는 독립된 <span class="emph">canvas</span>를 생성한다고 정의한다.

<h3 class="list-item">
	Canvas 
</h3>  

Canvas (https://www.w3.org/TR/CSS2/intro.html#canvas ) 란 html 문서(이미지, 오디오, 비디오 포함) 작성자가 작성한 문서를 표현(rendering)하는 영역이다. 만약 canvas 내용물(contents)의 가로 세로 크기가 viewport를 넘친다(overflow)면 user agent의 메커니즘에 의해 가로나 세로로 scroll bar가 생기게 된다.

## Window object
JavaScript에서 html 문서의 어떤 element(s)를 control할 때, 예를 들어 '<span class="emph">block</span>'이라는 id를 가진 element를 호출할 경우 그 element를 

> document.getElementById('block')

라 가르킨다. 하지만 원래대로 표현하면

> <span class="emph">window</span>.document.getElementById('block')

이라 표현한다. 하지만 최상위 object인 window object는 편의상 생략 가능하도록 했다.