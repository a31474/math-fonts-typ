#outline(title: none, target: <license>)

#pagebreak()
== 许可类型概览 <license>

#let license-summary = (
  ("许可类型", "自由使用", "再分发", "修改/衍生", "保留版权", "衍生品更名"),
  ("SIL OFL 1.1", "是", "是", "是", "是", "是"),
  ("GUST Font License", "是", "是", "是", "是", "否（仅建议）"),
  ("GPL v3.0", "是", "是", "是", "是", "—"),
  ("CC BY-NC-ND 4.0", "是（非商业）", "是（需署名）", "否", "是", "—"),
  ("Proprietary (Cambria)", "需授权", "否", "否", "—", "—"),
)

#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    ..license-summary.flatten(),
    inset: 8pt,
    stroke: 0.5pt,
    align: center + horizon,
  ),
  caption: [各许可类型对比],
)

#v(1.2em)
== 统计 <license>

#let stats = (
  ("许可类型", "字体数", "占比"),
  ("SIL OFL 1.1", "17", repr(17 / 28 * 100%)),
  ("GUST Font License", "8", repr(8 / 28 * 100%)),
  ("GPL v3.0", "1", repr(1 / 28 * 100%)),
  ("CC BY-NC-ND 4.0", "1", repr(1 / 28 * 100%)),
  ("Proprietary", "1", repr(1 / 28 * 100%)),
)

#figure(
  table(
    columns: (auto, auto, auto),
    ..stats.flatten(),
    inset: 8pt,
    stroke: 0.5pt,
    align: (left, center, center),
  ),
  caption: [授权类型统计],
)

#pagebreak()

== SIL Open Font License 1.1 <license>

#text(size: 10pt, fill: luma(120))[
  注：以下 6 款字体（Concrete Math、Erewhon Math、Euler Math、KpMath、Lete Sans Math、XCharter Math）
  在 CTAN 上同时以 LPPL 1.3c 许可发布（双许可：OFL + LPPL）。
  字体内嵌元数据仅声明 OFL，LPPL 主要覆盖 LaTeX 支持文件。
]

