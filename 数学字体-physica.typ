#import "@preview/numbly:0.1.0": numbly

#set text(font: ("Times New Roman", "FZKai-Z03S"), lang: "zh", region: "cn")
#set heading(numbering: numbly("{1}.", "{1}.{2}"))
#set page(numbering: "1")

#show heading: it => if it.level == 1 {} else {
  let numbers = counter(heading).at(it.location())
  if numbers.first() == 1 {
    [#numbering("1.", numbers.at(1)) #it.body]
  } else { it }
}
#show link: set text(fill: red.darken(30%))

#text(size: 15.5pt)[Typst 数学字体 physica 测试]
#text(size: 11pt, fill: luma(120))[typst #sys.version]

#outline(title: none, target: <main>)

#line(length: 25%, stroke: 1pt + gray)
本文档来自 #link("https://github.com/a31474/math-fonts-typ")，本文档提供：

- 28 种数学字体的显示效果，对比不同字体在 Typst 下的数学公式渲染效果；
- 完整字体授权信息与许可类型对比。

#text(size: 11pt, fill: luma(120))[最后更新：#datetime.today().display()]
#pagebreak()

= 数学字体 physica 测试 <main>
#include "math-font-physica-test.typ"
#pagebreak()

= 数学字体授权 <main>
#text(size: 15.5pt)[数学字体授权]
#text(size: 11pt, fill: luma(120))[typst #sys.version]
#include "font-license.typ"
