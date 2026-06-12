#import "@preview/physica:0.9.8": *

// 字体列表
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

#let test-physica-demo = {
  $
    A^T, curl vb(E) = - pdv(vb(B), t),
    quad
    tensor(Lambda, +mu, -nu) = dmat(1, RR),
    quad
    f(x,y) dd(x, y),
    quad
    dd(vb(x), y, [3]),
    quad
    dd(x, y, 2, d: Delta, prod: and),
    quad
    dv(phi, t, d: upright(D)) = pdv(phi, t) + vb(u) grad phi \
    H(f) = hmat(f; x, y; delim: "[", big: #true),
    quad
    vb(v^a) = sum_(i=1)^n alpha_i vu(u^i),
    quad
    Set((x, y), pdv(f, x, y, [2,1]) + pdv(f, x, y, [1,2]) < epsilon) \
    -1/c^2 pdv(, t, 2)psi + laplacian psi = (m^2c^2) / hbar^2 psi,
    quad
    ket(n^((1))) = sum_(k in.not D) mel(k^((0)), V, n^((0))) / (E_n^((0)) - E_k^((0))) ket(k^((0))),
    quad
    integral_V dd(V) (pdv(cal(L), phi) - partial_mu (pdv(cal(L), (partial_mu phi)))) = 0 \
    dd(s, 2) = -(1-(2G M)/r) dd(t, 2) + (1-(2G M)/r)^(-1) dd(r, 2) + r^2 dd(Omega, 2)
  $
  $
    "clk:" & signals("|1....|0....|1....|0....|1....|0....|1....|0..", step: #0.5em) \
    "bus:" & signals(" #.... X=... ..... ..... X=... ..... ..... X#.", step: #0.5em)
  $
}

// 分隔与微分
#let test-dd = $
  dd(x, y), dd(x, 2), dd(f, [k]) quad
  dd(x, y, [2,3]), dd(t, x_1, x_2, prod: and) quad
  var(f), var(x), difference(f), quad
  dd(x, y, compact: #true), dd(x, y, 2, d: Delta) quad
  dd(x, y, z, [[1,1],rho+1,n_1])
$

// 导数
#let test-dv = $
  dv(, x), dv(, x, 2), dv(f, x, k), dv(, vb(r)) quad
  dv(f, x, style: "horizontal"), dv(vb(u), t, d: upright(D)) quad
  dv((u+v), t, 2, style: "large") quad
  dv(, x, d: delta), dv(, x, 2, d: Delta) quad
  dv(vb(u), t, 2, style: "skewed"), dv(, vb(r)_e, 2)
$


// 偏导数
#let test-pdv = $
  pdv(, x), pdv(, x, 2), pdv(f, x), pdv(, x, y) quad
  pdv(f, x, y, 2), pdv(f, x, [k]), pdv(, x, y, [1,2]) quad
  pdv(f, x, y, style: "horizontal"), pdv(, x, y, z, [1,2,1]) \
  pdv(, x, y, z, t, [1,xi,2,eta+2]) quad
  pdv(S, phi.alt, phi, d: delta) quad
  pdv(, x, y, z, [xi n,n-1], total: (xi+1)n) quad
  pdv(, z)[integral_0^z f(x) dd(x)]
$


// 向量
#let test-vector = $
  vb(a), vb(mu), vu(a), vu(hat(x)) quad
  va(a), va(E), va(B), vb(r) quad
  grad f, grad phi, div vb(E), curl vb(B) quad
  laplacian u, laplacian psi \
  dprod(a, b), cprod(a, b), iprod(u, v),iprod(sum_i a_i, b) quad
  vec(1, 2, 3), vecrow(alpha, b, c),vecrow(sum_0^n i, b, delim: "[") quad
  v^TT, A^TT quad
  mel(n, partial_nu H, m)
$


// 括号
#let test-brackets = $
  abs(phi(x)), norm(vec(1, 2)), Order(n^2), order(1/n) quad
  Set(a_i; forall i), Set(vec(1, n); forall n, n|2) quad
  evaluated(f(x))_0^oo, evaluated(f(x)/g(x))_0^1 quad
  expval(u), expval(p, psi)
$


// 矩阵
#let test-matrix = $
  mat(1, 2; 3, 4) mdet(1, x; 1, y) quad
  dmat(1, 2) dmat(1, a, xi, delim: "[", fill: 0) quad
  admat(1, 2) admat(1, a, xi, delim: "[", fill: dot) quad
  imat(2) imat(3, delim: "[", fill: *) \
  jmat(f_1, f_2; x, y) quad hmat(f; x, y) quad
  rot2mat(theta) quad rot3xmat(theta) \
  grammat(v_1, v_2, v_3) quad grammat(v_1, v_2, delim: "[") quad grammat(v_1, v_2, norm: #true)
$

// 矩阵共轭转置 (super-plus-as-dagger)
#let test-dagger = {
  show: super-plus-as-dagger
  $
    U^+U = U U^+ = I quad
    mat(1+i, 1; 2-i, 1)^+ = mat(1-i, 2+i; 1, 1) quad
    limits(N)^+, scripts(N)^+
  $
}

// 狄拉克符号
#let test-braket = $
  bra(u), bra(vec(1, 2)), ket(v), ket(vec(a, b)) quad
  braket(a), braket(psi, phi), braket(psi, A/N, phi) \
  ketbra(u), ketbra(psi, phi), ketbra(a/N, b) quad
  expval(p), expval(A, psi) quad
  mel(n, partial_nu H, m)
$


// 张量
#let test-tensor = $
  tensor(u, +a), tensor(v, -a) quad
  tensor(h, +mu, +nu), tensor(g, -mu, -nu) quad
  tensor(T, +a, -b), tensor(T, -a, +b) quad
  tensor(T, -i, +w, -j) quad
  tensor(R, -a, -b, +d) quad
  grad_mu A^nu = partial_mu A^nu + tensor(Gamma, +nu, -mu, -lambda) A^lambda
$


// 同位素
#let test-isotope = $
  isotope(I, a: 127), isotope("Fe", z: 26) quad
  isotope("Bi", a: 211, z: 83) -> isotope("Tl", a: 207, z: 81) + isotope("He", a: 4, z: 2) quad
  isotope("Tl", a: 207, z: 81) -> isotope("Pb", a: 207, z: 82) + isotope(e, a: 0, z: -1)
$


// 泰勒展开
#let test-taylor = $
  taylorterm(f, x, x_0, 0), taylorterm(f, x, x_0, 1) quad
  taylorterm(F, x^nu, x^nu_0, n), taylorterm(f, x, x_0, n) quad
  taylorterm(f, x, 1+a, 2)
$


// 杂项
#let test-misc = $
  hbar, E = hbar omega, i hbar pdv(, t) psi = -frac(hbar^2, 2m) laplacian psi \
  integral_V dd(V) (pdv(cal(L), phi) - partial_mu (pdv(cal(L), (partial_mu phi)))) = 0 \
  signals("1|0|1|0R"), signals("CD"), signals("-|=|-") \
  diag, rank, trace, Trace, Res, Re, Im, sgn
$

// 测试集
#let all-tests = {
  {
    show: super-T-as-transpose
    text(weight: "bold", size: 12pt)[physica-demo]
    test-physica-demo
  }

  text(weight: "bold", size: 12pt)[微分]
  test-dd

  text(weight: "bold", size: 12pt)[导数]
  test-dv

  text(weight: "bold", size: 12pt)[偏导数]
  test-pdv

  text(weight: "bold", size: 12pt)[向量]
  test-vector

  text(weight: "bold", size: 12pt)[括号]
  test-brackets

  text(weight: "bold", size: 12pt)[矩阵]
  test-matrix


  text(weight: "bold", size: 12pt)[矩阵共轭转置 (dagger)]
  test-dagger

  text(weight: "bold", size: 12pt)[狄拉克符号]
  test-braket

  text(weight: "bold", size: 12pt)[张量]
  test-tensor

  text(weight: "bold", size: 12pt)[同位素]
  test-isotope

  text(weight: "bold", size: 12pt)[泰勒展开]
  test-taylor

  text(weight: "bold", size: 12pt)[杂项]
  test-misc
}

#text(size: 15.5pt)[数学字体 physica 测试]
#text(size: 11pt, fill: luma(120))[typst #sys.version · physica 0.9.8]
#outline(title: none, target: <数学字体physica测试>)

#for math-font in math-fonts {
  pagebreak()
  [#heading(math-font, level: 2) <数学字体physica测试>]
  show math.equation: set text(font: math-font, fallback: false)
  all-tests
}