#let ofl-fonts = (
  (
    "Asana Math",
    "Apostolos Syropoulos (2007–2025)\nYoung Ryu (2000)\nClaudio Beccari (1997,1999)",
    "CTAN + 字体内嵌元数据",
    "https://ctan.org/pkg/asana-math",
    "CTAN",
    "000.962",
    "2025-11-19",
  ),
  (
    "CEF Fonts Mathematique",
    "Partyboss (派对大魔王)",
    "GitHub + 字体内嵌元数据",
    "https://github.com/Partyb0ssishere/cef-fonts-mathematique",
    "GitHub",
    "Alpha 0.01",
    "2025-01-13",
  ),
  (
    "Concrete Math",
    "Daniel Flipo (2022–2026)\nCMUConcrete 转换: Andrey V. Panov\n原始 Metafont: Ulrik Vieth (1999)",
    "CTAN + 字体内嵌元数据",
    "https://ctan.org/pkg/concmath-otf",
    "CTAN",
    "0.73",
    "2026-02-26",
  ),
  (
    "Erewhon Math",
    "Adobe Systems (1989,1991, Utopia)\nMichael Sharpe (2014–2026)\nMichel Bovani & Daniel Flipo (2019–2026)",
    "CTAN + 字体内嵌元数据",
    "https://ctan.org/pkg/erewhon-math",
    "CTAN",
    "0.74",
    "2026-03-23",
  ),
  (
    "Euler Math",
    "AMS (1997,2009)\nKhaled Hosny (2009,2021)\nDaniel Flipo (2022–2026)",
    "CTAN + 字体内嵌元数据",
    "https://ctan.org/pkg/euler-math",
    "CTAN",
    "0.75",
    "2026-02-18",
  ),
  (
    "Fira Math",
    "Xiangdong Zeng (2018–2020)",
    "CTAN + 字体内嵌元数据",
    "https://ctan.org/pkg/firamath",
    "CTAN",
    "0.3.4",
    "2020-10-15",
  ),
  (
    "Garamond-Math",
    "Yuansheng Zhao & Xiangdong Zeng (2018–2022)",
    "CTAN + 字体内嵌元数据",
    "https://ctan.org/pkg/garamond-math",
    "CTAN",
    "2022-01-03",
    "2022-01-03",
  ),
  (
    "GFS Neohellenic Math",
    "George D. Matthiopoulos (GFS)\nAntonis Tsolomitis (爱琴海大学, 2016)",
    "CTAN + 字体内嵌元数据",
    "https://ctan.org/pkg/gfsneohellenicmath",
    "CTAN",
    "1.02",
    "2022-07-18",
  ),
  (
    "IBM Plex Math",
    "IBM Corp. (2020)",
    "GitHub + 字体内嵌元数据",
    "https://github.com/IBM/plex",
    "GitHub",
    "1.1.0",
    "2024-11-13",
  ),
  (
    "KpMath",
    "Christophe Caignaert (2007–2018)\nDaniel Flipo (2019–2026)",
    "CTAN + 字体内嵌元数据",
    "https://ctan.org/pkg/kpfonts-otf",
    "CTAN",
    "0.73",
    "2026-03-06",
  ),
  (
    "Lete Sans Math",
    "Chenjing Bu & Daniel Flipo (2024–2026)",
    "CTAN + GitHub + 字体内嵌元数据",
    "https://ctan.org/pkg/lete-sans-math",
    "CTAN",
    "0.61",
    "2026-03-22",
  ),
  (
    "Libertinus Math",
    "The Libertinus Project Authors (2012–2024)",
    "CTAN + 字体内嵌元数据",
    "https://ctan.org/pkg/libertinus-fonts",
    "CTAN",
    "7.051",
    "2024-09-27",
  ),
  (
    "Noto Sans Math",
    "Google LLC (2022)",
    "Google Fonts + 字体内嵌元数据",
    "https://fonts.google.com/noto/specimen/Noto+Sans+Math",
    "Google Fonts",
    "3.000",
    "2026-05-06",
  ),
  (
    "STIX Math",
    "STI Pub Companies — ACS, AIP, AMS, APS, Elsevier, IEEE (2001–2011)\nMicroPress, Inc. (1998–2003)\nElsevier, Inc. (1990)",
    "CTAN + 字体内嵌元数据",
    "https://ctan.org/pkg/stix",
    "CTAN",
    "1.1.3",
    "2018-04-17",
  ),
  (
    "STIX Two Math",
    "The STIX Fonts Project Authors (2001–2021)",
    "CTAN + 字体内嵌元数据",
    "https://ctan.org/pkg/stix2-otf",
    "CTAN",
    "2.12",
    "2021-03-26",
  ),
  (
    "XCharter Math",
    "Daniel Flipo (2022–2026)",
    "CTAN + 字体内嵌元数据",
    "https://ctan.org/pkg/xcharter-math",
    "CTAN",
    "0.74",
    "2026-03-23",
  ),
  (
    "XITS Math",
    "STI Pub (2001–2011)\ (URW)++ Design (2014,2015)\ Khaled Hosny (2009–2019)\ Daniel Benjamin Miller\nMicroPress, Inc. (1998–2003)\nElsevier, Inc. (1990)",
    "CTAN + 字体内嵌元数据",
    "https://ctan.org/pkg/xits",
    "CTAN",
    "1.302",
    "2020-07-02",
  ),
)

#for (name, copyright, source, url, dl, ver, date) in ofl-fonts [
  #heading(level: 3)[#name] <license>
  - #strong[许可]: SIL Open Font License 1.1
  - #strong[版本]: #ver
  - #strong[更新日期]: #date
  - #strong[版权方]: #copyright
  - #strong[信息来源]: #source
  - #strong[下载]: #dl#link(url)[(#url)]
]

#pagebreak()
== GUST Font License <license>

GUST Font License 由波兰 TeX 用户组 (GUST) 制定，是 TeX 社区的标准自由字体许可。允许自由使用、分发和修改，要求保留版权声明。

