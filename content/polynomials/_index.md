+++
title = "Polinomios"
weight = 40
+++



## Anillos de polinomios

{{% definition %}}
Dado un anillo $R$ un **polinomio** en una **variable** $x$ con **coeficientes** en $R$ es una expresión de la forma

$$f=f(x)=a\_nx^n+a\_{n-1}x^{n-1}+\cdots+a\_1x+a\_0$$

donde los **coeficientes** $a\_0,\dots,a\_n\in R$ y $n\geq 0$. También se puede denotar como si fuera una serie

$$p(x)=\sum_{n\geq 0}a\_nx^n$$

dando por supuesto que **casi todos** los coeficientes son cero, es decir, todos excepto una cantidad finita. El **polinomio trivial** $0$ es aquel cuyos coeficientes son todos nulos. El **monomio** de **grado** $i$ de $f(x)$ es $a\_ix^i$ y su coeficiente es $a\_i$. El **grado** de un polinomio no trivial $f(x)$ es el mayor $n\geq 0$ tal que su coeficiente de grado $n$ es no nulo $a\_n\neq 0$. En este caso decimos que $a\_nx^n$ es su **monomio líder** y $a\_n$ su **coeficiente líder**. Su **término independiente** es $a\_0$. Un polinomio es **mónico** si su coeficiente líder es $1\in R$. Los **polinomios constantes** son los de grado $0$ y el nulo. El conjunto de los polinomios en una variable $x$ con coeficientes en $R$ se denota $R[ x ]$.
{{% /definition %}}

{{% remark %}}
El polinomio trivial no tiene asignado ningún grado según esta definición, pero podemos considerar que su grado es $-\infty$, ya que esta convención es compatible con fórmulas posteriores.
{{% /remark %}}

Recordemos que el conjunto $R[ x ]$ es un anillo con la suma y el producto definidos en un ejemplo [anterior](../rings/#polynomials). Además $R\subset R[ x ]$ es un subanillo formado por los polinomios constantes. Hemos visto en la prueba de una [proposición](../rings/#polydomain) anterior que si $R$ es un dominio entonces $R[ x ]$ también y dados $f,g\in R[ x ]$ se tiene que

$$\operatorname{grado}(fg)=\operatorname{grado}(f)+\operatorname{grado}(g).$$

Además,

$$\operatorname{grado}(f+g)\leq\max\\{\operatorname{grado}(f),\operatorname{grado}(g)\\}$$

dándose la igualdad si $\operatorname{grado}(f)\neq \operatorname{grado}(g)$, ya que entonces el coeficiente líder de la suma será el mismo que el del polinomio de mayor grado.

{{% theorem %}}
Si $R$ es un dominio entonces $R[ x ]^\times=R^\times$.
{{% /theorem %}}

{{% proof %}}
Las unidades de $R$ también son unidades de $R[ x ]$ vistas como polinomios constantes ya que $R\subset R[ x ]$ es un subanillo. Recíprocamente, si $f\in R[ x ]$ es una unidad y $f^{-1}$ es su inversa, $ff^{-1}=1$ entonces
$$
\begin{array}{rcl}
0&=&\operatorname{grado}(1)\cr
&=&\operatorname{grado}(ff^{-1})\cr
&=&\operatorname{grado}(f)+\operatorname{grado}(f^{-1}).
\end{array}
$$
Por tanto

$$\operatorname{grado}(f)=-\operatorname{grado}(f^{-1}).$$

Como el grado de un polinomio es siempre $\geq 0$, los grados que aparecen a ambos lados de la última ecuación han de ser $0$, así que $f$ es una unidad de $R$.
{{% /proof %}}

En adelante consideraremos casi siempre el anillo de polinomios $k[ x ]$ con coeficientes en un cuerpo $k$, que es un dominio. Sus unidades son $k^\times=k\setminus\\{0\\}$. El grado de un polinomio se puede usar como una medida de tamaño, al igual que el valor absoluto en los enteros. Esto nos permite realizar divisiones euclídeas en $k[ x ]$.

{{% remark %}}
La definición de **divisibilidad** vista en $\mathbb{Z}$ tiene también sentido en $k[ x ]$ y satisface las mismas propiedades elementales, excepto las que aquí reseñamos. El polinomio $1$ es divisible por cualquier unidad, no solo por $\pm1$. Además, $f|g$ y $g|f$ si y solo si existe una unidad $\alpha\in k^\times$ tal que $f=\alpha\cdot g$. Esta unidad no tiene por qué ser $\pm 1$.
{{% /remark %}}

{{% theorem name="División euclídea" %}}
Dados $D,d\in k[ x ]$, $d\neq0$, existen $c,r\in k[ x ]$ únicos tales que

* $D=d\cdot c+r$,

* $r=0$ o $\operatorname{grado}( r )<\operatorname{grado}(d)$.

{{% /theorem %}}

{{% proof %}}
Probamos primero la existencia. Si $\operatorname{grado}(D)<\operatorname{grado}(d)$ podemos tomar $c=0$, $r=D$. Supongamos ahora que $\operatorname{grado}(D)\geq\operatorname{grado}(d)$. Denotamos $\operatorname{grado}(D)=n$ y $\operatorname{grado}(d)=m$. Sean y sean $a\_nx^n$ y $b\_mx^m$ los monomios líderes de $D$ y $d$, respectivamente. Llamamos

$$c\_1=\frac{a\_n}{b\_m}x^{n-m}.$$

El polinomio

$$D_1=D-d\cdot c\_1$$

es de grado estrictamente menor que $D$ ya que los monomios líderes de los polinomios de la derecha cancelan al restarlos. Al despejar en la ecuación anterior obtenemos

$$D=d\cdot c\_1+D\_1.$$

Si $\operatorname{grado}(D\_1)<\operatorname{grado}(d)$ entonces podemos tomar  y $r=D\_1$. Si $\operatorname{grado}(D\_1)\geq \operatorname{grado}(d)$, construimos polinomios $c\_2$ y $D\_2$ por el mismo procedimiento, de modo que

$$D\_1=d\cdot c\_2+D\_2,$$

y si fuera necesario continuamos hasta que $\operatorname{grado}(D\_n)<\operatorname{grado}(d)$. Este procedimiento termina en un número finito de pasos porque $\operatorname{grado}(D\_{i+1})<\operatorname{grado}(D\_{i})$ por construcción. Llegados a este punto

$$
\begin{array}{rcl}
D & = & d\cdot c\_1+D\_1,\cr
D\_1 & = & d\cdot c\_2+D\_2,\cr
 &\vdots & \cr
D\_{n-1} & = & d\cdot c\_n+D\_n,
\end{array}
$$

podemos tomar $c=c\_1+\cdots+c\_n$ y $r=D\_n$.

Veamos ahora la unicidad. Supongamos que

$$D=d\cdot c+r=d\cdot c'+r'$$

con $\operatorname{grado}( r ),\operatorname{grado}(r')<\operatorname{grado}(d)$. Entonces

$$r-r'=(c'-c)d.$$

Si $c\neq c'$ entonces el polinomio de la derecha tiene grado $\geq \operatorname{grado}(d)$, pero el de la izquierda tiene grado $\leq\max\\{\operatorname{grado}( r ),\operatorname{grado}(r')\\}<\operatorname{grado}(d)$, así que la única posibilidad es que $c=c'$ y por tanto $r=r'$.
{{% /proof %}}

