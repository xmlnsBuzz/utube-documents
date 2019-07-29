# Emmet 

Emmet 2.0은 html, css, scss, less, js, xml, xsl 등에서는 몰론이고 php, asp,jsp 등의 서버언어 json, vue, react 등에도 확장하여 사용할 수 있는 예약어(abbreviations) 및 코드조각(snippets)들이다.


## 우선적으로 알아야 될 emmet, snippets 관련 settings

### editor.quickSuggestions (st)

추천검색어 사용여부.

### editor.action.triggerSuggest (kb)
<code class="ctrl">Ctrl</code> + <code>space</code>를 눌러 수동으로 작동시킬 수 있다.

### emmet.showExpandedAbbreviation (st)

- always
- never
- in Markup And Stylesheet Files Only



### editor.emmet.action.expandAbbreviation (kb: tab)

tab key를 눌러서 emmet 실행 

### editor.suggestOnTriggerCharacters 
제안창을 촉발시키는 문자(들)에서 제안창 사용여부 

### editor.suggestFontSize



### 

```json
{
  "key": "ctrl+space",
  "command": "editor.action.triggerSuggest",
  "when": "editorHasCompletionItemProvider && textInputFocus && !editorReadonly"
}
```


### editor.wordBasedSuggestions
현재 문서내에서 사용중인 단어를 제안창에 포함할 것이지 여유

### emmet.showSuggestionsAsSnippets true,

### editor.snippetSuggestions
- top
- bottom
- inline (default)
- none


First Term
: This is the definition of the first term. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delect,us exercitationem hic fugit omnis, asperiores tempore culpa nihil earum tempora at eveniet harum laborum alias accusamus eius ducimus recusandae beatae qui odio sed et neque dolor facilis! Accusantium nobis totam, placeat aspernatur tenetur iusto reprehenderit laboriosam temporibus possimus ipsam nam unde molestias quisquam odit odio, eveniet doloribus illo deserunt assumenda fuga ad? Excepturi, dignissimos odit itaque velit maiores quos! Nemo nesciunt fuga tempora! Eius rem tenetur commodi eum ducimus placeat odit ea maxime. Quo tempora iste ducimus debitis, quibusdam natus atque ratione facilis dolorem sunt, optio fuga error nam placeat voluptate!

Second Term
: This is one definition of the second term.
: This is another definition of the second term.