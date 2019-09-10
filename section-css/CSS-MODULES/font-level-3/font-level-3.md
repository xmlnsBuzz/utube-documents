# CSS Font-Module <span class="emp-h"> Level 3</span>
---
## Font 관련 properties와 short-hand(간편형) property에 관하여...

대부분의 CSS property들은 Longhand properties와 그 것들을 간략하게 사용할 수 있는 Shorthand property가 마련되어 있다. 물론 모든 CSS module마다 shorthand property가 있는 것은 아니지만, 예를 들어 font와 관련해서는 다음과 같은

<hr class="thin" />

### Longhand property

- <span class="emp-c">font-style</span> ::= normal | italic | oblique
- <span class="emp-c">font-variant</span> ::= normal | none | [ &lt;common-lig-values&gt; ||
          &lt;discretionary-lig-values&gt; || &lt;historical-lig-values&gt; ||
          &lt;contextual-alt-values&gt; || [ small-caps | all-small-caps |
          petite-caps | all-petite-caps | unicase | titling-caps ] ||
          &lt;numeric-figure-values&gt; || &lt;numeric-spacing-values&gt; ||
          &lt;numeric-fraction-values&gt; || ordinal || slashed-zero ||
          &lt;east-asian-variant-values&gt; || &lt;east-asian-width-values&gt; ||
          ruby || [ sub | super ] ]
- <span class="emp-c">font-weight</span> ::= normal | bold | bolder | lighter | 100 | 200 | 300 | 400 | 500 | 600 | 700 | 800 | 900
- <span class="emp-c">font-stretch</span> ::= normal | ultra-condensed | extra-condensed | condensed |
          semi-condensed | semi-expanded | expanded | extra-expanded |
          ultra-expanded
- <span class="emp-c">font-size</span> ::= &lt;absolute-size&gt; | &lt;relative-size&gt; |
          &lt;length-percentage&gt;
- <span class="emp-c">line-height</span> ::= normal (대략 1.2) | &lt;number> | &lt;length> | &lt;percentage>
- <span class="emp-c">font-family</span> ::= [ &lt;family-name&gt; | &lt;generic-family&gt; ]#

<hr class="thin" />

### ShortHand property

이 것들을 간편화한(Short handed)한 Shorthand property <span class="emp-c">font</span> property가 있다. 

- <span class="emp-c">font</span> ::= [[ &lt;'<span class="emph">font</span>-style'> || &lt;<span class="emph">font</span>-variant-css21> || &lt;'<span class="emph">font</span>-weight'> || &lt;'<span class="emph">font</span>-stretch'> ]? &lt;'<span class="emph">font</span>-size'> [ / &lt;'line-height'> ]? &lt;'<span class="emph">font</span>-family'> ] | caption | icon | menu | message-box | small-caption | status-bar


CSS file
```css
p {
   font-style: italic;
   font-variant: small-caps;
   font-weight: 500;
   font-stretch: expanded;
   font-size: 16px;
   line-height: 2;
   font-family: sans-serif;
}
```