#let gust-fonts = (
  (
    "Latin Modern Math",
    "B. Jackowski, P. Strzelczyk, P. Pianowski\n(代表 TeX 用户组, 2012–2014)",
    "https://ctan.org/pkg/lm-math",
    "CTAN",
    "1.959",
    "2014-09-05",
  ),
  (
    "New Computer Modern Math",
    "Antonis Tsolomitis (2019–2026)",
    "https://ctan.org/pkg/newcomputermodern",
    "CTAN",
    "8.1.0",
    "2026-06-04",
  ),
  (
    "OldStandard-Math",
    "Antonis Tsolomitis (2019–2024)",
    "https://ctan.org/pkg/oldstandard",
    "CTAN",
    "2.7b",
    "2026-05-06",
  ),
  (
    "TeX Gyre Bonum Math",
    "B. Jackowski, P. Strzelczyk, P. Pianowski\n(代表 TeX 用户组, 2013)",
    "https://ctan.org/pkg/tex-gyre-math-bonum",
    "CTAN",
    "1.005",
    "2014-09-05",
  ),
  (
    "TeX Gyre DejaVu Math",
    "Bitstream, Inc. (2003)；DejaVu 修改与数学扩展为 Public Domain",
    "https://ctan.org/pkg/tex-gyre-math-dejavu",
    "CTAN",
    "1.106",
    "2016-05-19",
  ),
  (
    "TeX Gyre Pagella Math",
    "B. Jackowski, P. Strzelczyk, P. Pianowski\n(代表 TeX 用户组, 2012–2014)",
    "https://ctan.org/pkg/tex-gyre-math-pagella",
    "CTAN",
    "1.632",
    "2014-09-05",
  ),
  (
    "TeX Gyre Schola Math",
    "B. Jackowski, P. Strzelczyk, P. Pianowski\n(代表 TeX 用户组, 2014)",
    "https://ctan.org/pkg/tex-gyre-math-schola",
    "CTAN",
    "1.533",
    "2014-09-05",
  ),
  (
    "TeX Gyre Termes Math",
    "B. Jackowski, P. Strzelczyk, P. Pianowski\n(代表 TeX 用户组, 2012–2014)",
    "https://ctan.org/pkg/tex-gyre-math-termes",
    "CTAN",
    "1.543",
    "2014-09-05",
  ),
)

#for (name, copyright, url, dl, ver, date) in gust-fonts [
  #heading(level: 3)[#name] <license>
  - #strong[许可]: GUST Font License#if name == "New Computer Modern Math" [（另含 GPL 3.0 + 字体例外条款，CTAN 双许可）] else if name == "OldStandard-Math" [（CTAN 包另含 LPPL / FDL / OFL 多重许可，数学字体本身为 GUST）] else if name == "TeX Gyre DejaVu Math" [（CTAN 包以 GUST 分发；字体内嵌 Public Domain）]
  - #strong[版本]: #ver
  - #strong[更新日期]: #date
  - #strong[版权方]: #copyright
  - #strong[信息来源]: CTAN + 字体内嵌元数据
  - #strong[下载]: #dl#link(url)[(#url)]
]

#pagebreak()
== 其他许可类型 <license>

#heading(level: 3)[AuroraMath] <license>
- #strong[许可]: GNU General Public License v3.0
- #strong[版本]: 001.000
- #strong[更新日期]: 2019-04-14
- #strong[版权方]: YZ (2019)
- #strong[信息来源]: 字体内嵌元数据
- #strong[下载]: 无官方分发渠道（仅第三方字体站收录）


#pagebreak()

== 专有字体 <license>

#heading(level: 3)[Cambria Math] <license>
- #strong[⚠ 未包含在本仓库中] — 仅在文档字体列表中引用了此名称
- #strong[许可]: 专有 (Proprietary)，Microsoft 版权所有
- #strong[下载]: —（专有字体，不提供公开下载）
- #strong[获取方式]: 随 Windows / Office 附带，或通过 Microsoft 授权渠道获取
- 不可再分发。用户须自行从合法渠道获取。如需编译涉及 Cambria Math 的文档，请先从合法来源安装字体。

#heading(level: 3)[Nagwa TK Math] <license>
- #strong[许可]: Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 (CC BY-NC-ND 4.0)
- #strong[版本]: 1.001
- #strong[更新日期]: 2025-12-25
- #strong[版权方]: Nagwa (2021–2025)；阿拉伯字形: Abdo Mohamed
- #strong[描述]: 基于 Adobe Tekton 的非正式手写风格数学字体，等宽笔画，装饰性圆头代替衬线。基于 Micropress 的非正式数学字体扩展而成，支持阿拉伯文。
- #strong[下载]: #link("https://fonts.nagwa.com/tk/index.html")[Nagwa 官网(https://fonts.nagwa.com/tk/index.html)]
- #strong[限制]: 仅限非商业用途，禁止修改和衍生。

#v(1em)

#text(size: 10pt)[*本仓库 #link("https://github.com/a31474/math-fonts-typ")[licenses/] 目录包含各许可的全文或摘要。*]

#line(length: 23%, stroke: 1pt + gray)

#v(0.5em)
#text(
  size: 10pt,
  fill: luma(130),
)[*免责声明: 本文件仅提供参考信息，不构成法律建议。字体许可条款可能随版本更新而变化。使用前请自行核实最新许可条件。如需重新分发字体文件，请遵守各许可相应要求。*]

#text(size: 11pt, fill: luma(120))[最后更新：#datetime.today().display()]
