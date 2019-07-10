# CSS cascading 및 상속 레벨 3

## 요약
이 CSS 모듈은 스타일 규칙을 대조하고 모든 요소의 모든 속성에 값을 할당하는 방법을 설명한다. cascading 및 상속을 통해 모든 요소의 모든 속성에 값이 전달됩니다.

CSS 는 화면, 종이, 음성 등의 구조화 된 문서 (HTML 및 XML과 같은) 렌더링을 설명하기위한 언어이다.

## 이 문서의 상태
이 절에서는 이 설명서를 발행 할 당시의 상태를 설명한다. 다른 문서가이 문서보다 우선 할 수 있다. 최신 W3C 서적 목록과 이 기술보고서의 최신 개정판은 W3C 기술 보고서 ​​색인 (https://www.w3.org/TR/)에서 찾을 수 있다 .

이 문서는 CSS Working group에서 후보권고안으로 작성했습니다. 이 문서는 W3C 정식권고안이 되기 위한 것이다. 이 문서는 적어도 2018 년 10 월 28 일까지 전반적인 검토 기회를 보장하기 위해 후보권고안으로 남을 것이다.

GitHub의 안건들은 이 권고안에 대한 논의를 위해 우선시 됩니다. 이슈를 제기 할 때 제목에 "css-cascade"라는 텍스트를 넣으십시오. 다음과 같이하십시오. "[css-cascade] ... 의견 요약 ... ". 모든 문제와 의견은 보관되며, 과거 기록보관소도 있다 .

예비시행 보고서를 볼 수 있다

후보 권고안으로서의 출판은 W3C 회원들의 추천을 의미하지는 않습니다. 이것은 초안문서이며 언제든지 다른 문서로 업데이트, 교체 또는 폐기 될 수 있다. 진행중인 작업 이외에 이 문서를 인용하는 것은 부적절한다.

이 문서는 W3C 특허 정책에 따라 운영되는 그룹에 의해 작성되었습니다 . W3C 는 그룹의 산출물과 관련하여 이루어진 모든 공개 특허 공개 목록을 유지한다. 이 페이지에는 특허 공개 지침도 포함되어 있다. 개인이 필수적 주장을 포함한다고 생각하는 특허에 대한 실제 지식을 가진 개인은 W3C 특허 정책 섹션 6 에 따라 정보를 공개해야한다 .

이 문서는 2018 년 2 월 1 일 W3C 프로세스 문서의 적용을받습니다 .

마지막 초안 이후의 변경사항은 변경사항 섹션을 참조하십시오 .

목차
1. 소개
   1.1. 모듈 상호 작용
2. stylesheet 가져 오기 : @import 규칙
   2.1. CSS stylesheet의 내용 유형
3. 축약형 속성
   3.1. 모든 등록 정보 재설정 : all 등록 정보
4. 값 처리
   4.1. 선언 된 값
   4.2. cascading 값
   4.3. 지정된 값
   4.4. 계산 된 값
   4.5. 사용 된 값
   4.6. 실제 값
   4.7. 예제

5. 필터링

6. cascading
6.1. cascading 출처
6.2. Important 선언 : !important 주석
6.3. CSS가 아닌 표현적 암시의 우선 순위

7. 기본값
7.1. Initial Values : 초기값
7.2. Inheritance : 상속
7.3. 명시적 기본값
7.3.1. 속성 재설정하기 : initial 키워드
7.3.2. 명시적 상속 : inherit 키워드
7.3.3. 모든 선언 지우기 : unset 키워드

8. 바뀐 것들
8.1. 2016 년 5 월 19 일 후보 권고안 이후의 변화
8.2. 2013 년 10 월 3 일 후보 추천 이후의 변경 사항
8.3. 레벨 2 이후의 추가


적합성
문서 규칙
적합성 클래스
CSS의 책임 구현을위한 요구 사항
부분 구현
불안정하고 독점적 인 기능의 구현
CR 수준 기능의 구현
CR 종료 기준
색인
이 사양에 정의 된 용어
참조로 정의 된 용어
참고 문헌
규범 참조
유익한 참고 문헌
부동산 지수






## 1. 소개
CSS의 근본적인 설계 원리 중 하나는 cascading으로 , 여러 stylesheet가 문서의 표현에 영향을 미칠 수 있다. 다른 선언으로 동일한 요소/속성 조합에 대해 다른 선언을 하여 값을 달리 설정할 때 상충(서로 다투는 경우)하는 어떻게든 해결되어야 한다.

반대의 문제는 요소/속성 조합에 대한 값 설정을 선언하지 않을 때 발생한다. 이 경우, 상속을 통해 또는 속성의 초기 값(default values)을 보고 값을 찾는다 .

Cascading 및 default 처리는 입력받은 선언 세트를 취득하고,각 element에 대한 각각의 속성을 특정값으로 출력한다.

문서의 모든 element에 지정된 모든 properties의 값을 찾는 규칙은 이 spec에 설명되어 있다. 페이지 컨텍스트와 여백 상자에서 지정된 값을 찾는 규칙은 [css-page-3](https://www.w3.org/TR/css-cascade-3/#biblio-css-page-3)에 설명되어 있다.

### 1.1. 모듈 상호 작용
이 section은 표준적이다.

이 모듈은 [CSS2] 6 장 에서 정의 된 속성 값, cascading 및 상속을 할당하는 규칙을 대체하고 확장한다.

다른 CSS 모듈은 여기에 정의 된 일부 구문 및 기능의 정의를 확장 할 수 있다. 예를 들어, Media Queries Level 4 사양을 이 모듈과 결합하면 이 사양에서 사용된 <media-query> 값 유형의 정의가 확장된다.

2. stylesheet 가져 오기 : @import rule
@import rule은 사용자가 다른 stylesheet으로 부터 style rule을 가져올 수 있다.  @import의 규칙이 유효한 stylesheet를 참조하고 있다면, 사용자 에이전트는 두 가지 예외를 빼고 import된 stylesheet의 내용이 @import를 사용한 위치에 그대로 놓여진 것 처럼 취급해야 된다.

@namespace 규칙 과 같은 기능 이 특정 stylesheet에만 적용되고 가져온 속성에는 적용되지 않는다고 명시적으로 정의한 경우 가져온 stylesheet에는 적용되지 않습니다.

기능이 stylesheet의 두 개 이상의 구문의 상대적인 순서에 의존하는 경우 (예 : @charset 앞에 다른 내용이 없어야 함) 동일한 stylesheet의 구문간에 만 적용됩니다.

예를 들어, 가져온 stylesheet의 스타일 규칙에 있는 선언은 @import되는 위치에서 stylesheet의 내용이 그대로 쓰여진 것처럼 캐스캐이드와 상호 작용한다 .

모든 @import 규칙은 stylesheet (만약 가장 먼저 선언되어야 할 @charset rule이 있을 경우는 예외)에 있는 다른 모든 규칙 및 스타일 규칙보다 우선해야한다. 그렇지 않으면 @import 규칙이 유효하지 않습니다. @import 의 구문 은 다음과 같습니다.

@import [ <url>  |  <string> ] <media-query-list> ? ;
를 Where <URL> 또는 <문자열>는 stylesheet의 URL을 제공한다 import하고 선택한다 <media query 목록> 한다 ( 수입 조건 )이 적용되는 조건을 말한다.

만약 <string>이 주어진다면, 그것은 <URL>과 같은 값으로 해석해야만 한다.

다음 줄은 의미가 동일하며 @import 구문 ( url () 과 벌크 문자열 모두)을 보여줍니다.

> @import  "mystyle.css" ;
> @import  url ( "mystyle.css" );

Import 조건은 수입이 매체에 의존 할 수 있다. 어떤이 없을 수입 조건 , 수입은 무조건이다. ( <media-query-list>에 all 을 지정해도 동일한 효과가 있다.)

URL 다음의 표현식 평가 및 전체 구문은 media query 사양 [MEDIAQ]에 의해 정의됩니다 . media query가 일치하지 않으면 가져온 stylesheet의 규칙이 가져온 stylesheet가 지정된 media query로 @media 블록에 래핑 된 것처럼 적용되지 않습니다 . 따라서 사용자 에이전트는 media query가 일치하지 않는 한 미디어 종속 가져 오기를 가져 오는 것을 피할 수 있다.

다음 규칙은 @import 규칙을 미디어 종속적으로 만들 수있는 방법을 보여줍니다 .
@import  url ( "fineprint.css" ) print ;
@import  url ( "bluish.css" ) 투영 , tv ;
@import  url ( "narrow.css" ) 핸드 헬드 및 ( 최대 너비 : 400px);
동일한 stylesheet가 여러 위치에서 문서로 가져 오거나 링크되는 경우, 사용 도구는 링크가 독립적 인 stylesheet에있는 것처럼 각 링크를 처리해야한다.

참고 : 이는 리소스 가져 오기에 대한 요구 사항을 제시하지 않으며 stylesheet가 CSSOM에 반영되고이 stylesheet와 같은 사양에 사용되는 방법 만 포함한다. 적절한 캐싱을 가정 할 때, UA가 stylesheet를 여러 번 링크하거나 가져 왔더라도 한 번만 가져올 수 있다.

가져온 stylesheet 의 원본 은 가져온 stylesheet의 원본 이다.

가져온 stylesheet 의 환경 인코딩 은 가져온 stylesheet의 인코딩이다. [css-syntax-3]

2.1. CSS stylesheet의 내용 유형
가져온 stylesheet 처리는 링크 된 자원의 실제 유형에 따라 다릅니다. 리소스에 Content-Type 메타 데이터 가 없거나 호스트 문서가 쿼크 모드에 있고 가져온 stylesheet 와 같은 출처 를 가진 경우 연결된 리소스의 유형은 다음과 같습니다 text/css. 그렇지 않으면 유형은 Content-Type 메타 데이터 에서 결정됩니다 .

링크 된 자원 유형이 text/css이면, CSS stylesheet로 해석되어야한다. 그렇지 않으면 네트워크 오류로 해석되어야한다.

3. 속기 속성
일부 속성은 속기 속성 이므로 작성자는 속성 하나를 사용하여 여러 속성의 값을 지정할 수 있다. 약식 속성은 그 모든 설정 긴 형식 하위 속성을 대신 확장 정확히 것처럼.

속기 양식 에서 값을 생략 할 경우 달리 정의되지 않는 한 각 "누락 된" 하위 특성 에는 초기 값 이 지정됩니다 .

즉, 속기 속성 선언 은 명시 적으로 설정되지 않은 하위 속성 을 포함하여 모든 하위 속성을 항상 설정 한다 . 부주의하게 사용하면 실수로 일부 하위 속성이 재설정 될 수 있다 . 조심스럽게 사용되면 속기 는 부주의로 다른 소스에서 cascading으로 하위 속성 을 재설정하여 "빈 슬레이트"를 보장 할 수 있다.
예를 들어 배경색 : 녹색이 아닌 배경색 : 녹색을 작성 하면 배경색이 배경 이미지로 배경을 이미지로 설정했을 수있는 이전 선언을 무시한다 .

예를 들어 CSS 레벨 1 글꼴 속성은 글꼴 스타일 , 글꼴 변형 , 글꼴 두께 , 글꼴 크기 , 선 높이 및 글꼴 모음 을 한꺼번에 설정하기위한 속기 속성이다 . 이 예제의 여러 선언은 다음과 같습니다.
h1 {
 글꼴 두께 : 굵게 ;
 폰트 크기 :  12 에서 pt ;
 라인 높이 :  14 에서 pt ;
 font-family : Helvetica ;
 글꼴 변형 : 보통 ;
 글꼴 스타일 : 일반 ;
}
따라서 다음과 같이 다시 쓸 수 있다.

H1 {  폰트 : 굵은 12 에서 pt / 14 에서 pt 돋움 }
더 많은 글꼴  하위 속성 이 CSS에 도입되면 속기 선언은 그것들을 초기 값으로 재설정한다.

경우에 따라 속기 는 하위 속성의 값과 직접적으로 일치하지 않는 구문 또는 특수 키워드가 다를 수 있다 . 이러한 경우, 속기 는 명시 적으로 값의 확장을 정의한다.

다른 경우에, 속성은있을 리 전용 서브 속성 기타 같은 속기의 하위 속성 , 상기 속기 의해 때 불특정 초기 값으로 리셋하지만 속기는 설정 구문이 포함되지 않을 수 서브을 속성 을 다른 값으로 변경한다. 예를 들어 border shorthand는 border-image 를 none 의 초기 값으로 재설정 하지만 다른 것으로 설정하는 구문은 없습니다. [css-backgrounds-3]

경우 속기가 의 하나로서 지정된 CSS 전체 키워드  [CSS - 값 3] , 그것의 모든 세트 하위 속성 임을 포함한 모든 해당 키워드에 리셋 전용 서브 속성 . (이 키워드는 단 하나의 선언에있는 다른 값과 결합 될 수 없으며, 속기에는 포함되지 않습니다.)

선언 속기 될 속성을 ! 중요한 것은 그 모든 선언에 해당 하위 속성을 로 ! 중요한다 .

3.1. 모든 속성 재설정 : all 속성
3.1. Resetting All Properties: the all property


| Name 	         |    all    |
| :---------   | --------:  |
| Value	  | initial  inherit  unset |
| Initial  |	see individual properties |
| Applies to 	| see individual properties|
| Inherited  |	see individual properties|
| Percentages  |	see individual properties|
| Media 	|see individual properties|
| Computed value  |	see individual properties|
| Animation type  |	see individual properties|
| Canonical order  |	per grammar |

all property는 'direction', 'unicode-bidi'를 제외한 모든 CSS properties를 재설정(reset)시키는 축약형 property이다. CSS-wide-keywords(initial, inherit and unset)만 사용할 수 있다. all property는 사용자 정의 속성(--variables와 같은)은 reset 시키지는 않는다 .

> 참고 : 예외적으로 'direction'과 'unicode-bidi' 같은 CSS property는 실제로 마크업 레벨의 기능이므로 작성자의 stylesheet에 설정하면 안된다 . (이런 것들은 UA에서 지원하지 않는 문서의 언어를 스타일링하는 CSS 속성으로써 만 존재한다.) 대신에 제작자는 HTML의 dir attribute 같은 적절한 마크 업을 사용해야한다.  
 [css-writing-modes-3](https://www.w3.org/TR/css-writing-modes-3/) 참조

<blockquote class="add1">예를 들어 작성자가 element에 'all: initial' 을 지정하면 이 선언이 모든 상속을 차단하고 모든 속성을 reset한다. 문서작성자, 사용자 또는 사용자 에이전트 수준의 cascading에 규칙이 없는 것과 같이, 이 방법은 페이지에 포함 된 "위젯"(만약에 사용한다면)의 루트 요소에 유용 할 수 있다. 이 요소(위젯의 루트)는 대체적으로 외부 페이지의 스타일을 상속 받기를 원하지 않는 경우가 많지 않은가. 그러나 해당 요소에 적용되는 모든 "default"스타일 (예 display: block;과 같은 블록 요소의 UA stylesheet에서 display : block <div> )도 날아가 버린다.</blockquote>

4. Value의 처리
사용자 에이전트가 문서를 파싱하고 문서 트리를 구성한 후에는 트리의 모든 요소와 서식 구조의 모든 상자에 대상 미디어 유형에 적용되는 모든 속성의 값을 할당해야한다.

주어진 요소 또는 상자에 대한 CSS 속성의 최종 값은 다단계 계산의 결과이다.

- 먼저 요소에 적용된 선언 된 모든 값 이 각 요소의 각 속성에 대해 수집됩니다. 요소에 0 또는 여러 개의 선언 된 값이 적용될 수 있다.  

- cascading 배열은 cascading 값을 산출한다 . 요소 당 속성 당 최대 하나의 cascading 값이 있다.  

- Defaulting은 지정된 값을 산출한다 . 모든 요소에는 속성 당 정확히 하나의 지정된 값 이 있다.  

- 값의 종속성을 해결하면 계산된 값이 산출된다 . 모든 요소에는 속성 당 정확히 하나의 계산 된 값이 있다.  

- 문서 서식을 지정하면 사용된 값이 산출된다 . 해당 속성이 요소에 적용되는 경우 요소는 지정된 속성에 대해 사용된 값만을 갖는다.  

- 마지막으로, 사용 된 값은 디스플레이 환경의 제약 조건에 따라 실제값으로 변환된다 . 사용 된 값과 마찬가지로 요소의 특정 속성에 대한 실제값이 있거나 없을 수 있다 .

4.1. 선언 된 값
요소에 적용된 각 속성 선언은 element와 결속된 속성에 대해 선언된 값을 제공한다. 자세한 내용은 필터링 선언을 참조.

그런 다음 이 값들은 cascading으로 처리된 이 값들 중에서 하나의 "최종값"을 선택한다.

4.2. Cascading 값
캐스케이드된 값의 결과를 나타내는 캐스케이드 : 선언된 값은 캐스케이드 보다 우선한다 (캐스케이드의 출력에서). 캐스케이드값의 출력이 목록에 없으면 cascading값은 없다 .

4.3. 지정된 값
지정된 값은 stylesheet 작성자가 해당 요소에 의도적으로 특정시킨 속성의 값이다. 이는 모든 요소의 모든 속성에 대해 지정된 값이 있음을 보장하면서 기본 프로세스를 통해 cascading 값 을 배치 한 결과이다 .

대부분의 경우 지정된 값은 cascading 값 이다. 어떻든 캐드캐이드된 값이 아예 없는 경우, cascading 값에서 모두는 지정된 값은 기본값(default)이 된다. CSS-wide keywords는 이 것들이 property의 캐스캐이드 값일 때 특별히 다루어져서, 해당 키워드의 요구에 따라 특정값을 지정한다. §7.3 명시 불이행을 .

4.4. 계산 된 값
계산 된 값이 해석 처리의 결과 지정된 값을 속성 정의 테이블의 "계산 된 값"라인에 기재된 일반적위한 준비를 absolutizing 상속 .

참고 : 계산 된 값은 동안 부모로부터 자식에게 전달되는 값이다 상속 . 역사적인 이유로, 반드시 getComputedStyle()함수가 리턴 한 값일 필요는 없습니다 .

지정된 값이 어느 (마찬가지로, 다른 값, 즉, 상대적이지 절대 수 적색 또는 2mm 또는 상대 (같이, 다른 값에 대해, IE) 자동차 , 2EM )를. 상대적인 가치를 계산하는 것은 일반적으로 그것을 절대화한다 :
상대 단위 ( em , ex , vh , vw ) 값은 적절한 참조 크기를 곱하여 절대 값으로 만들어야한다
특정 키워드 (예를 들어, 작은 , 대담 )의 정의에 따라 교체해야한다
일부 속성의 백분율에 참조 값 (속성에서 정의)을 곱해야한다.
유효한 상대 URL은 절대적이되도록 해석되어야한다.
예에서의 (f), (g) 및 (H) 참조 아래 표 .

참고 : 일반적으로 계산 된 값 은 문서를 레이아웃하거나 네트워크 요청을 해결하거나 요소 및 해당 상위가 아닌 다른 값을 검색하는 등의 고비용 또는 병렬 처리가 어려운 작업을 수행하지 않고 가능한 한 지정된 값 을 결정한다 .

계산 된 값은 한다 (라인 "적용 대상"에 의해 정의 된대로) 속성이 적용되지 않는 경우에도 존재한다. 그러나 일부 속성은 속성이 요소에 적용되는지 여부에 따라 계산 된 값 을 결정하는 방식을 변경할 수 있다 .

4.5. 사용 된 값
사용 값은 복용의 결과 계산 된 값 과, 문서의 레이아웃에 사용 절대 이론치하도록 나머지 계산을 완료한다. 속성이이 요소에 적용되지 않으면 해당 요소 에 해당 값 이 사용 되지 않습니다 .

예를 들어 width : auto 선언은 요소 조상의 레이아웃을 알지 못하는 길이로 해석 될 수 없으므로 계산 된 값 은 자동 이며 사용 된 값 은 절대 길이 (예 : 100px) 이다. [CSS2]

또 다른 예로, a <div>는 계산 된 break-before 값 auto를 가질 수 있지만 첫 번째 하위에서 propagation by page 의 사용 된 break-before 값을 얻습니다 . [css-break-3]

마지막으로 속성이 요소에 적용되지 않으면 사용 된 값 이 없습니다 . 예를 들어, flex 속성에는 유연한 항목 이 아닌 요소에 사용 된 값 이 없습니다 .

4.6. 실제 값
사용되는 값은 원칙적으로 사용할 준비가 있지만, 사용자 에이전트는 주어진 환경에서 값을 활용하지 못할 수 있다. 예를 들어 사용자 에이전트는 정수 픽셀 너비의 테두리 만 렌더링 할 수 있으므로 사용 된 너비 와 비슷해야한다 . 또한 요소의 글꼴 크기는 글꼴의 사용 가능성 또는 font-size-adjust 속성 의 값에 따라 조정해야 할 수 있다. 실제 값은 그러한 조정이 이루어진 후 사용 된 값이다.

참고 : 요소의 실제 값을 프로빙하면 문서 배치 방법에 대해 많이 알 수 있다. 그러나 모든 정보가 실제 값으로 기록되는 것은 아닙니다. 예를 들어, page-break-after 속성 의 실제 값은 요소 다음에 페이지 나누기가 있는지 여부를 반영하지 않습니다. 마찬가지로, 고아 의 실제 값은 특정 요소에 고아 라인이 얼마나 많은지 반영하지 않습니다. 아래 표의 예 (j)와 (k)를 참조하십시오 .

4.7. 예제들
재산  승리 선언   cascading 값 지정 값    계산 된 가치 사용 가치   실제 값
(에이)    텍스트 정렬  text-align: left    왼쪽  왼쪽  왼쪽  왼쪽  왼쪽
(비) border-top-width , border-right-width , border-bottom-width , border-left-width border-width: inherit   상속하다    4.2 픽셀  4.2 픽셀  4.2 픽셀  4px
(기음)    폭   (없음)    (없음)    자동 (초기 값)   자동  120px   120px
(디) 목록 스타일의 위치  list-style-position: inherit    상속하다    내부  내부  내부  내부
(이자형)   목록 스타일의 위치  list-style-position: initial    머리 글자   외부 (초기 값)   외부  외부  외부
(에프)    글꼴 크기   font-size: 1.2em    1.2em   1.2em   14.1px  14.1px  14px
(지) 폭   width: 80%  80 %    80 %    80 %    354.2 픽셀    354px
(h) 폭   width: auto 자동  자동  자동  134px   134px
(나는)    신장  height: auto    자동  자동  자동  176px   176px
(j) 페이지 나누기 후   (없음)    (없음)    자동 (초기 값)   자동  자동  자동
(케이)    고아  orphans: 3  삼   삼   삼   삼   삼
5. 필터링
선언 된 값 을 찾으려면 구현은 먼저 각 요소에 적용되는 모든 선언을 식별해야한다. 다음 경우에 선언이 요소에 적용됩니다.

현재이 문서에 적용되는 stylesheet에 속한다.
거짓 조건 이있는 조건부 규칙 [CSS3-CONDITIONAL]에 의해 규정되지 않습니다 .
선택기가 요소와 일치하는 스타일 규칙에 속한다. [SELECT] ( 필요하다면 스코핑 을 고려하십시오.)
문법적으로 유효한다. 선언의 속성은 알려진 속성 이름이고 선언의 값은 해당 속성의 구문과 일치한다.
적용되는 선언 값은 각 요소의 각 특성에 대해 선언 된 값 목록을 형성 한다 . 다음 절인 캐스케이드 는이 목록의 우선 순위를 지정한다.

6. cascading
캐스케이드란 해당 element에 지정한 CSS 프로퍼티를 선언된 값(declaired value)들의 우선순위에 의해 순서화된 목록에서 가져와 결정하는데, 이에 따라 선택된(우선순위에 따라)하나의 cascade value만을 출력한다. 

캐스케이드는 우선순위의 위계에 따라 아래와 같이 내림차순으로 정렬한다.

### 출처와 중요성
선언의 출처란 그것이 어디서 왔는지에 근거하며, 출처의 중요도는 !important 선언이 되었든 안되었든 간에(아래 참조). 다양한 출처의 우선순위는 내림차순으로 다음과 같다.

1. Transition 선언 [CSS Transition 1]
1. 사용자 에이전트의 !important 선언 - 각 browser에 지정한 w3c의 default style에(예를 들어 head{display:none;} 과 같이 지정한 것)
1. 사용자의 !important 선언
1. 중요한 작성자의 !important 선언
1. 애니메이션의 !important 선언 [css-animations-1]
1. 일반 작성자의 !important 선언
1. 일반 사용자 의 !important 선언
1. 일반 사용자 에이전트 의 !important 선언

위의 목록에서 앞 부분 출처의 선언이 뒤에 나오는 것들을 항상 이긴다(override, wins, overlap).

### 특성

선택기 모듈  [SELECT]는 선택기의 특이성을 계산하는 방법을 설명한다. 각 선언은 나타나는 스타일 규칙과 동일한 특이성을 갖습니다.이 단계의 목적에 따라 스타일 규칙의 내용 (예 : 스타일 속성 의 내용)에 속하지 않는 선언 은 특정 선택 자보다 높은 특수성을 가진 것으로 간주됩니다 . 가장 높은 특이성을 가진 선언이 승리한다.
Order of Appearance
The last declaration in document order wins. For this purpose:
Declarations from imported style sheets are ordered as if their style sheets were substituted in place of the @import rule.
Declarations from style sheets independently linked by the originating document are treated as if they were concatenated in linking order, as determined by the host document language.
Declarations from style attributes are ordered according to the document order of the element the style attribute appears on, and are all placed after any style sheets.
The output of the cascade is a (potentially empty) sorted list of declared values for each property on each element.

6.1. Cascading Origins
Each style rule has a cascade origin, which determines where it enters the cascade. CSS defines three core origins:

Author Origin
The author specifies style sheets for a source document according to the conventions of the document language. For instance, in HTML, style sheets may be included in the document or linked externally.
User Origin
The user may be able to specify style information for a particular document. For example, the user may specify a file that contains a style sheet or the user agent may provide an interface that generates a user style sheet (or behaves as if it did).
User Agent Origin
Conforming user agents must apply a default style sheet (or behave as if they did). A user agent’s default style sheet should present the elements of the document language in ways that satisfy general presentation expectations for the document language (e.g., for visual browsers, the EM element in HTML is presented using an italic font). See e.g. the HTML user agent style sheet. [HTML]
Extensions to CSS define the following additional origins:

Animation Origin
CSS Animations [css-animations-1] generate “virtual” rules representing their effects when running.
Transition Origin
Like CSS Animations, CSS Transitions [css-transitions-1] generate “virtual” rules representing their effects when running.
6.2. Important Declarations: the !important annotation
CSS attempts to create a balance of power between author and user style sheets. By default, rules in an author’s style sheet override those in a user’s style sheet, which override those in the user-agent’s default style sheet. To balance this, a declaration can be made important, which increases its weight in the cascade and inverts the order of precedence.

A declaration is important if it has a !important annotation, as defined by [css-syntax-3]. i.e. if the last two (non-whitespace, non-comment) tokens in its value are the delimiter token ! followed by the identifier token important.

[hidden] { display: none !important; }
An important declaration takes precedence over a normal declaration. Author and user style sheets may contain !important declarations, with user !important declarations overriding author !important declarations. This CSS feature improves accessibility of documents by giving users with special requirements (large fonts, color combinations, etc.) control over presentation.

Important declarations from all origins take precedence over animations. This allows authors to override animated values in important cases. (Animated values normally override all other rules.) [css-animations-1]

User agent style sheets may also contain !important declarations. These override all author and user declarations.

다음 예제의 사용자 stylesheet에있는 첫 번째 규칙 은 작성자의 stylesheet에있는 해당 선언을 무시 하는 ! important 선언을 포함한다 . 두 번째 규칙의 선언은 중요한 것으로 표시되기 때문에 또한 승리 할 것 이다. 그러나 사용자 stylesheet의 세 번째 선언은 중요 하지 않으므로 작성자 stylesheet의 두 번째 규칙 ( 단축 속성 에 스타일을 설정하는 경우)이 손실됩니다 . 또한 두 번째 선언은 ! important 이므로 두 번째 작성자 규칙에서 세 번째 작성자 규칙은 손실됩니다 . 이것은 중요한 선언이 작성자 stylesheet 내에서 기능을 가짐을 보여줍니다 .
/ * 사용자 stylesheet * /
p {  text-indent :  1 em ! important}
p {font-style : italic! 중요}
p {font-size : 18pt}

/ * 작성자의 stylesheet * /
p {text -indent : 1.5em! important}
p {font : normal 12pt sans-serif! 중요}
p {font-size : 24pt}
재산  이기는 가치
텍스트 들여 쓰기   1em
글꼴 스타일  이탤릭체
글꼴 크기   12pt
글꼴 모음   산세 리프
6.3. CSS가 아닌 프레젠테이션 힌트의 우선 순위
UA는 소스 문서의 마크 업 (예 : [HTML] 의 bgcolor속성 또는 s요소)에서 프리젠 테이션 힌트를 존중할 수 있다 . 모든 문서 언어 기반 스타일링은 해당 CSS 규칙으로 변환되어야하며 사용자 에이전트 수준에서 캐스케이드를 입력하거나 작성자 stylesheet의 시작 부분에 특수성이 0 인 작성자 수준 규칙으로 취급되어야한다. 문서 언어는 프리젠 테이션 힌트가 UA 또는 캐스케이드의 작성자 레벨에 입력되는지 여부를 정의 할 수 있다. 그렇다면 UA는 그에 따라 행동해야한다. 예를 들어 [SVG11] 은 프리젠 테이션 속성을 작성자 레벨에 매핑한다.

Note: Presentational hints entering the cascade at the UA level can be overridden by author or user styles. Presentational hints entering the cascade at the author level can be overridden by author styles, but not by non-!important user styles. Host languages should choose the appropriate level for presentational hints with these considerations in mind.

7. Defaulting
When the cascade does not result in a value, the specified value must be found some other way. Inherited properties draw their defaults from their parent element through inheritance; all other properties take their initial value. Authors can explicitly request inheritance or initialization via the inherit and initial keywords.

7.1. Initial Values
각 속성에는 속성 정의 테이블에 정의 된 초기 값이 있다. 속성이 없으면 상속 된 속성 과 캐스케이드 값을 초래하지 않고, 그 지정된 값 속성의 그것 인 초기 값 .

7.2. 계승
상속 은 부모 요소에서 자식 요소로 속성 값을 전달한다. 요소의 상속 된 값 은 요소의 부모 요소에있는 속성 의 계산 된 값 이다. 상위 요소가없는 루트 요소의 경우 상속 된 값 은 속성 의 초기 값 이다.

(의사 요소는 각 의사 요소 [SELECT] 에 대해 설명 된 가상의 태그 시퀀스에 따라 상속됩니다 .)

일부 속성은 속성 정의 테이블에 정의 된대로 상속 된 속성 이다. 이것은 캐스케이드 결과가 값이 아닌 경우 값이 상속에 의해 결정된다는 것을 의미한다.

속성은 명시 적으로 상속 될 수도 있다. inherit 키워드를 참조하십시오 .

참고 : 상속은 문서 트리를 따르며 익명 상자에 의해 차단 되거나 그렇지 않으면 상자 트리의 조작에 의해 영향을받지 않습니다.

7.3. 명시 적 기본값
몇 가지 CSS 전역 속성 값은 아래에 정의되어 있다. 이러한 값을 갖도록 속성을 선언하면 특정 기본 동작을 명시 적으로 지정한다. CSS 값 및 단위 수준 3  [css-values-3]에 지정된대로 모든 CSS 속성은이 값을 허용 할 수 있다.

7.3.1. 프로퍼티의 리 셋트 : 초기 키워드
경우 cascading 값 은 IS 초기 키워드, 속성의 지정된 값은 그이다 초기 값 .

7.3.2. 명시 적 상속 : inherit 키워드
속성 의 cascading 값 이 계승 키워드 인 경우 속성의 지정된 값 과 계산 된 값 은 상속 된 값 이다.

7.3.3. 모든 선언 지우기 : unset 키워드
경우 cascading 값 속성의이이다 해제 키워드, 그것은이로 처리됩니다, 상속 재산의 경우 상속 하고, 그렇지 않은 경우,이로 처리됩니다 초기 . 이 키워드 는 캐스케이드 이전에 발생하는 선언 된 모든 값을 효과적으로 지우고 , 속성 (또는 속기의 모든 길이)을 올바르게 상속하거나 적절하지 않게 한다.

8. 변경 사항
8.1. 2016 년 5 월 19 일 후보 권고안 이후 변경된 사항
2016 년 5 월 19 일 후보 권고안 이후이 규격에 대한 다음과 같은 사소한 변화가 있었다 .

모든 사용자 정의 속성 이 모두 속기에 의해 재설정되지 않는다는 것을 분명히했습니다 . ( 2518 )
모든 속성이다 속기 재설정 모든 제외 CSS 속성 방향 및 유니 코드 쌍방향를 . ... 그것은 사용자 정의 속성  [css-variables-1]을 재설정하지 않습니다 .

stylesheet 가져 오기가 단순히 내용을 삽입하는 것과는 다른 두 가지 예외가 있다.
는 IF @import의 규칙이 유효한 스타일을 말한다 그들은 대신에 기록 된 것처럼, 사용자 에이전트는 stylesheet의 내용을 취급해야 @import의 규칙 두 가지 예외는 있다.

@namespace 규칙 과 같은 기능 이 특정 stylesheet에만 적용되고 가져온 속성 은 적용되지 않는다고 명시 적으로 정의한 경우 가져온 stylesheet에는 적용되지 않습니다.
기능이 stylesheet의 두 개 이상의 구문의 상대적인 순서에 의존하는 경우 (예 : @charset 앞에 다른 내용이 없어야 함) 동일한 stylesheet의 구문간에 만 적용됩니다.
기능이 HTML에서 제거됨에 따라 범위가 지정된 stylesheet에 대한 언급이 삭제되었습니다. ( 문제 637 )
원래 DOM 레벨 2 스타일에 의해 정의 되고 나중에 폐기 된 사용되지 않는 "대체"원점에 대한 언급이 삭제 되었습니다.
댓글의 처분이 가능한다.

8.2. 2013 년 10 월 3 일 이후 후보자 추천 변경
2013 년 10 월 3 일 후보 권고안 이후이 규격에 다음과 같이 변경되었다 .

가져온 stylesheet의 정의 된 환경 인코딩 .
가져온 stylesheet 의 환경 인코딩 은 가져온 stylesheet의 인코딩이다. [css-syntax-3]

중요한 규칙의 구문을 보려면 [css-syntax-3] 을 참조하십시오 .
중요 주석 이 있다면 선언은 중요 한다 .[css-syntax-3]에 정의 된대로 .

설명 재설정 전용 하위 속성을 그들은 또한 속기 선언에서 CSS 전체 키워드 값에 의해 영향을받을 것이 분명.
다른 경우에, 속성은있을 리 전용 서브 속성 기타 같은 속기의 하위 속성 , 상기 속기 의해 때 불특정 초기 값으로 리셋하지만 속기는 설정 구문이 포함되지 않을 수 서브을 속성 을 다른 값으로 변경한다. 예를 들어 border shorthand는 border-image 를 none 의 초기 값으로 재설정 하지만 다른 것으로 설정하는 구문은 없습니다. [css-backgrounds-3]

경우 속기가 의 하나로서 지정된 CSS 전체 키워드  [CSS - 값 3] , 그것의 모든 세트 하위 속성을 , 그 키워드 있는 그 어떤을 포함하여 재설정 전용 하위 속성 . (이 키워드는 단 하나의 선언에있는 다른 값과 결합 될 수 없으며, 속기에는 포함되지 않습니다.)

댓글의 처분이 가능한다.

8.3. 레벨 2 이후 추가
레벨 2 이후에 다음 기능이 추가되었습니다 .

모든 속기
설정되지 않은 키워드
캐스케이드 로의 애니메이션 및 전환의 통합 .
감사 인사
David Baron, Simon Sapin 및 Boris Zbarsky는이 사양에 기여했습니다.

개인 정보 보호 및 보안 고려 사항
캐스케이드 프로세스는 동일 원점 stylesheet와 크로스 원점 stylesheet를 구별하지 않으므로 교차 원점 stylesheet의 내용을 문서에 적용한 계산 된 스타일에서 추론 할 수 있다.

스타일 규칙 적용을 통해 표현 된 사용자 기본 설정과 UA 기본값은 cascading 프로세스에 의해 노출되며 문서에 적용되는 계산 된 스타일에서 추론 할 수 있다.

@import의 규칙은 적용되지 않습니다 CORS 프로토콜을 로드 출처 간 stylesheet 대신 그들을 자유롭게 수입하고 적용 할 수 있도록.

@import의 규칙이없는 자원 가정 Content-Type메타 데이터 이다 (호스트 문서가 쿼크 모드에있는 경우 또는 동일 원본 파일)을 text/css잠재적으로 임의의 파일이 민감한 데이터를 유추 할 수 있도록 페이지에 수입 CSS로 해석 될 수 있도록, 문서에 적용되는 계산 된 스타일.

적합성
문서 규칙
적합성 요구 사항은 설명 어설 션과 RFC 2119 용어의 조합으로 표현됩니다. 규범적인 부분에서 핵심어는 반드시 "반드시", "꼭 필요하지 않다", "필요하다", "있을 것", "하지 말아야한다", "하지 말아야한다", "권고하다", "할 수도있다", "선택 가능하다" 이 문서의 내용은 RFC 2119에 설명 된대로 해석되어야한다. 그러나 가독성을 위해이 단어는이 사양의 모든 대문자로 표시되지 않습니다.

이 표준의 모든 텍스트는 명시 적으로 비표준, 예제 및 메모로 표시된 섹션을 제외하고는 규범 적이다.  [RFC2119]

이 명세서의 예는 "예를 들어"와 같이 소개되거나 다음과 같이 표준 텍스트와 분리되어 설정됩니다 class="example".

이것은 유익한 예이다.

유익한 참고 사항은 "메모"라는 단어로 시작하며 다음과 같이 표준 텍스트와 구분됩니다 class="note".

이것은 유익한 참고한다.

권고는 특별한주의를 환기시키기위한 스타일의 규범적인 섹션 <strong class="advisement">이며 다음과 같이 다른 규범적인 텍스트와 구별됩니다 .
UA는 접근 가능한 대안을 제공해야한다.
적합성 클래스
이 규격에 대한 적합성은 3 가지 적합성 등급에 대해 정의된다.

stylesheet
CSS stylesheet .
렌더러
stylesheet의 의미를 해석하고이를 사용하는 문서를 렌더링 하는 UA .
저작 도구
UA stylesheet를 작성한다.
stylesheet는이 모듈에 정의 된 구문을 사용하는 모든 명령문이이 모듈에 정의 된 각 기능의 일반 CSS 문법 및 개별 문법에 따라 유효한 경우이 사양을 준수한다.

렌더러는, 적절한 사양으로 정의 된 stylesheet를 해석하는 것 외에도, 올바르게 스펙 분석하고 그에 따라 문서를 렌더링함으로써이 스펙이 정의한 모든 기능을 지원하는 경우,이 스펙을 준수한다. 그러나 UA가 장치의 한계로 인해 문서를 올바르게 렌더링 할 수 없다고해서 UA가 부적합하게되지는 않습니다. 예를 들어, UA는 흑백 모니터에서 색상을 렌더링 할 필요가 없습니다.

저작 도구는이 모듈의 일반 CSS 문법 및 각 기능의 개별 문법에 따라 구문 적으로 올바른 stylesheet를 작성하고이 모듈에 설명 된대로 stylesheet의 다른 모든 적합성 요구 사항을 충족하면이 사양을 준수한다.

CSS의 책임 구현을위한 요구 사항
다음 섹션에서는 현재와 미래의 상호 운용성을 향상시키는 방식으로 책임있게 CSS를 구현하기위한 몇 가지 준수 요구 사항을 정의한다.

부분 구현
제작자가 순방향 호환 파싱 규칙을 활용하여 폴백 값을 할당 할 수 있도록 CSS 렌더러 는 사용 가능한 규칙이없는 규칙, 속성, 속성 값, 키워드 및 기타 구문 구문 을 무효로 처리 하고 적절하게 무시 해야한다 지원 수준 . 특히 사용 도구 는 지원되지 않는 속성 값을 선택적으로 무시 해서는 안되며 지원되는 값을 단일 다중 값 속성 선언에서 준수해야한다. 즉, 지원되지 않는 값을 사용해야하는 값이 유효하지 않은 것으로 판단되면 CSS는 전체 선언을 무시해야한다.

불안정하고 독점적 인 기능의 구현
향후 안정적인 CSS 기능과의 충돌을 피하기 위해 CSSWG 는 불안정한 기능 및 CSS에 대한 독점 확장 구현에 대한 모범 사례 를 따르는 것이 좋습니다 .

CR 수준 기능의 구현
사양서가 후보 추천 단계에 도달하면 구현 자들은 사양에 따라 올바르게 구현 될 수있는 CR 수준 기능의 고정되지 않은 구현을 릴리스 해야하며 해당 기능의 접두어가 붙은 변형이 노출되지 않도록해야한다.

구현 전반에 걸쳐 CSS의 상호 운용성을 확립하고 유지하기 위해 CSS 작업 그룹은 실험적이지 않은 CSS 렌더러가 구현되지 않은 CSS 렌더러를 구현하기 전에 W3C에 구현 보고서 (및 필요한 경우 해당 구현 보고서에 사용 된 테스트 사례)를 제출하도록 요청한다. CSS 기능. W3C에 제출 된 테스트 케이스는 CSS 워킹 그룹에 의해 검토되고 수정 될 수있다.

테스트 케이스 제출 및 구현 보고서에 대한 자세한 내용은 CSS 워킹 그룹 웹 사이트 ( https://www.w3.org/Style/CSS/Test/) 에서 확인할 수 있다. 질문은 public-css-testsuite@w3.org 메일 링리스트 로 이동해야 한다.

CR 종료 기준
이 명세를 권고안으로 개선하기 위해서는 각 기능에 대해 최소한 두 개의 독립적이고 상호 운용 가능한 구현이 있어야한다. 각 기능은 다른 제품 세트로 구현 될 수 있지만 모든 기능을 단일 제품으로 구현할 필요는 없습니다. 이 기준의 목적을 위해 다음 용어를 정의한다.

독립적 인
각 구현은 다른 당사자에 의해 개발되어야하며 다른 적격 구현에 의해 사용 된 코드를 공유, 재사용 또는 파생 할 수 없습니다. 이 명세의 구현에 아무런 영향을 미치지 않는 코드 섹션은이 요구 사항에서 제외됩니다.
상호 운용 가능한
공식 CSS 테스트 스위트에서 각각의 테스트 케이스를 통과 시키거나, 구현이 웹 브라우저가 아니면 동등한 테스트를 통과해야한다. 테스트 스위트의 모든 관련 테스트는 그러한 사용자 에이전트 (UA)가 상호 운용성을 주장하는 데 사용되는 경우 동등한 테스트를 만들어야한다. 또한 그러한 UA가 상호 운용성을 주장하는 데 사용되는 경우 상호 운용성을 목적으로 동일한 테스트를 통과 할 수있는 하나 이상의 추가 UA가 있어야한다. 동등한 시험은 동료 심사를 위해 공개적으로 이용 가능해야한다.
이행
사용자 에이전트 :
사양을 구현한다.
일반인이 이용할 수 있다. 구현은 선적 제품 또는 공개적으로 사용 가능한 다른 버전 (예 : 베타 버전, 미리보기 릴리스 또는 "야간 빌드") 일 수 있다. 비 운송 제품 릴리스는 안정성을 입증하기 위해 최소 한 달 동안 기능을 구현해야한다.
실험적이지 않습니다 (즉, 테스트 슈트를 통과하도록 특별히 고안된 버전이며 정상적인 용도로는 사용되지 않습니다).
사양은 최소 6 개월 동안 후보 추천으로 남습니다.

색인
이 사양에 정의 된 용어
§4.6의 실제 값
모두 §3.1에서
애니메이션 원산지 , §6.1
저자 원산지 , §6.1
작성자 stylesheet , §6.1
캐스케이드 , §6
cascading 값 , §4.2
캐스케이드 기원 , §6.1
§4.4에서 계산 된 값
§4.1에서 선언 된 값
§2에서 @import
! §6.2에서 중요 함
중요하다 , §6.2
§2에서의 수입 조건
상속하다
§7.2의 정의
§7.3.2의 모든 값
상속 , §7.2
§7.2의 상속 된 속성
상속 된 가치 , §7.2
§7.3.1의 초기
§7.1의 초기 값
법령 , §3
수기 속성 , §3
원산지 , §6.1
캐스케이드의 출력 , §6
재설정 전용 하위 속성 , §3
속기 , §3
§3의 속기 속성
§4.3에서 규정 된 값
하위 속성 , §3
전환 원점 , §6.1
u § 6.1에서
§ 6.1의 ua stylesheet
설정되지 않음 , §7.3.3
§4.5에서 사용 된 값
§6.1의 사용자 에이전트 출처
§ 6.1의 사용자 에이전트 stylesheet
§6.1의 사용자 출처
§ 6.1의 사용자 stylesheet
참조로 정의 된 용어
[css-backgrounds-3] 은 다음 용어를 정의한다.
배경
배경색
배경 이미지
경계
border-bottom-width
국경 이미지
border-left-width
border-right-width
border-top-width
[css-break-3] 은 다음과 같은 용어를 정의한다 :
휴식 전
고아
페이지
[css-color-4] 는 다음 용어를 정의한다.
빨간
[css-conditional-3] 은 다음 용어를 정의한다.
@미디어
[css-flexbox-1] 은 다음 용어를 정의한다 :
굽힘
플렉스 아이템
[css-fonts-3] 은 다음 용어를 정의한다 :
세례반
글꼴 모음
글꼴 크기
글꼴 스타일
글꼴 변형
글꼴 두께
[css-fonts-4] 는 다음과 같은 용어를 정의한다 :
대담한
글꼴 크기 조정
이탤릭체
[css-lists-3] 은 다음과 같은 용어를 정의한다 :
목록 스타일의 위치
[css-page-3] 은 다음 용어를 정의한다.
자동
[css-syntax-3] 은 다음과 같은 용어를 정의한다 :
@ 문자 세트
환경 인코딩
[css-text-3] 은 다음 용어를 정의한다 :
텍스트 정렬
텍스트 들여 쓰기
[css-values-3] 은 다음 용어를 정의한다.
<string>
<url>
?
CSS 전체 키워드
여자 이름
전의
url ()
VH
폭스 바겐
|
[css-variables-1] 은 다음 용어를 정의한다.
맞춤 속성
[css-writing-modes-3] 은 다음과 같은 용어를 정의한다 :
방향
유니 코드 bidi
[CSS2] 는 다음 용어를 정의한다 :
디스플레이
신장
선 높이
페이지 나누기 후
폭
[FETCH] 는 다음 용어를 정의한다.
코르 프로토콜
[HTML] 은 다음 용어를 정의한다.
에스
[MEDIAQ] 는 다음 용어를 정의한다.
<media-query-list>
<media-query>
모든
참고 문헌
규범 참조
[CSS-ANIMATIONS-1]
딘 잭슨; et al. CSS 애니메이션 레벨 1 . 2017 년 11 월 30 일. WD. URL : https://www.w3.org/TR/css-animations-1/
[CSS-BACKGROUNDS-3]
버트 보스; Elika Etemad; Brad Kemper. CSS 배경 및 테두리 모듈 수준 3 . 2017 년 10 월 17 일. CR. URL : https://www.w3.org/TR/css-backgrounds-3/
[CSS-BREAK-3]
Rossen Atanassov; Elika Etemad. CSS 단편화 모듈 레벨 3 . 2017 년 2 월 9 일. CR. URL : https://www.w3.org/TR/css-break-3/
[CSS-CONDITIONAL-3]
CSS 조건부 규칙 모듈 수준 3 URL : https://www.w3.org/TR/css3-conditional/
[CSS-FONTS-3]
존 다겟. CSS 글꼴 모듈 수준 3 . 2018 년 3 월 15 일. CR. URL : https://www.w3.org/TR/css-fonts-3/
[CSS-FONTS-4]
존 다겟 (John Daggett); 마일스 맥스 필드. CSS 글꼴 모듈 레벨 4 . 2018 년 4 월 10 일. WD. URL : https://www.w3.org/TR/css-fonts-4/
[CSS-LISTS-3]
Tab Atkins Jr .. CSS 목록 및 카운터 모듈 수준 3 . 2014 년 3 월 20 일. WD. URL : https://www.w3.org/TR/css-lists-3/
[CSS-SYNTAX-3]
Tab Atkins Jr .; 사이먼 사핀. CSS 구문 모듈 수준 3 . 2014 년 2 월 20 일. CR. URL : https://www.w3.org/TR/css-syntax-3/
[CSS-TEXT-3]
Elika Etemad; 이시이 코지. CSS 텍스트 모듈 수준 3 . 2018 년 8 월 22 일. WD. URL : https://www.w3.org/TR/css-text-3/
[CSS-TRANSITIONS-1]
데이비드 바론; 딘 잭슨; 브라이언 버틀 스. CSS 전환 . 2017 년 11 월 30 일. WD. URL : https://www.w3.org/TR/css-transitions-1/
[CSS-VALUES-3]
Tab Atkins Jr .; Elika Etemad. CSS 값 및 단위 모듈 수준 3 . 2016 년 9 월 29 일. CR. URL : https://www.w3.org/TR/css-values-3/
[CSS-VARIABLES-1]
Tab Atkins Jr .. cascading 변수에 대한 CSS 사용자 정의 속성 모듈 수준 1 . 2015 년 12 월 3 일. CR. URL : https://www.w3.org/TR/css-variables-1/
[CSS-WRITING-MODES-3]
Elika Etemad; 이시이 코지. CSS 작성 모드 레벨 3 . 2018 년 5 월 24 일. CR. URL : https://www.w3.org/TR/css-writing-modes-3/
[CSS2]
버트 보스; et al. cascading stylesheet 레벨 2 개정 1 (CSS 2.1) 사양 . 2011 년 6 월 7 일. REC. URL : https://www.w3.org/TR/CSS2/
[CSS3-CONDITIONAL]
데이빗 바론. CSS 조건부 모듈 수준 3 . 2013 년 4 월 4 일. CR. URL : https://www.w3.org/TR/css3-conditional/
[술책]
앤 반 케스터 렌. 표준 가져 오기 . 생활 수준. URL : https://fetch.spec.whatwg.org/
[HTML]
Anne van Kesteren; et al. HTML 표준 . 생활 수준. URL : https://html.spec.whatwg.org/multipage/
[MEDIAQ]
Florian Rivoal; Tab Atkins Jr .. media query 수준 4 . 2019 년 9 월 5 일. CR. URL : https://www.w3.org/TR/mediaqueries-4/
[RFC2119]
S. Bradner. 요구 수준 표시를위한 RFC에 사용되는 핵심 단어 . 1997 년 3 월. 최고의 현재 관행. URL : https://tools.ietf.org/html/rfc2119
[고르다]
Tantek Çelik; et al. 셀렉터 레벨 3 . 2018 년 1 월 30 일. CR. URL : https://www.w3.org/TR/selectors-3/
유익한 참고 문헌
[CSS-COLOR-4]
Tab Atkins Jr .; 크리스 릴리. CSS 색상 모듈 레벨 4 . 2016 년 7 월 5 일. WD. URL : https://www.w3.org/TR/css-color-4/
[CSS-FLEXBOX-1]
Tab Atkins Jr .; Elika Etemad; Rossen Atanassov. CSS 유연한 박스 레이아웃 모듈 레벨 1 . 2017 년 10 월 19 일. CR. URL : https://www.w3.org/TR/css-flexbox-1/
[CSS-PAGE-3]
멜린다 그랜트; et al. CSS 페이징 된 미디어 모듈 수준 3 . 2013 년 3 월 14 일. WD. URL : https://www.w3.org/TR/css3-page/
[SVG11]
Erik Dahlström; et al. SVG (Scalable Vector Graphics) 1.1 (Second Edition) . 2011 년 8 월 16 일. REC. URL : https://www.w3.org/TR/SVG11/
부동산 지수
모든  초기 | 상속하다 | 설정되지 않은 개별 속성보기 개별 속성보기 개별 속성보기 개별 속성보기 개별 속성보기 개별 속성보기 문법 당    개별 속성보기
이름  값   머리 글자   적용 대상   Inh.    나이 %    미디어 애니메이션 유형    정식 주문   계산 된 가치
↑