{{% remark %}}
En las circunstancias anteriores, decimos que $D$ es el **dividendo**, $d$ es el **divisor**, $c$ es el **cociente** y $r$ es el **resto** de la **división euclídea** de $D$ entre $d$.
{{% /remark %}}

{{% example name="Una división euclídea" label="unadiv" %}}

Sean
$$
\begin{array}{rcl}
D&=&x^5-\frac{1}{2}x^3+2x^2-3x+3, \cr
d&=&2x^3-\frac{2}{3}x^2+3x-1,
\end{array}
$$
dos polinomios de $\mathbb{Q}[ x ]$. Comenzamos tomando

$$D\_1=D-\frac{1}{2}x^2\cdot d=\frac{1}{3}x^4-2x^3+\frac{5}{2}x^2-3x+3.$$

Como $\operatorname{grado}(D\_1)\geq\operatorname{grado} (d)$, tomamos ahora

$$D\_2=D\_1-\frac{1}{6}x\cdot d=-\frac{17}{9}x^3+2x^2-\frac{17}{6}x+3.$$

De nuevo $\operatorname{grado}(D\_2)\geq\operatorname{grado} (d)$, así que tomamos

$$D\_3=D\_2+\frac{17}{18}\cdot d=\frac{37}{27} x^2+\frac{37}{18}.$$

Como finalmente $\operatorname{grado}(D\_3)<\operatorname{grado}(d)$, podemos tomar

$$
\begin{array}{rcl}
c&=&\frac{1}{2}x^2+\frac{1}{6}x-\frac{17}{18}, \cr
r&=&D\_3=\frac{37}{27}x^2+\frac{37}{18}.
\end{array}
$$

{{% /example %}}

La siguiente proposición se prueba igual que para $\mathbb{Z}$.

{{% proposition %}}
Dados $D,d\in k[ x ]$, $d\neq 0$, $d|D$ si y solo si el resto de la división de $D$ entre $d$ es $r=0$.
{{% /proposition %}}


El siguiente teorema es análogo del que decía que todos los subgrupos de $\mathbb{Z}$ son cíclicos.

{{% theorem %}}
Todo ideal $I \subset k[ x ]$ es principal.
{{% /theorem %}}

{{% proof %}}
El ideal trivial es principal $\\{0\\}=(0)$ generado por el $0$. Si $I\neq\\{0\\}$, consideramos el conjunto


$$S=\\{\operatorname{grado}(f)\mid 0\neq f\in I \\}\subset\mathbb{Z}.$$

Este conjunto está acotado inferiormente porque el grado de un polinomio es $\geq 0$. Por el principio de buena ordenación, hay un mínimo $n\in S$. Sea $f\in I$ un polinomio no nulo donde se alcanza el mínimo $\operatorname{grado}(f)=n$. Veamos que $(f) = I$. Por definición, $(f)$ está formado por los múltiplos de $f$. La inclusión $\subset$ es cierta ya que $f\in I$ y $I\subset k[ x ]$ es un ideal, por tanto los múltiplos de $f$ están también en $I$. Para ver $\supset$, tenemos que comprobar que todos los elementos de $I$ son múltiplos de $f$. Sea $g\in I$. Realizamos la división euclídea de $g$ por $f$: $g=f\cdot c+r$, 
$\operatorname{grado}( r )<n$. Si $r=0$ entonces $g=f\cdot c\in (f)$. Veamos por reducción al absurdo que es imposible que $r\neq 0$. En efecto, en dicho caso $0\neq r=g-f\cdot c\in I$ pues $g\in I$, $f\cdot c\in (f) \subset I$ y $I$ es un ideal. Por tanto $\operatorname{grado}( r )\in S$, pero $\operatorname{grado}( r )<n$, y esto contradeciría la minimalidad de $n$.
{{% /proof %}}

{{% definition %}}
Una **raíz** de un polinomio $f\in R[ x ]$ es un elemento $a\in R$ tal que $f(a)=0$.
{{% /definition %}}

Un resultado específico del anillo que nos ocupa es el siguiente.

{{% corollary %}}
El elemento $a\in k$ es una raíz de $f\in k[ x ]$ si y solo si $(x-a)|f$.
{{% /corollary %}}

{{% proof %}}
Realizamos la división euclídea

