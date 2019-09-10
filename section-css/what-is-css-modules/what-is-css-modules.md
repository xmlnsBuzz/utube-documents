# CSS Module이란 무엇인가.
---
## CSS3부터 Spec이 관련 property별로 Module 세분화 된다.

CSS3에 들어서면서 부터 'Modules'라는 용어가 등장한다. 각 module은 CSS2.1을 기반으로 세분화되며 CSS 2.1과 상충되지 않는다. 아래의 링크로 가면 'Why modules'라는 절이 있는데

- Why CSS Moduls - https://www.w3.org/TR/2001/WD-css3-roadmap-20010523/#whymods  

As the popularity of CSS grows, so does interest in making additions to the specification. Rather than attempting to shove dozens of updates into a single monolithic specification, it will be much easier and more efficient to be able to update individual pieces of the specification. Modules will enable CSS to be updated in a more timely and precise fashion, thus allowing for a more flexible and timely evolution of the specification as a whole.

For resource constrained devices, it may be impractical to support all of CSS. For example, an aural browser may be concerned only with aural styles, whereas a visual browser may care nothing for aural styles. In such cases, a user agent may implement a subset of CSS. Subsets of CSS are limited to combining selected CSS modules, and once a module has been chosen, all of its features must be supported.

위의 내용은 대략

<span class="emph">CSS의 인기가 높아짐에 따라 사용자들이 spec의 추가 또는 업데이트에 관심을 가진다. 만약 CSS2, CSS3와 같이 스펙 전체를 통째로 업데이트하게 될 경우 이미 구현이 가능한 spec들(주로 property들)의 업데이트가 아직 진행중인 spec 때문에 늦춰지게 되므로 적시에 적확한 사양을 각 <q>모듈로 분리하여 개별 업데이트</q>하므로써 유행에 맞고 보다 유연하게 대처하려고 함.</span>

이런 내용이고, 아래 문단은 각 미디어(aural, screen등)에 사용되는 CSS spec에 대한 언급이다.

아래의 링크는 CSS3에 대한 정보를 주는 사이트로써 

- CSS3 Info - http://www.css3.info/modules/

각 모듈별 업데이트 현황을 알 수 있다.
<hr class="thin" />
## 각 Module 뒤에 붙는 번호(숫자)의 의미

각 모듈 뒤에는 숫자가 붙는다. 예를 들어 

- CSS Animation 1

이라면 CSS Level 3 부터 새로 생긴 properties 이고

- CSS Font 3 (Current Work)

이라면 CSS Level 1 부터 생겨서 CSS 2를 거쳐 현재 CSS 3까지 계속 업데이트되고 새로운 property도 추가되었다는 의미다. 'Current Work'는 현재 구현되고 있다는 의미다. 물론 IE(Internet Explorer)나 minor browser등에서는 구현되지 않을 수 있다.

- CSS Font 4 

라고 되어있고 괄호 속에 'Current Work'가 없다면 현재 진행중인 스펙이므로 구현되지 않거나 부분구현(partial implementation)되는 spec이다. 따라서 각 브라우저별 호환성을 고려하여, 사용하지 말 것을 권장한다.

---



