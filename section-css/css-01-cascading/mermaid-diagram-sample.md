
```mermaid
gantt
        dateFormat  YYYY-MM-DD
        title Adding GANTT diagram functionality to mermaid
        section A section
        Completed task            :done,    des1, 2014-01-06,2014-01-08
        Active task               :active,  des2, 2014-01-09, 3d
        Future task               :         des3, after des2, 5d
        Future task2               :         des4, after des3, 5d
        section Critical tasks
        Completed task in the critical line :crit, done, 2014-01-06,24h
        Implement parser and jison          :crit, done, after des1, 2d
        Create tests for parser             :crit, active, 3d
        Future task in critical line        :crit, 5d
        Create tests for renderer           :2d
        Add to mermaid                      :1d
```

```mermaid
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```

```mermaid
graph LR;
    A-->B[AAA<span>BBB</span>];
    B-->D;
    class A cssClass;    
```

```mermaid
graph TB
    html;
    html-->body;
    body-->header;
    body-->nav;
    body-->section;
    body-->footer
    header-->hgroup;
    hgroup-->h1...h6;
    nav-->ul;
    ul-->li;
    footer-->address;

     classDef orange fill:#f96,stroke:#333,stroke-width:2px,color:white;
     classDef green fill:green,stroke:#333,stroke-width:2px,color:white;
     classDef red fill:#f00,stroke:#333,stroke-width:2px,color:white;
     classDef common fill:#f00,stroke:#333,stroke-width:2px,color:white;
     class html orange;
     class body green;
     class header,nav,section,footer red;
     class hgroup,ul,li,address,h1...h6 common;

    
    linkStyle default stroke-width:2px,fill:none,stroke:gray;
```
<!-- 
linkStyle 0 stroke-width:2px,fill:none,stroke:blue,color:white;
    linkStyle 1 stroke-width:2px,fill:none,stroke:green;
    linkStyle 2 stroke-width:2px,fill:none,stroke:yellow;
    linkStyle 3 stroke-width:2px,fill:none,stroke:pink;
    linkStyle 4 stroke-width:2px,fill:none,stroke:pink;
 -->

```mermaid
graph LR;
        A--v-->B{B}
        B-->|v|C[C]
        B-- x -->Z[E]
        C-->D{D};

        linkStyle 0 stroke-width:2px,fill:none,stroke:blue,color:white;
        linkStyle 1 stroke-width:2px,fill:none,stroke:green;
        linkStyle 2 stroke-width:2px,fill:none,stroke:yellow;
        linkStyle 3 stroke-width:2px,fill:none,stroke:pink;
        linkStyle default stroke-width:2px,fill:none,stroke:red;
```

```mermaid
sequenceDiagram
    Alice->John: Hello John, how are you?
    Note over Alice,John: A typical interaction
```

```mermaid
graph TB
    sq[Square shape] --> ci((Circle shape))

    subgraph A subgraph
        od>Odd shape]-- Two line  <br/>  edge comment --> ro
        di{Diamond with <br/> line break} -.-> ro(Rounded<br>square<br>shape)
        di==>ro2(Rounded square shape)
    end

    %% Notice that no text in shape are added here instead that is appended further down
    e --> od3>Really long text with linebreak<br>in an Odd shape]

    %% Comments after double percent signs
    e((Inner / circle<br>and some odd <br>special characters)) --> f(,.?!+-*ز)

    cyr[Cyrillic]-->cyr2((Circle shape Начало));

     classDef green fill:#9f6,stroke:#333,stroke-width:2px;
     classDef orange fill:#f96,stroke:#333,stroke-width:4px;
     class sq,e green
     class di orange
```

```mermaid
graph TD;

subgraph Line breaks <br /> don't work in <br /> Subgraphs
    inset[Line breaks <br />\nwork in <br />Insets]
end

    inset-->A

  A(Line breaks<br />work in<br />rounded rec nodes)
  B{Line breaks <br />work in<br />decision nodes}
  C[Line breaks<br />work in<br /> rectangles]
  D((Line breaks <br />work in <br />circles))
  E>Line breaks <br />work in <br />flag nodes]

    A-->B
    B--yes-->C
    B--no-->E
    C-->D
 

style A fill:#ed6,stroke:#333,stroke-width:2px;
style B fill:#ed6,stroke:#333,stroke-width:2px;
style C fill:#ed6,stroke:#333,stroke-width:2px;
style D fill:#ed6,stroke:#333,stroke-width:2px;
style E fill:#ed6,stroke:#333,stroke-width:2px;
style inset fill:#ed6,stroke:#333,stroke-width:2px;
```