$$f(x)=(x-a)\cdot q+r.$$

Como $\operatorname{grado}( r )<\operatorname{grado}(x-a)=1$, el polinomio $r$ es constante $r\in k$, así que

$$f(a)=(a-a)\cdot q(a)+r=r,$$

y sabemos que $r=f(a)=0$ si y solo si $(x-a)|f$.
{{% /proof %}}

{{% remark %}}
En general, los divisores de grado $1$ de un polinomio $f\in k[ x ]$ se corresponden con sus raíces, ya que $(ax+b)|f$, $a\neq 0$, si y solo si $(x+\frac{b}{a})|f$, es decir, si $-\frac{b}{a}$ es una raíz de $f$. Aquí usamos que, para la relación de divisibilidad, es irrelevante el producto por unidades.
{{% /remark %}}

El corolario anterior justifica la siguiente definición, que se usará más adelante.

{{% definition %}}
La **multiplicidad** de una raíz $a$ de $f\in k[ x ]$ es el máximo $n\geq 1$ tal que $(x-a)^n|f$.
{{% /definition %}}

{{% corollary %}}
Un polinomio no nulo $f\in k[ x ]$ de grado $n$ tiene a lo sumo $n$ raíces distintas en $k$.
{{% /corollary %}}

{{% proof %}}
Por inducción en $n=\operatorname{grado}(f)$. Si $n=0$, entonces $f$ es un polinomio constante no nulo, luego no tiene raíces. Sea ahora $n>0$. Suponemos, por hipótesis de inducción, que todo polinomio de grado $n-1$ tiene a lo sumo $n-1$ raíces distintas. Si $f$ no tuviera raíces no habría nada que probar. Si $f$ tiene una raíz $a\in k$ entonces $f=(x-a)g$ para cierto polinomio $g$, necesariamente de grado $n-1$. Bastará probar que las raíces de $f$ son las raíces de $g$ y además $a$. En efecto, $b\in k$ es una raíz de $f$ si y solo si $f(b)=(b-a)g(b)=0$. Como $k$ es un dominio, para que esto ocurra ha de suceder bien que $g(b)=0$ o bien que $b=a$.
{{% /proof %}}

{{% proposition label="derivada" %}}
Si $k=\mathbb{Q},\mathbb{R}$ o $\mathbb{C}$ y $f\in k[ x ]$ es un polinomio no nulo, $a\in k$ es una raíz de $f$ con multiplicidad $>1$ si y solo si $a$ es raíz de $f$ y de su derivada $f'$.
{{% /proposition %}}

{{% proof %}}
$\Rightarrow$ En este caso $(x-a)^2\mid f$, así que $f=(x-a)^2g$ para cierto $g\in k[ x ]$. Derivando,

$$f'=2(x-a)g+(x-a)^2g=(x-a)[2g+(x-a)g'],$$

así que $a$ es también raíz de $f'$.

$\Leftarrow$ Si $a$ es raíz de $f$ entonces $f=(x-a)g$ para cierto $g\in k[ x ]$ y 
$$f'=g+(x-a)g'.$$
Si $a$ también es raíz de $f'$ entonces $(x-a)\mid f'$ por tanto $x-a$ también divide a

$$g=f'-(x-a)g',$$

en particular $g=(x-a)h$ para cierto $h\in k[ x ]$, así que $f=(x-a)g=(x-a)^2h$, con lo que la multiplicidad $a$ como raíz de $f$ es $>1$.

{{% /proof %}}

{{% remark %}}
El resultado anterior es cierto para cualquier cuerpo $k$. Lo hemos probado para los cuerpos especificados porque son aquellos para los que conocéis una definición de derivada, pero es posible definir la derivada de un polinomio con coeficientes en un anillo cualquiera.
{{% /remark %}}

{{% exercise %}}
¿Verdadero o falso? Si un polinomio mónico $f\in \mathbb{C}[ x ]$ de grado $n$ posee una raíz en común con todas sus derivadas iteradas entonces $f=(x-a)^n$ para cierto $a\in\mathbb{C}$. Observa que el recíproco es trivial.
{{% /exercise %}}

{{% remark %}}
Los conceptos de **divisor común máximo** y **múltiplo común mínimo** en $k[ x ]$ se definen como en $\mathbb{Z}$ y satisfacen las mismas propieades, excepto las que ahora señalamos. Estos conceptos están bien definidos salvo producto por unidades. Si $d$ y $d'$ son dos divisores comunes máximos de $f,g\in k[ x ]$ entonces existe $\alpha\in k^\times$ tal que $d'=\alpha\cdot d$, e igual para los múltiplos comunes mínimos. Además, $\operatorname{mcd}(f,g)=\operatorname{mcd}(\alpha\cdot f,\beta\cdot g)$ para todo $\alpha,\beta\in k^\times$. Destacamos que el divisor común máximo se puede calcular medialte el **algoritmo de Euclides** y que satisface la **identidad de Bézout**.
{{% /remark %}}

