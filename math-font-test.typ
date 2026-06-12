#import "@preview/physica:0.9.8": *

#let math-fonts = (
  "Asana Math",
  "AuroraMath",
  "Cambria Math",
  "CEF Fonts Mathematique",
  "Concrete Math",
  "Erewhon Math",
  "Euler Math",
  "Fira Math",
  "Garamond-Math",
  "GFS Neohellenic Math",
  "IBM Plex Math",
  "KpMath",
  "Latin Modern Math",
  "Lete Sans Math",
  "Libertinus Math",
  "Nagwa TK Math",
  "New Computer Modern Math",
  "Noto Sans Math",
  "OldStandard-Math",
  "STIX Math",
  "STIX Two Math",
  "TeX Gyre Bonum Math",
  "TeX Gyre DejaVu Math",
  "TeX Gyre Pagella Math",
  "TeX Gyre Schola Math",
  "TeX Gyre Termes Math",
  "XCharter Math",
  "XITS Math",
)

#let test-1 = $
  forall x in RR, quad
  exists, y in NN: quad
  alpha + beta = gamma eq.not delta lt.eq epsilon approx zeta
$

#let test-2 = $
  sum_(i=1)^n x_i^2 + product_(j=1)^m y_j^2 = integral_a^b f(x) dif x, quad
  lim_(n -> infinity) 1/ n=0, quad
  nabla dot va(E) = rho / epsilon_0
$

#let test-3 = $
  A = mat(a_11, a_12; a_21, a_22), quad
  B = mat(delim: "[", b_1; b_2), quad
  S = {x mid(|) x>0 }, quad
  f: X -> Y, quad
  x mapsto f(x)
$

#let scr(it) = text(
  stylistic-set: 1,
  $cal(it)$,
)
#let test-4 = $
  union.big_(i=1)^n A_i inter inter.big_(j=1)^m B_j, quad
  A subset.eq B, quad
  A supset B quad
  cal(L) = cal(F) (RR), quad
  frak(g) tilde.equiv frak(h), quad
  scr(L) (cos omega t) = omega /(p^2+omega^2)
$

#let test-5 = $
  sqrt(x^2 + y^2), root(n, x), binom(n, k) quad
  hat(x), bar(x), tilde(x), vec(1, 2), dot(f), dot.double(f) quad
  cases(abs(1-x), x >= 1, "otherwise") \
  sin x + cos x + tan x, ln x, det A, max_{x in X} \
  infinity, emptyset, plus.minus 1, minus.plus 1, times, div, dot.c quad
  x and y, not x, x => y, x <=> y \
  f', f'', f''' quad
  abs(x), norm(x), floor(x), ceil(x) \
  plus.o, times.o, dot.o, plus.square quad
  arrow.r, arrow.l, arrow.l.r, arrow.double.long quad
  dots.h, dots.v, dots.down quad
$

#let show-letter(fn) = $#{ for i in "abcdefghijklmnopqrstuvwxyz" { fn(i) } }$
#let test-6 = align(center, rect(
  $
    & "italic:" quad  &  #show-letter(i => $italic(#i) med$) \
    & "upright:" quad & #show-letter(i => $upright(#i) med$) \
    & "bb:" quad      &      #show-letter(i => $bb(#i) med$) \
    & "cal:" quad     &     #show-letter(i => $cal(#i) med$) \
    & "scr:" quad     &     #show-letter(i => $scr(#i) med$)
  $,
))

#let test-7 = align(center, rect(
  $
    & "italic:" quad  &  #show-letter(i => $italic(#upper(i)) med$) \
    & "upright:" quad & #show-letter(i => $upright(#upper(i)) med$) \
    & "bb:" quad      &      #show-letter(i => $bb(#upper(i)) med$) \
    & "cal:" quad     &     #show-letter(i => $cal(#upper(i)) med$) \
    & "scr:" quad     &     #show-letter(i => $scr(#upper(i)) med$)
  $,
))

#let test-8 = align(center, rect(
  $
    alpha med beta med gamma med delta med epsilon med zeta med
    eta med theta med iota med kappa med lambda med mu med
    nu med xi med omicron med pi med rho med sigma med
    tau med upsilon med phi med chi med psi med omega \
    Alpha med Beta med Gamma med Delta med Epsilon med Zeta med
    Eta med Theta med Iota med Kappa med Lambda med Mu med
    Nu med Xi med Omicron med Pi med Rho med Sigma med
    Tau med Upsilon med Phi med Chi med Psi med Omega \
    beta.alt med epsilon.alt med epsilon.alt.rev med
    theta.alt med iota.inv med kappa.alt med
    pi.alt med rho.alt med sigma.alt med
    phi.alt \
    Theta.alt med Omega.inv
  $,
))

#let test-9 = $ integral.triple (div bold(a)) dif V = integral.surf_S bold(a) dot dif bold(S) $

#let test-10 = $
  curl bold(a)
  = (pdv(a_z, y) - pdv(a_y, z)) bold(e_x)
  + (pdv(a_x, z) - pdv(a_z, x)) bold(e_y)
  + (pdv(a_y, x) - pdv(a_x, y)) bold(e_z)
$

#let test-math-contexts = {
  //
  test-1 + test-2 + test-3 + test-4
  //
  test-5
  // 字母测试
  test-6 + test-7 + test-8
  //
  test-9 + test-10
}

#text(size: 15.5pt)[数学字体测试]
#text(size: 11pt, fill: luma(120))[typst #sys.version]
#outline(title: none, target: <数学字体测试>)

#for math-font in math-fonts {
  pagebreak()
  [#heading(math-font, level: 2) <数学字体测试>]
  show math.equation: set text(font: math-font, fallback: false)
  test-math-contexts
}