{{% example name="Algoritmo de Euclides" %}}
Hallemos el divisor común máximo de los siguientes polinomios de $\mathbb{Q}[ x ]$, consideramos en el [ejemplo](#unadiv) anterior:
$$
\begin{array}{rcl}
f&=&x^5-\frac{1}{2}x^3+2x^2-3x+3, \cr
g&=&2x^3-\frac{2}{3}x^2+3x-1.
\end{array}
$$
Allí vimos que la división euclídea de $f$ por $g$ es

$$f=g\cdot\left(\frac{1}{2}x^2+\frac{1}{6}x-\frac{17}{18}\right)+\left(\frac{37}{27}x^2 +\frac{37}{18}\right).$$

Ahora tenemos que dividir $g$ por el resto. Esta división resulta ser exacta,

$$g=\left(\frac{37}{27}x^2 +\frac{37}{18}\right)\left(\frac{54}{37}x-\frac{18}{37}\right)+0,$$

por tanto el divisor común máximo es el último resto no nulo,

$$\operatorname{mcd}(f,g)=\frac{37}{27}x^2 +\frac{37}{18}$$

y una identidad de Bézout se obtiene simplemente despejando de la primera división euclídea,

$$\frac{37}{27}x^2 +\frac{37}{18}=f\cdot 1+g\cdot\left(-\frac{1}{2}x^2-\frac{1}{6}x+\frac{17}{18}\right).$$

podemos conseguir otro divisor común máximo con coeficientes enteros multiplicando por la unidad $\frac{54}{37}\in\mathbb{Q}^\times$,

$$2x^2 +3=f\cdot \frac{54}{37}+g\cdot \left(-\frac{27}{37}x^2-\frac{9}{37}x+\frac{51}{37}\right).$$

{{% /example %}}

El Teorema de Euclides, visto para números enteros, también es cierto en nuestro contexto, con la misma demostración basada en la identidad de Bézout.

{{% theorem name="de Euclides" label="euclides_polynomial" %}}
Si $f,g,h\in k[ x ]$ son tales que $f|gh$ y $\operatorname{mcd}(f,g)=1$ entonces $f|h$.
{{% /theorem %}}




## Irreducibles

{{% definition label="Polinomio irreducible" %}}
Sea $f\in k[ x ]$. Decimos que $f$ es **primo** si no es una unidad y solo es divisible por $\alpha$ y $\alpha\cdot f$, $\alpha\in k^\times$. Decimos que $f$ es **irreducible** si no es nulo y además, si $f=gh$ entonces bien $g$ o bien $h$ es una unidad.
{{% /definition %}}

{{% remark %}}
El $0$ no es primo y $f\in k[ x ]$ es primo si y solo si lo es $\alpha\cdot f$, $\alpha\in k^\times$. Como las unidades de $k[ x ]$ son los polinomios de grado $0$, un polinomio no nulo $f\in k[ x ]$ es **reducible** si y solo si $f=gh$ donde $\operatorname{grado}(f),\operatorname{grado}(g)\geq 1$. En particular, los polinomios de grado $1$ son todos irreducibles. Los resultados elementales sobre primos y divisibilidad que vimos en $\mathbb{Z}$ siguien siendo ciertos en $k[ x ]$, con alguna salvedad que reflejamos en los enunciados de los resultados siguientes.
{{% /remark %}}

{{% proposition %}}
Si un polinomio $f\in k[ x ]$ de $\operatorname{grado}(f)\geq 2$ posee una raíz entonces no es irreducible.
{{% /proposition %}}

{{% proof %}}
Si $a\in k$ es una raíz, $(x-a)\mid f$, así que $f=(x-a)g$. Por la fórmula del grado, $\operatorname{grado}(g)\geq 1$, así que $f$ es reducible.
{{% /proof %}}

{{% proposition %}}
Un polinomio $f\in k[ x ]$ de grado $2$ o $3$ es irreducile si y solo si no tiene raíces en $k$.
{{% /proposition %}}

{{% proof %}}
$\Rightarrow$ es consecuencia de la proposición anterior.

$\Leftarrow$ Supongamos, por reducción al absurdo, que $f$ es reducible. Entonces $f=gh$ con $\operatorname{grado}(f),\operatorname{grado}(g)\geq 1$. Como $3\geq \operatorname{grado}{f}=\operatorname{grado}{g}+\operatorname{grado}(h)$ deducimos que bien $\operatorname{grado}(g)=1$ o bien $\operatorname{grado}(h)=1$, así que $f$ tiene alguna raíz en $k$.
{{% /proof %}}

La siguiente proposición se demuestra igual que su análogo para números enteros.

{{% proposition %}}
Dados dos polinomios $f,g\in k[ x ]$ con $f$ primo, si $f\nmid g$ entonces $\operatorname{mcd}(f,g)=1$.
{{% /proposition %}}

El siguiente corolario se es consecuencia de esta proposición y del Teorema de Euclides.

{{% corollary %}}
Si $f,g,h\in k [ x ]$ son tales que $f$ es primo, $f|gh$ y $f\nmid g$, entonces $f|h$.
{{% /corollary %}}

{{% proposition %}}
Un polinomio no nulo $f\in k[ x ]$ es primo si y solo si es irreducible.
{{% /proposition %}}

{{% proof %}}
$\Rightarrow$ Si $f=gh$, como $f|gh$ entonces $f|g$ o $f|h$. Como los papeles de $g$ y $h$ son intercambiables, podemos suponer que $f|g$, es decir $g=fc$. Entonces $f=gh=fc h$. Como $f$ no es nulo, el resto de polinomios tampoco. Tenemos que $\operatorname{grado}(f)=\operatorname{grado}(f)+\operatorname{grado}( c )+\operatorname{grado}(h)$. Al ser el grado de un polinomio no nulo $\geq 0$ deducimos que $\operatorname{grado}( c )=\operatorname{grado}(h)=0$. Es decir, $h$ es una constante no nula, y por tanto una unidad.

$\Leftarrow$ Supongamos que $g|f$, es decir, $f=gc$ para cierto $c\in k[ x ]$. Como $f$ no es nulo, $g$ y $c$ tampoco. Si $\operatorname{grado}(g)=0$ entonces $g$ es una constante no nula, es decir una unidad. Si $\operatorname{grado}(g)=\operatorname{grado}(f)$ entonces $c$ es una unidad, $c\in k^\times$, por el mismo argumento, así que $g=c^{-1}f$. Queda por analizar qué ocurre si $0<\operatorname{grado} (g)<\operatorname{grado}(f)$. Como $\operatorname{grado}(f)=\operatorname{grado}(g)+\operatorname{grado}( c )$, entonces también $0<\operatorname{grado} ( c )<\operatorname{grado}(f)$, por lo que $g$ y $c$ no serían unidades. Esto contradeciría la irreducibilidad de $f$.
{{% /proof %}}

{{% proposition %}}
Dados dos polinomios $f,g\in k[ x ]$, con $g\neq 0$, la clase $[ f ]$ es una unidad en $k[ x ]/(g)$ si y solo si $\operatorname{mcd}(f,g)=1$.
{{% /proposition %}}

{{% proof %}}
$\Leftarrow$ Tomamos una identidad de Bézout, $1=fh+gl$, $h,l\in k[ x ]$, y consideramos su clase en el cociente, $[ 1 ]=[ fh+gl ]=[ f  h ] + [ g l ]=[ f ][ h ]$. Aquí usamos que $[ g l ]=[ 0 ]$ porque $gl\in (f)$. Esto prueba que $[ f ]$ es invertible y que $[ h ]$ es su inverso.

$\Rightarrow$ Si $[ h ]$ la inversa de $[ f ]$. Entonces $[ f h ] = [ 1 ]$, es decir, $g\mid(fh-1)$. Dicho de otro modo, $fh=1-gl$ para cierto $l\in k[ x ]$. Si $\operatorname{mcd}(f,g)=d$ entonces $d\mid(fh+gl)=1$, por tanto $d$ es una unidad, así que podemos tomar $d=1$.
{{% /proof %}}

{{% proposition %}}
Un polinomio no nulo $f\in k[ x ]$ es irreducible si y solo si el anillo cociente $k[ x ]/(f)$ es un cuerpo.
{{% /proposition %}}

{{% proof %}}
$\Rightarrow$ Veamos que todo elemento no nulo del cociente es invertible. La clase de un polinomio $[ g ]$ es no trivial si y solo si $f\nmid g$. En ese caso, por ser $f$ primo, $\operatorname{mcd}(f,g)=1$ y $[ g  ]$ es una unidad en el cociente por la proposición anterior. 

$\Leftarrow$ Por reducción al absurdo. Si $f$ es reducible entonces $f=gh$ con $\operatorname{grado}(g),\operatorname{grado}(h)\geq 1$. Por la fórmula del grado de un producto, $\operatorname{grado}(g) < \operatorname{grado}(f)$ así que, como $g$ no puede ser cero, $f\nmid g$, por tanto $[ g ]\neq [ 0 ]$ en el cociente. Como $\operatorname{mcd}(f,g)=g$, que no es constante, $[ g ]$ no puede ser una unidad en el cociente. Esto es una contradicción porque todos los elementos no nulos de un cuerpo son unidades.
{{% /proof %}}


El siguiente teorema se prueba igual que para $\mathbb{Z}$, reemplazando el valor absoluto por el grado.

{{% theorem name="fundamental de la aritmética" %}}
Todo polinomio no constante de $k[ x ]$ se descompone como producto finito de polinomios irreducibles de manera única salvo orden y producto por unidades.
{{% /theorem %}}

{{% corollary %}}
Todo polinomio no constante de $k[ x ]$ se descompone como producto de una unidad y una cantidad finita de polinomios mónicos irreducibles de manera única salvo orden.
{{% /corollary %}}

{{% proof %}}
Basta tomar una factorización dada por el teorema anterior y sacar factor común todos los coeficientes líderes.
{{% /proof %}}


La demostración del siguiente teorema también es igual que su versión entera.

{{% theorem  %}}
En $k[ x ]$ hay infinitos polinomios mónicos irreducibles.
{{% /theorem %}}

Si $k$ es infinito, los polinomios $x-a$, $a\in k$, son un conjunto infinito de irreducibles, pero el teorema es también cierto cuando $k$ es finito.

<!--

{{% definition %}}
La **derivación** es el homomorfismo de $k$-espacios vectoriales $D\colon k[ x ]\rightarrow k[ x ]$ definidos sobre la base $\\{x^n\\}_{n\geq 0}$ como $D(1)=0$ y $D(x^n)=nx^{n-1}$ si $n>0$. En particular

$$D(a\_nx^n+\cdots+a\_1x+a\_0)=na\_nx^{n-1}+\cdots+a\_1.$$

{{% /definition %}}

La derivación satisface la regla de Leibniz para el producto.

{{% proposition %}}
Dados $f,g\in k[ x ]$, $D(fg)=D(f)g+fD(g)$.
{{% /proposition %}}

-->


## Coeficientes complejos y reales


{{% theorem name="fundamental del álgebra" %}}
Todo polinomio $f\in\mathbb{C}[ x ]$ de grado positivo tiene una raíz en $\mathbb{C}$.
{{% /theorem %}}

{{% corollary %}}
Los polinomios irreducibles de $\mathbb{C}[ x ]$ son los de grado $1$.
{{% /corollary %}}

{{% proof %}}
Sabemos que los polinomios de grado $1$ son irreducibles. Si $f$ es de grado $>1$ y $a$ es una raíz de $f$ entonces $f=(x-a)g$. Como $\operatorname{grado}(f)=\operatorname{grado}(x-a)+\operatorname{grado}(g)=1+\operatorname{grado}(g)$ entonces $\operatorname{grado}(g)\geq 1$, así que ni $x-a$ ni $g$ son unidades, por lo que $f$ no es irreducible.
{{% /proof %}}

{{% corollary %}}
Todo polinomio $f\in\mathbb{C}[ x ]$ de grado $n>0$ factoriza de manera única como

$$f=b\prod_{i=1}^n(x-a\_i)$$

donde $a\_i,b\in\mathbb{C}$, $b\neq 0$.
{{% /corollary %}}

{{% corollary %}}
Un polinomio no nulo $f\in\mathbb{C}[ x ]$ posee una raíz con multiplicidad $>1$ si y solo si $\operatorname{mcd}(f,f')\neq 1$.
{{% /corollary %}}

{{% proof %}}
$\Rightarrow$ Si $a$ es una raíz con multiplicidad $>1$ entonces $(x-1)\mid\operatorname{mcd}(f,f')$ por [una proposición anterior](#derivada).

$\Leftarrow$ Si $d=\operatorname{mcd}(f,f')\neq 1$ entonces $\operatorname{grado}(d)\geq 1$ por tanto, por el teorema fundamental del álgebra, tiene alguna raíz $a\in\mathbb{C}$. Esto prueba que $(x-a)\mid d=\operatorname{mcd}(f,f')$, así que $(x-a)\mid f$ y $(x-a)\mid f'$, luego $a$ es una raíz de $f$ de multiplicidad $>1$ por la [proposición](#derivada) antes mencionada.
{{% /proof %}}

Observa que $\mathbb{R}[ x ]\subset\mathbb{C}[ x ]$ pues $\mathbb{R}\subset\mathbb{C}$. Esto nos permite hablar de raíces complejas de polinomios con coeficientes reales.

{{% proposition %}}
Si $a\in\mathbb{C}$ es una raíz de $f\in \mathbb{R}[ x ]$ entonces su conjugado $\bar{a}$ también. Además, ambas tienen la misma multiplicidad.
{{% /proposition %}}

{{% proof %}}
Consideramos el homomorfismo de anillos $c\colon \mathbb{C}[ x ]\rightarrow\mathbb{C}[ x ]$ definido como

$$c(a\_nx^n+\cdots+a\_0)=\bar{a}\_nx^n+\cdots+\bar{a}\_0.$$

Observa que $c$ se comporta como la identidad sobre $\mathbb{R}[ x ]$. Si $a$ es raíz de $f$ entonces $(x-a)|f$ en $\mathbb{C}[ x ]$. Como $c$ es un homomorfismo, esto implica que $x-\bar{a}=c(x-a)|c(f)=f$. Esto demuestra que $\bar{a}$ es raíz de $f$.

Análogamente se demuestra que si $(x-a)^n|f$ entonces $(x-\bar{a})^n|f$, por tanto la multiplicidad de $\bar{a}$ es $\geq$ que la de $a$. Como esto vale para cualquier $a$ y $\bar{\bar{a}}=a$, deducimos la otra desigualdad.
{{% /proof %}}

{{% proposition %}}
Todo polinomio en $\mathbb{R}[ x ]$ de grado $>0$ factoriza de manera única como producto de un escalar no nulo y polinomios irreducibles de grados $1$ y $2$.
{{% /proposition %}}

{{% proof %}}
Tomamos la descomposición en $\mathbb{C}[ x ]$,

$$f=b\prod_{i=1}^n(x-a\_i).$$

Agrupamos los factores de grado $1$ correspondientes a raíces complejas conjugadas

$$(x-a)(x-\bar{a})=x^2-2\operatorname{Re}(a)x+|a|^2.$$

Este es un polinomio mónico de grado $2$ en $\mathbb{R}[ x ]$ sin raíces reales, por tanto irreducible. El resultado es la descomposición deseada, que sabemos que es única.
{{% /proof %}}

{{% corollary %}}
Los polinomios irreducibles en $\mathbb{R}[ x ]$ son los de grado $1$ y los de grado $2$ sin raíces en $\mathbb{R}$.
{{% /corollary %}}


## Coeficientes enteros y racionales

Las nociones de divisibilidad e irreducibilidad tienen también sentido en $\mathbb{Z}[ x ]$. En este apartado estudiaremos cómo se relacionan estos aspectos en $\mathbb{Z}[ x ]$ y $\mathbb{Q}[ x ]$ y veremos algunos criterios sencillos de irreducibilidad en $\mathbb{Z}[ x ]$.

{{% theorem name="Ruffini" %}}
Si un polinomio $a\_nx^n+a\_{n-1}x^{n-1}+\cdots+a\_1x+a\_0\in\mathbb{Z}[ x ]$ tiene una raíz racional, $\frac{a}{b}$ en forma reducida, entonces $a|a\_0$ y $b|a\_n$
{{% /theorem %}}

{{% proof %}}
Sabemos que

$$0=f\left(\frac{a}{b}\right)=a\_n\left(\frac{a}{b}\right)^n+a\_{n-1}\left(\frac{a}{b}\right)^{n-1}+\cdots+a\_{n-1}\frac{a}{b}+a\_0.$$

Multiplicamos por $b^n$,
&$0=a\_na^n+a\_{n-1}a^{n-1}b+\cdots+a\_1ab^{n-1}+a\_0b^n$$
y deducimos las dos condiciones de divisibilidad el enunciado despejando primero el último sumando y luego el primero.
{{% /proof %}}

{{% definition %}}
Un polinomio no nulo $f=f(x)=a_nx^n+\cdots+a_1x+a_0\in \mathbb{Z}[ x ]$ es **primitivo** si el divisor común máximo de sus coeficientes es $1$, es decir, si no existe ningún primo $p\in \mathbb{Z}$ tal que $p|a_i$ para todo $1\leq i\leq n$.
{{% /definition %}}

Los únicos polinomios constantes primitivos son $\pm1$.

{{% lemma %}}
Dado $f=f(x)=a_nx^n+\cdots+a_1x+a_0\in \mathbb{Q}[ x ]$ no nulo existe una constante $c\in \mathbb{Q}$, llamada **contenido**, y un polinomio primitivo $f_0(x)\in \mathbb{Z}[ x ]$ tal que

$$f(x)=c\cdot f_0(x).$$

Además $c$ y $f_0(x)$ son únicos salvo signo. Denotaremos $c=\operatorname{cont}(f)$.
{{% /lemma %}}


{{% proof %}}

Veamos la existencia. Podemos quitar denominadores de los coeficientes de $f(x)$ multiplicando por una constante $d\in \mathbb{Z}$ no nula,

$$d\cdot f(x)\in \mathbb{Z}[ x ].$$

Si $e$ es el divisor común máximo de los coeficientes de $d\cdot f(x)$ vemos que podemos tomar

$$
\begin{array}{rcl}
f_0&=&\frac{d}{e}\cdot f(x),\cr
c&=&\frac{e}{d}.
\end{array}
$$

Probemos ahora la unicidad. Supongamos que $c\cdot f_0(x)=c'\cdot f'\_0(x)$ siendo $f_0(x),f'\_0(x)\in \mathbb{Z}[ x ]$ primitivos. Podemos además suponer sin pérdida de generalidad que $c,c'\in \mathbb{Z}$, multiplicando por un denominador común si fuera necesario. Como el divisor común máximo de los coeficientesde $f_0(x)$ es $1$, el divisor común máximo de los coeficientes de $c\cdot f_0(x)$ es $c$. Análogamente el divisor común máximo de los coeficientes de $c'\cdot f'\_0(x)$ es $c'$. Por la unicidad del divisor común máximo, $c$ y $c'$ son asociados, es decir $c'=u\cdot c$ donde $u\in \mathbb{Z}$ es una unidad. Por tanto, por la propiedad cancelativa, $f_0(x)=u\cdot f\_0'(x)$.
   {{% /proof %}}


{{% remark %}}
Si el contenido de un polinomio $f(x)\in \mathbb{Q}[ x ]$ está en $\mathbb{Z}$ entonces $f(x)\in \mathbb{Z}[ x ]$. Recíprocamente, el contenido de un polinomio $f(x)\in \mathbb{Z}[ x ]$ es el divisor común máximo de sus coeficientes, en particular $\operatorname{cont}(f)\in \mathbb{Z}$. Es más, dada una constante $a\in \mathbb{Z}$ tenemos que $a|f(x)$ si y solo si $a|\operatorname{cont}(f)$. Un polinomio $f(x)\in \mathbb{Z}[ x ]$ es primitivo si y solo si $\operatorname{cont}(f)=1$.
{{% /remark %}}


{{% theorem name="Lema de Gauss" %}}
El producto de polinomios primitivos en $\mathbb{Z}[ x ]$ es primitivo.
{{% /theorem %}}


{{% proof %}}
Dado un primo $p\in \mathbb{Z}$, consideramos el homomorfismo de **reducción módulo $p$**

$$\phi_p\colon \mathbb{Z}[ x ]\longrightarrow (\mathbb{Z}/(p))[ x ]$$

definido en las constantes como $\phi_p(a)=\bar a$, $a\in \mathbb{Z}$, tal que $\phi_p(x)=x$. Es decir,

$$\phi_p(a_nx^n+\cdots+a_1x+a_0)=\bar a_nx^n+\cdots+\bar a_1x+\bar a_0.$$

El homomorfismo $\phi_p$ consiste simplemente en reducir los coeficientes módulo $(p)$. En particular $f\in \\mathbb{Q}er \phi_p$ si y solo si $p$ divide a todos los coeficientes de $f$. Por tanto $f\in \mathbb{Z}[ x ]$ es primitivo si y solo si $\phi_p(f)\neq 0$ para todo $p\in \mathbb{Z}$ primo. Si $f,g\in \mathbb{Z}[ x ]$ son primitivos entonces

$$\phi_p(f\cdot g)=\phi_p(f)\cdot \phi_p(g)\neq 0$$

para todo $p\in \mathbb{Z}$ primo ya que $(\mathbb{Z}/(p))[ x ]$ es un dominio. Es decir, $f\cdot g$ también es primitivo.
{{% /proof %}}


{{% corollary %}}
Dados $f,g\in \mathbb{Q}[ x ]$ tenemos que $\operatorname{cont}(f\cdot g)=\operatorname{cont}(f)\cdot \operatorname{cont}(g)$.
{{% /corollary %}}


{{% proof %}}
Tomamos $f,g\in \mathbb{Q}[ x ]$ y los descomponemos

$$
\begin{array}{rcl}
f&=&c\cdot f_0,\cr
g&=&d\cdot g_0,
\end{array}
$$

con $c,d\in \mathbb{Q}$ y $f_0,g_0\in \mathbb{Z}[ x ]$ primitivos. Entonces

$$f\cdot g=(c\cdot d)\cdot (f_0\cdot g_0).$$

Como $f_0\cdot g_0$ es primitivo por el Lema de Gauss, esta es una descomposición válida del producto $f\cdot g$, así que $c\cdot d$ es su contenido.
{{% /proof %}}


{{% proposition %}}
Dados $f,g\in \mathbb{Z}[ x ]$, si $g|f$ en $\mathbb{Q}[ x ]$ y $g$ es primitivo entonces $g|f$ en $\mathbb{Z}[ x ]$.
{{% /proposition %}}


{{% proof %}}
Supongamos que $f=g\cdot q$ en $\mathbb{Q}[ x ]$. Como $g$ es primitivo,

$$\operatorname{cont}(f)=\operatorname{cont}(g)\operatorname{cont}(q)=\operatorname{cont}(q).$$

Como $f\in \mathbb{Z}[ x ]$ su contenido está en $\mathbb{Z}$, y como este coindice con el de $q$, entonces $q\in \mathbb{Z}[ x ]$, por lo que $g|f$ en $\mathbb{Z}[ x ]$.
{{% /proof %}}


{{% proposition %}}
Un polinomio $f\in \mathbb{Z}[ x ]$ no constante es irreducible en $\mathbb{Z}[ x ]$ $\Leftrightarrow$ $f$ es primitivo e irreducible en $\mathbb{Q}[ x ]$.
{{% /proposition %}}


{{% proof %}}

$\Leftarrow$ Supongamos que por reducción al absurdo que $f$ no es irreducible en $\mathbb{Z}[ x ]$. Lo descomponemos como producto de divisores propios $f=gh$ en $\mathbb{Z}[ x ]$. Si $g$ fuera constante entonces dividiría al contenido de $f$, que es $1$, por tanto $g$ sería una unidad, lo cual entra en contradicción con que sea un divisor propio. Lo mismo ocurriría si $h$ fuera constante. Si $g$ y $h$ no son constantes entonces también son divisores propios de $f$ en $\mathbb{Q}[ x ]$, pues no podrían ser unidades, luego $f$ no sería irreducible.

$\Rightarrow$ Si $f$ no fuera primitivo tampoco sería irreducible en $\mathbb{Z}[ x ]$ pues su contenido sería un divisor propio. Supongamos por reducción al absurdo que $f$ tiene un divisor propio $g$ en $\mathbb{Q}[ x ]$. Aquí ser un divisor propio significa que $0<$ grado de $g<$ grado de $f$.  Multiplicando por una constante no nula de $\mathbb{Q}$ si fuera necesario (por el inverso del contenido), podemos suponer que $g\in \mathbb{Z}[ x ]$ y es primitivo. Por la proposción anterior $g$ también divide a $f$ en $\mathbb{Z}[ x ]$ y por tanto es un divisor propio por cuestión de grados.
{{% /proof %}}


{{% remark %}}
Una constante $a\in \mathbb{Z}$ es irreducible en $\mathbb{Z}[ x ]$ si y solo si lo es en $\mathbb{Z}$.
{{% /remark %}}

Finalmente veremos un par de condiciones suficientes más avanzadas para la irreducibilidad de un polinomio.

{{% proposition %}}
Si $f=a\_nx^n+\cdots+a\_1x+a\_0\in \mathbb{Z}[ x ]$ es un polinomio primitivo de grado $n>0$, $p\in \mathbb{Z}$ es un primo que no divide $a\_n$ y la reducción de $f$ módulo $p$ es irreducible en $(\mathbb{Z}/(p))[ x ]$, entonces $f$ es irreducible en $\mathbb{Z}[ x ]$.
{{% /proposition %}}


{{% proof %}}
Usaremos el homomorfismo $\phi_p\colon \mathbb{Z}[ x ]\rightarrow (\mathbb{Z}/(p))[ x ]$ de reducción módulo $p$ introducido en la demostración del Lema de Gauss. En general,

$$\operatorname{grado}(\phi_p(f))\leq \operatorname{grado}(f).$$

La condición sobre $a_n$ equivale a decir que concretamente para el polinomio $f$ del enunciado

$$\operatorname{grado}(\phi_p(f))= \operatorname{grado}(f).$$

Reduzcamos al absurdo. Si $f$ fuera reducible se descompondría como producto de dos divisores propios $f=gh$. Como $f$ es primitivo, ni $g$ ni $h$ puede ser constante, es decir

$$\operatorname{grado}(g),\operatorname{grado}(h)>0.$$

Al ser $\phi_p$ un homomorfismo,

$$\phi_p(f)=\phi_p(g)\phi_p(h).$$

Ninguna de las desigualdades

$$
\begin{array}{rcl}
\operatorname{grado}(\phi_p(g))&\leq &\operatorname{grado}(g),\cr
\operatorname{grado}(\phi_p(h))&\leq &\operatorname{grado}(h),
\end{array}
$$

puede ser estricta ya que de ser así

$$\operatorname{grado}(\phi_p(f))=\operatorname{grado}(\phi_p(g))+\operatorname{grado}(\phi_p(h))<\operatorname{grado}(g)+\operatorname{grado}(h)=\operatorname{grado}(f),$$

pero $\operatorname{grado}(\phi_p(f))=\operatorname{grado}(f)$. Las dos igualdades de la ecuación anterior son ciertas porque tanto $\mathbb{Z}$ como $\mathbb{Z}/(p)$ son dominios, el segundo por ser $p$ primo. Por tanto,

$$\operatorname{grado}(\phi_p(g)),\operatorname{grado}(\phi_p(h))>0$$

y tanto $\phi_p(g)$ como $\phi_p(h)$ serían divisores propios de $\phi_p(f)$, que no sería irreducible.
{{% /proof %}}


{{% theorem name="Criterio de Eisenstein" label="eisenstein" %}}
Si $f=a\_nx^n+\cdots+a\_1x+a\_0\in \mathbb{Z}[ x ]$ es un polinomio primitivo de grado $n>0$ y $p\in \mathbb{Z}$ es un primo tal que:

* $p$ no divide $a\_n$,

* $p$ divide a $a\_{n-1},\dots,a\_0$,

* $p^2$ no divide a $a_0$,

entonces $f$ es irreducible en $\mathbb{Z}[ x ]$.
{{% /theorem %}}


{{% proof %}}
Esta demostración transcurre de manera exactamente igual que la anterior hasta la última frase, que no es válida en este caso. A partir de ahí continuamos del siguiente modo. Si $b_0, c_0\in \mathbb{Z}$ son los términos independientes de $g$ y $h$ entonces $a_0=b_0c_0$. Como $p|a_0$ y $p$ es primo, $p|b_0$ o $p|c_0$, pero no puede dividir a ambos a la vez ya que $p^2$ no divide a $a_0$. Esto prueba que bien $\phi_p(g)$ o bien $\phi_p(h)$ tiene término independiente no nulo. Por las condiciones del enunciado, $\phi_p(f)=\bar a_nx^n$ con $\bar a_n\neq 0$. Al ser $\phi_p(f)=\phi_p(g)\phi_p(h)$ un monomio y $\mathbb{Z}/(p)$ es un dominio, también $\phi_p(g)$ y $\phi_p(h)$ han de ser monomios. Como uno de ellos tiene término independiente no nulo, entonces ha de tener grado $0$, lo que contradice el cálculo al que se llega en la última ecuación de la demostración anterior.
{{% /proof %}}

