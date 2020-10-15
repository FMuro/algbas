+++
title = "Conjuntos"
weight = 10
+++


## Construcciones básicas

Comenzaremos dando una noción intuitiva de uno de los conceptos matemáticos más utilizados: el de conjunto. Sin embargo no daremos una definición rigurosa. ¿Sabes por qué?

{{% definition %}}
Un **conjunto** es una colección de **elementos**. Normalmente están caracterizados por compartir alguna propiedad. Para que un conjunto esté bien definido debe ser
posible discernir si un elemento arbitrario está o no en él.
{{% /definition %}}

Los conjuntos pueden definirse de manera **explícita**, citando todos
los elementos de los que consta *entre llaves*,

$$A = \\{ 1,2,3,4,5 \\},$$

o **implícita**, dando una o varias características que
determinen si un elemento dado está o no en el conjunto,

$$A = \\{ \text{números naturales del }1\text{ al }5\\}.$$

{{% watch %}}
Los elementos de un conjunto *no están ordenados*, aunque vengan especificados como una lista, por tanto $A=\\{3,1,2,5,4\\}$. En una definición explícita *no se pueden repetir elementos*, así que $\\{1,1,2,3,4,5\\}$ sería una manera incorrecta de expresar el conjunto $A$.
{{% /watch %}}

{{% example name="Conjuntos de números" label="prueba" %}}

* $\mathbb{N}$, los números **naturales**: 1, 2, 3, ...

* $\mathbb{N}_0$, los números naturales más el cero: 0, 1, 2, 3, ...

* $\mathbb{Z}$, los números **enteros**: ..., -2, -1, 0, 1, 2, ...

* $\mathbb{Q}$, los números **racionales**: $\frac{p}{q}$.

* $\mathbb{R}$, los números **reales**.

* $\mathbb{C}$, los números **complejos**.

{{% /example %}}

{{% definition %}}
Dado un conjunto $A$, decimos que el elemento $a$ **pertenece** a $A$, y lo denotamos $a\in A$, si $a$ es un elemento del conjunto $A$.
{{% /definition %}}

{{% watch %}}
Muchos símbolos matemáticos son **reversibles**, por ejemplo, $A\ni a$ significa lo mismo que $a\in A$. También muchos son **negables**, así $a\notin A$ significa que $a$ *no* pertenece a $A$.
{{% /watch %}}

Por ejemplo, si $A = \\{ 1,2,3,4,5 \\}$ entonces $1 \in A$ pero $6\notin A$. Otra manera implícita de expresar este conjunto $A$ es la siguiente:

$$A = \\{n|n\in\mathbb{N} \wedge 1\leq n\leq 5\\}.$$

Se lee del siguiente modo: "$A$ es el conjunto formado por los elementos $n$ tales que $n$ pertenece al conjunto los números naturales, $n$ es mayor o igual que 1 y $n$ es menor o igual que 5."


{{% definition %}}
Dos conjuntos $A$ y $B$ son **iguales** $A=B$ cuando poseen los mismos elementos, es decir, cuando $x\in A\Leftrightarrow x\in B$.
{{% /definition %}}

{{% remark %}}
Deducimos que dos conjuntos $A$ y $B$ son **distintos** $A\neq B$ si bien existe $x\in A$ tal que $x\notin B$ o bien existe $x\in B$ tal que $x\notin A$. En notación matemática: $A\neq B\Leftrightarrow(\exists x\in A|x\notin B)\vee(\exists x\in B|x\notin A).$
{{% /remark %}}

{{% definition %}}
El **conjunto vacío** $\varnothing$ es el que carece de elementos, es decir $\varnothing=\\{\\}$, o bien $\forall x, x\notin \varnothing$.

Un conjunto es **unitario** si contiene un único elemento, como por ejemplo $\\{0\\}$, $\\{1\\}$, $\\{a\\}$, $\\{$cartón de leche$\\}$, $\\{\mathbb{N}\\}$, ...
{{% /definition %}}

{{% watch %}}
¡Ojo! $x\in\\{x\\}$, pero $x\neq\\{x\\}$, de hecho, como demuestra la [paradoja de Russell](https://es.wikipedia.org/wiki/Paradoja_de_Russell), es imposible que un conjunto pertenezca a sí mismo.
{{% /watch %}}


{{% definition %}}
Dados dos conjuntos $A$ y $B$, decimos que $A$ está **contenido** o **incluído** en $B$ o que $A$ es un **subconjunto** de $B$, y lo denotamos $A\subset B$, si todo elemento de $A$ pertenece a $B$, es decir $x\in A \Rightarrow x\in B$.
{{% /definition %}}

{{% watch %}}
También se puede denotar $A\subset B$ como $A\subseteq B$. Hay que tener cuidado con la negación de estos dos símbolos. Tanto $A\not\subset B$ como $A\not\subseteq B$ significan que $A$ no está contenido en $B$, o no es un subconjunto de $B$. Sin embargo $A\subsetneq B$ solo niega la igualdad, por lo que significa que $A$ es un subconjunto de $B$ pero que $A$ no es igual a $B$, es decir, la contención es **estricta**. Por ejemplo, $\\{2,3,5\\}\subsetneq\\{1,2,3,4,5\\}$.
{{% /watch %}}

{{% remark %}}
La contención es **transitiva**, $A\subset B\subset C\Rightarrow A\subset C$. También es **reflexiva**, $A\subset A$. Además, el vacío está contenido en cualquier conjunto $\varnothing\subset A$. Los subconjuntos de $A$ distintos de $\varnothing$ y  $A$ se denominan **subconjuntos propios** de $A$.
{{% /remark %}}

![La contención es transitiva](../images/inclusion_transitive.svg)

El siguiente resultado caracteriza la igualdad entre dos conjuntos en términos de contenciones. Es la base de una técnica de prueba conocida como **doble inclusión**, que aplicaremos con frecuencia.

{{% proposition %}}
$A=B$ $\Leftrightarrow$ $A\subset B$ y $A\supset B$.
{{% /proposition %}}

{{% proof %}}
$A\subset B$ es lo mismo que $x\in A \Rightarrow x\in B$ y $A\supset B$ equivale a $x\in A \Leftarrow x\in B$, por tanto ambas simultáneamente significan $x\in A \Leftrightarrow x\in B$, que es lo mismo que $A=B$.
{{% /proof %}}

{{% watch %}}
Cualquier enunciado matemático debe venir seguido de una prueba. Se usan diversos términos para denominar a los enunciados matemáticos, de acuerdo con la percepción que tengamos de su importancia o dificultad. De mayor a menor:

* Teorema.
* Proposición.
* Lema.
* Corolario.

Los lemas suelen tener un carácter técnico y presentarse como pasos intermedios en la demostración de un resultado de mayor envergadura. Los corolarios se enuncian habitualmente después de un resultado más importante y su prueba suele ser obvia y omitirse.
{{% /watch %}}

{{% definition %}}
Dados dos conjuntos $A$ y $B$ la **intersección** $A \cap B$ es el conjunto formado por aquellos elementos
que pertenecen a ambos conjuntos, $A \cap B = \\{ x  |  x \in A  \wedge  x  \in B \\}$.
{{% /definition %}}

![Intersección](../images/intersection.svg)

{{% remark %}}
Si $C\subset A$ y $C\subset B$ entonces $C\subset A\cap B$.
{{% /remark %}}

{{% theorem %}}
La intersección de conjuntos verifica las siguientes propiedades,
donde $A$, $B$ y $C$ son conjuntos cualesquiera:

* $A \cap B = B \cap A$ (**conmutativa**).
* $(A \cap B) \cap C = A \cap (B \cap C)$ (**asociativa**).
* $A \cap B \subset A$.
* $A \cap B \subset B$.
* $\varnothing \cap A = \varnothing$.
* $A \subset B\Leftrightarrow A \cap B = A.$

{{% /theorem %}}


{{% proof %}}
Los elementos de $A \cap B$ son los que pertenecen a $A$ y a $B$, que son los mismos que pertenecen a $B$ y a $A$.

Las dos intersecciones triples son el mismo conjunto porque representan a los elementos que están en $A$, $B$ y $C$.

Los elementos que están en $A$ y en $B$ están, en particular, en $A$. También en $B$.

La quinta igualdad la demostramos por doble inclusión. La inclusión $\supset$ es siempre cierta y $\subset$ es consecuencia de un apartado anterior.

Demostremos la equivalencia del último apartado. Probemos primero $\Rightarrow$. Supongamos pues que $A\subset B$. Demostraremos la igualdad de la derecha por doble inclusión. La inclusión $\subset$ es siempre cierta. Veamos $\supset$. Como $A\subset B$, todo elemento de $A$ está también en $B$, y por tanto en la intersección. Probemos ahora $\Leftarrow$. Esto es consecuencia de que $A\cap B\subset B$.
{{% /proof %}}

{{% remark %}}
Estas propiedades nos permiten definir inductivamente la **intersección** de una *cantidad finita* de conjuntos $A_1\cap\cdots\cap A_n$. Consiste en los elementos que están en *todos* ellos.
{{% /remark %}}

Veamos el caso posiblemente infinito.

{{% definition %}}
Dado un conjunto $I$, una **familia de conjuntos** indexada por $I$ consiste en dar un conjunto $A_i$ para cada $i\in I$. Se denota como $\\{ A\_i \\}\_{i\in I}$.

La **intersección** de una familia de conjuntos se define como $\bigcap_{i\in I}A_i=\\{x|\forall i\in I, x\in A_i\\}$.
{{% /definition %}}

Si $I$ es finito, esta definición coincide con la anterior, basta enumerar los elementos de $I$ para comprobarlo. Esta definición es también válida para $I$ infinito.

{{% example name="Una intersección infinita" %}}
Consideramos el conjunto de índices $I=\mathbb{N}$ y la familia de conjuntos $\\{A\_n\\}\_{n\in\mathbb{N}}$ dada por los intervalos $A\_n=[0,\frac{1}{2^n})$. Todos estos intervalos contienen una cantidad infinita de números, pero su intersección es simplemente
$\bigcap_{n\in\mathbb{N}}[0,\frac{1}{2^n})=\\{0\\}$. En efecto, la inclusión $\supset$ es obvia porque $0\in [0,\frac{1}{2^n})$ para todo $n\in\mathbb{N}$. Por otro lado,  ningún número real positivo $x\in (0,\infty)$ puede pertenecer a la intersección ya que $x\notin [0,\frac{1}{2^n})$ para $n$ suficientemente grande. Esto prueba $\subset$.
{{% /example %}}


{{% definition %}}
Dos conjuntos $A$ y $B$ son **disjuntos** si $A \cap B = \varnothing$.
{{% /definition %}}

![Disjuntos](../images/disjoint.svg)

{{% definition %}}
Dados dos conjuntos $A$ y $B$ la **unión** $A \cup B$ es el conjunto formado por aquellos elementos
que pertenecen al menos a uno de estos dos conjuntos, $A \cup B = \\{ x  |  x \in A  \vee  x  \in B \\}$.
{{% /definition %}}

![Unión](../images/union.svg)

Observa que $A\cap B\subset A\cup B$.

{{% remark %}}
Si $A\subset C$ y $B\subset C$ entonces $A\cup B\subset C$.
{{% /remark %}}

{{% theorem %}}
La unión de conjuntos verifica las siguientes propiedades,
donde $A$, $B$ y $C$ son conjuntos cualesquiera:

* $A \cup B = B \cup A$ (**conmutativa**).
* $(A \cup B) \cup C = A \cup (B \cup C)$ (**asociativa**).
* $\varnothing \cup A = A$ (**elemento neutro**).
* $A \subset A \cup B$.
* $B \subset A \cup B$.
* $A \subset B\Leftrightarrow B=A \cup B$.

{{% /theorem %}}

{{% proof %}}
Los elementos de $A \cup B$ son los que pertenecen a $A$ o a $B$, que son los mismos que pertenecen a $B$ o a $A$.

Los dos uniones triples coinciden porque ambas representan el conjunto de elementos que pertenecen a $A$, a $B$ o a $C$.

Como el vacío no tiene elementos, los elementos que pertenecen al vacío o a $A$ son los que pertenecen a $A$.

Es obvio, por la propia definición, que tanto los elementos de $A$ como los de $B$ pertenecen a la unión.

Probemos la última equivalencia. Comenzamos demostrando $\Leftarrow$. Esto es una simple consecuencia de la inclusión $A\subset A\cup B$. Probemos ahora $\Rightarrow$. Supongamos pues que $A \subset B$. Tenemos que demostrar que $B=A \cup B$ y lo haremos por doble inclusión. La inclusión $\subset$ es cierta por el apartado anterior. Probemos la otra. Un elemento que está en $A$ o en $B$ ha de estar necesariamente en $B$ ya que $A\subset B$.
{{% /proof %}}


{{% remark %}}
Estas propiedades nos permiten definir inductivamente la **unión** de una *cantidad finita* de conjuntos $A_1\cup\cdots\cup A_n$. Consiste en los elementos que están en *alguno* de ellos.
{{% /remark %}}

Veamos ahora el caso posiblemente infinito.

{{% definition %}}
La **unión** de una familia de conjuntos $\\{ A\_i \\}\_{i\in I}$ se define como $\bigcup_{i\in I}A_i=\\{x\\;|\\;\exists i\in I| x\in A_i\\}$.
{{% /definition %}}

Igual que antes, si $I$ es finito, esta definición coincide con la anterior, pero es también válida para $I$ infinito.

{{% example name="Una unión infinita" %}}
Si consideramos la familia $\\{[0,\frac{1}{2^n})\\}\_{n\in\mathbb{N}}$ del ejemplo de intersección infinita, tenemos que
$\bigcup_{n\in\mathbb{N}}[0,\frac{1}{2^n})=[0,\frac{1}{2})$ ya que $[0,\frac{1}{2})$ es uno de los conjuntos de esta familia y todos los demás $[0,\frac{1}{2^n})$ están contenidos en él.
{{% /example %}}


{{% definition %}}
Dados dos conjuntos $A$ y $B$ se define la **diferencia** $A \setminus B$, como el conjunto formado por los elementos de $A$ que no están en $B$, $A \setminus B = \\{ x  |  x \in A  \wedge  x \notin B \\}$.
{{% /definition %}}

![Diferencia](../images/difference.svg)

{{% watch %}}
Observa que $A\setminus B\neq B\setminus A$. De hecho ambos conjuntos son disjuntos.
{{% /watch %}}


{{% definition %}}
La **diferencia simétrica** $A\triangle B$ de dos conjuntos $A$ y $B$ se define como $A\triangle B=(A\setminus B)\cup(B\setminus A)=(A\cup B)\setminus (A\cap B)$.
{{% /definition %}}

![Diferencia simétrica](../images/symmetric_difference.svg)


{{% theorem name="Leyes distributivas" %}}
Dados tres conjuntos $A$, $B$ y $C$:

* $A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$.
* $A \cup (B \cap C) = (A \cup B) \cap (A \cup C)$.

{{% /theorem %}}

{{% proof %}}
Probamos la primera por doble inclusión. La segunda la dejamos como ejercicio.

Comenzamos demostrando $\supset$. Sabemos que $A\cap B\subset A$ y $A\cap B\subset B\subset B\cup C$, por tanto $A\cap B\subset A\cap (B\cup C)$. También sabemos que $A\cap C\subset A$ y $A\cap C\subset C\subset B\cup C$, por tanto $A\cap C\subset A\cap (B\cup C)$. De aquí se deduce $\supset$.

Veamos ahora $\subset$. Dado $x\in A\cap (B\cup C)$ tenemos que $x\in A$ y $x\in B\cup C$. Por un lado, si $x\in B$ entonces $x\in A\cap B\subset (A \cap B) \cup (A \cap C)$. Por otro lado, si $x\in C$ entonces $x\in A\cap C\subset (A \cap B) \cup (A \cap C)$. De esto se sigue $\subset$.
{{% /proof %}}

Los siguientes diagramas ilustran las leyes distributivas.

![Leyes distributivas](../images/distributive_laws.svg)

{{% theorem name="Leyes de De Morgan" %}}
Dados tres conjuntos $A$, $B$ y $C$:

* $C \setminus (A \cup B) = (C \setminus A) \cap (C \setminus B)$.
* $C \setminus (A \cap B) = (C \setminus A) \cup (C \setminus B)$.

{{% /theorem %}}

{{% proof %}}
Probaremos la segunda ley de De Morgan por doble inclusión. La primera queda como ejercicio.

Comenzamos con $\supset$. Sea $x\in C\setminus A$. Tenemos entonces que $x\in C$ pero $x\notin A$, por tanto $x\notin A\cap B$ ya que $A\cap B\subset A$. Esto demuestra que $x\in C \setminus (A \cap B)$, por tanto $C\setminus A\subset C \setminus (A \cap B)$. Los papeles de $A$ y $B$ son intercambiables, así que también $C\setminus B\subset C \setminus (A \cap B)$. Esto demuestra $\supset$.

Para probar $\subset$, tomamos $x\in C \setminus (A \cap B)$. Esto quiere decir que $x\in C$ pero $x\notin A\cap B$. Esto último equivale a que bien $x\notin A$ o bien $x\notin B$. Si $x\notin A$ entonces $x\in C\setminus A$ y si $x\notin B$ entonces $x\in C\setminus B$. Por tanto $x\in (C \setminus A) \cup (C \setminus B)$. Esto prueba $\subset$.
{{% /proof %}}

Las leyes de De Morgan quedan mejor explicadas por los siguientes diagramas.

![Leyes de De Morgan](../images/morgan.svg)

{{% definition %}}
El **producto cartesiano** de dos conjuntos $A$ y $B$ es el conjunto $A\times B$ cuyos elementos son los **pares ordenados** $(a,b)$ cuya primera **coordenada** está en $A$, $a\in A$, y la segunda en $B$, $b\in B$, es decir $A \times B = \\{ (a,b)  |  a \in A \wedge b \in B \\}$.
{{% /definition %}}

{{% example name="Un producto cartesiano" %}}
Si $A= \\{ 1,2,3 \\}$ y $B=\\{a,b\\}$ entonces $A \times B=\\{(1,a), (1,b), (2,a), (2,b), (3,a), (3,b)\\}$.
{{% /example %}}

{{% remark %}}
El vacío hace el papel de cero con respecto al producto cartesiano $A \times \varnothing = \varnothing = \varnothing \times B$.
{{% /remark %}}

{{% watch %}}
En general, el producto cartesiano no es conmutativo $A\times B\neq B\times A$.
{{% /watch %}}

{{% exercise %}}
Si $A$ y $B$ son finitos, ¿cuántos elementos tiene $A\times B$?
{{% /exercise %}}

{{% remark %}}
Análogamente, podemos definir el **producto cartesiano** de una cantidad finita de conjuntos $A\_1\times\cdots\times A\_n$ como el formado por las **$n$-uplas** $(a\_1,\dots, a\_n)$ tales que $a\_i\in A\_i$. Más generalmente,  podemos definir el producto cartesiano de una familia arbitraria de conjuntos $\\{A\_i\\}\_{i\in I}$, $\prod\_{i\in I}A\_i=\\{(a\_i)\_{i\in I}|a\_i\in A\_i\\}$.
{{% /remark %}}

{{% example name="Un producto infinito" %}}
El producto infinito $\prod_{n\in\mathbb{N}}[0,\frac{1}{2^n})$ está formado por todas las sucesiones $(a\_n)\_{n\in\mathbb{N}}$ de números reales tales que $0\leq a\_n<\frac{1}{2^n}$ para todo $n\in\mathbb{N}$.
{{% /example %}}

{{% definition %}}
Dado un conjunto $A$, el **conjunto de las partes** de $A$ es $\mathcal{P}(A)=\\{$subconjuntos de $A\\}$.
{{% /definition %}}

{{% remark %}}
$B\subset A\Leftrightarrow B\in\mathcal{P}(A)$.
{{% /remark %}}

{{% example name="Las partes de $A = \{ 1,2,3 \}$" %}}
$\mathcal{P}(A) = \\{\varnothing, \\{ 1 \\},  \\{ 2 \\},  \\{ 3 \\}, \\{1,2\\},  \\{1,3\\},  \\{2,3\\}, A \\}$.
{{% /example %}}

{{% exercise %}}
Si $A$ es un conjunto con $n$ elementos, ¿cuántos elementos tiene $\mathcal{P}(A)$? ¿Qué ocurre si $A$ es infinito? ¿Es posible que $\mathcal{P}(A)$ sea vacío? ¿Y unitario?
{{% /exercise %}}

{{% definition %}}
En una situación concreta, un **conjunto universal** $U$ es el que contiene a todos los posibles conjuntos del problema que tratamos.
{{% /definition %}}

![Conjunto universal](../images/universal_set.svg)

{{% definition %}}
Fijado un conjunto universal $U$, el **complementario** de un conjunto $A$ se denota $\bar{A}$ o $A^c$ y se define como $\bar{A} = U\setminus A$.
{{% /definition %}}

![Complementario](../images/complement.svg)

{{% proposition %}}
Si tenemos fijado un conjunto universal $U$ entonces $A \setminus B = A \cap \bar{B}$.
{{% /proposition %}}

{{% proof %}}
Como $A,B\subset U$,
$$
\begin{array}{rcl}
A \setminus B&=&\\{x  |  x \in A  \wedge  x \notin B\\} \cr
&=&\\{x  |  x \in A  \wedge   (x\in U \wedge x \notin B)\\} \cr
&=&\\{x  |  x \in A  \wedge   x\in \bar B\\} \cr
&=&A \cap \bar{B}.
\end{array}
$$
{{% /proof %}}


{{% proposition %}}
Dado un conjunto universal $U$:

* $\bar{\bar{A}}=A$.
* $\bar U=\varnothing$.
* $\bar{\varnothing}=U$.

{{% /proposition %}}

{{% proof %}}
Como $A\subset U$,
$$
\begin{array}{rcl}
\bar{\bar{A}} &=& U\setminus \bar{A}\cr
&=&\\{ x  |  x \in U \wedge x \notin \bar{A} \\} \cr
&=& \\{ x  |  x \in U \wedge (x\notin U \vee x\in A) \\} \cr
&=& \\{ x  |  x \in U \wedge x\in A \\} \cr
&=& \\{ x  |  x\in A \\} \cr
&=& A.
\end{array}
$$

Por otro lado,

$$\bar U=U\setminus U=\varnothing,$$

así que $U=\bar{\bar{U}}=\bar\varnothing$.
{{% /proof %}}




## Aplicaciones

{{% definition %}}
Dados dos conjuntos $A$ y $B$, una **aplicación** $f$ de $A$ en $B$, que se denota $f\colon A\rightarrow B$, es una regla que asocia a cada $a\in A$ un único elemento $f(a)\in B$, denominado **imagen** de $a$ por $f$. También diremos que $f(a)$ es el **valor** de $f$ en $a$. Esto se denota también como $a\mapsto f(a)$, especialmente en diagramas como el siguiente,

$$
\begin{array}{rcl}
	f\colon A & \longrightarrow & B,\cr
	a & \mapsto & f(a).
\end{array}
$$

También se puede colocar el nombre de la aplicación encima de la flecha,

$$A\stackrel{f}{\longrightarrow} B.$$

{{% /definition %}}

El siguiente diagrama ilustra una aplicación

![Aplicación](../images/map.svg)

que se puede definir también del siguiente modo:

$$
\begin{array}{rcl}
A&\stackrel{f}\longrightarrow& B,\cr
1&\mapsto&a,\cr
2&\mapsto&b,\cr
3&\mapsto&b,\cr
4&\mapsto&b.
\end{array}
$$

Sin embargo el diagrama siguiente no es una aplicación ya que la definición no se cumple por varias razones, ¿sabrías decir cuáles?

![No aplicación](../images/no_map.svg)

{{% watch %}}
Para definir una aplicación hay que especificar lo siguiente:

* El conjunto de partida, también llamado **dominio**.
* El de llegada, o **codominio**.
* La imagen de cada elemento del conjunto de partida.

Si dos aplicaciones difieren en alguno de estos tres puntos se consideran diferentes.
{{% /watch %}}

{{% example name="Aplicaciones parecidas pero diferentes" %}}
La aplicación $f\colon \mathbb{N}\rightarrow \mathbb{N}$ definida como $f(n)=n$ es diferente de la aplicación $g\colon \mathbb{N}\rightarrow \mathbb{Z}$ definida como $g(n)=n$.
{{% /example %}}

{{% example name="Algunas aplicaciones importantes" %}}

* La **identidad** $1_A\colon A\rightarrow A$ se define como $1_A(a)=a$ para todo $a\in A$. Esta aplicación está definida para cualquier conjunto $A$.

* Dado un subconjunto $B\subset A$, la **inclusión** $i\colon B\rightarrow A$ se definie como $i(b)=b$ para todo $b\in B$.

* Dados dos conjuntos $A$ y $B$ y un elemento $b\in B$, la aplicación **constante** $c_b\colon A\rightarrow B$ se define como $c_b(a)=b$ para todo $a\in A$.

{{% /example %}}

{{% exercise %}}
Dado un conjunto $A$, ¿hay algun aplicación $\varnothing\rightarrow A$? ¿Y $A\rightarrow\varnothing$?.
{{% /exercise %}}


{{% definition %}}
Dadas dos aplicaciones

$$A\stackrel{f}\longrightarrow B\stackrel{g}\longrightarrow C$$

su **composición** $g\circ f\colon A\rightarrow C$ es la aplicación definida como $(g\circ f)(a)=g(f(a))$.
{{% /definition %}}


{{% proposition %}}
La composición de aplicaciones satisface las propiedades siguientes:

* Dadas tres aplicaciones $$A\stackrel{f}\longrightarrow B\stackrel{g}\longrightarrow C\stackrel{h}\longrightarrow D$$ se verifica que $h\circ (g\circ f)=(h\circ g)\circ f$ (**asociativa**).

* Dada una aplicación $f\colon A\rightarrow B$, se tiene que $f\circ 1_A=f=1_B\circ f$ (**elemento neutro**).

{{% /proposition %}}

{{% proof %}}
Las aplicaciones cuya igualdad se plantea tienen el mismo dominio y codominio, por tanto bastará comprobar que las imágenes de los elementos del dominio coinciden.

Dado $a\in A$, por un lado
$$
\begin{array}{rcl}
(h\circ (g\circ f))(a)&=&h((g\circ f)(a))\cr
&=&h(g(f(a)),\cr
((h\circ g)\circ f)(a)&=&(h\circ g)(f(a))\cr
&=&h(g(f(a)).
\end{array}
$$

Por otro lado

$$
\begin{array}{rcl}
(f\circ 1_A)(a)&=&f(1_A(a))\cr
&=&f(a)\cr
&=&1_B(f(a))\cr
&=&(1_B\circ f)(a).
\end{array}
$$

{{% /proof %}}

{{% definition %}}
Una aplicación $f \colon  A \rightarrow B$ es **invertible** si existe $g \colon B \rightarrow A$ tal que
$g \circ f = 1_A$ y $f \circ g = 1_B$,

$${}\_{1\_A}\\!\\!\circlearrowright A\mathop{\rightleftarrows}\limits^f\_g B\circlearrowleft\_{1\_B}$$

{{% /definition %}}

{{% proposition %}}
La aplicación $g$ de la definición anterior, si existe, es única.
{{% /proposition %}}

{{% proof %}}
Si hubiera otra $g' \colon B \rightarrow A$ tal que $g' \circ f = 1_A$ y $f \circ g' = 1_B$, entonces
$$
\begin{array}{rcl}
g&=&g\circ 1_B\cr
&=&g\circ (f\circ g')\cr
&=&(g\circ f)\circ g'\cr
&=&1_A\circ g'=g'.
\end{array}
$$
{{% /proof %}}

{{% definition %}}
Si $f \colon  A \rightarrow B$ es invertible su aplicación **inversa**  $f^{-1} \colon B \rightarrow A$ es la única que satisface
$f^{-1} \circ f = 1_A$ y $f \circ f^{-1} = 1_B$,

$${}\_{1\_A}\\!\\!\circlearrowright A\mathop{\rightleftarrows}\limits^f\_{f^{-1}} B\circlearrowleft\_{1\_B}$$

{{% /definition %}}


{{% remark %}}
La identidad $1_A\colon A\rightarrow A$ es invertible y $1_A^{-1}=1_A$. Si $f\colon A\rightarrow B$ es invertible entonces $f^{-1} \colon B \rightarrow A$ también y $(f^{-1})^{-1}=f$.
{{% /remark %}}

{{% proposition %}}
Si tenemos dos aplicaciones invertibles

$$A\stackrel{f}\longrightarrow B\stackrel{g}\longrightarrow C$$

entonces $g\circ f$ es invertible y $(g\circ f)^{-1}=f^{-1}\circ g^{-1}$.
{{% /proposition %}}

{{% proof %}}
Basta observar que

$$
\begin{array}{rcl}
(g\circ f)\circ (f^{-1}\circ g^{-1})
&=&
g\circ (f\circ f^{-1})\circ g^{-1}\cr
&=&
g\circ 1_B\circ g^{-1}\cr
&=&
g\circ g^{-1}\cr
&=&
1_C,
\end{array}
$$

y que

$$
\begin{array}{rcl}
(f^{-1}\circ g^{-1})\circ (g\circ f)
&=&
f^{-1}\circ (g^{-1}\circ g)\circ f\cr
&=&
f^{-1}\circ 1_B\circ f\cr
&=&
f^{-1}\circ f\cr
&=&
1_A.
\end{array}
$$

{{% /proof %}}

Nos disponemos a dar una caracterización más asequible de las aplicaciones invertibles.

{{% definition %}}
Sea $f\colon A \rightarrow B$ una aplicación.

* $f$ es **inyectiva** o **uno-a-uno** si no existen dos elementos diferentes de $A$ con la misma imagen.
* $f$ es **sobreyectiva** si todo elemento de $B$ es la imagen de algún elemento de $A$.
* $f$ es **biyectiva** si es inyectiva y sobreyectiva.

{{% /definition %}}

En una aplicación inyectiva no puede ocurrir los siguiente:

![Aplicación no inyectiva](../images/noninjective.svg)

En una sobreyectiva está prohibida la siguiente situación:

![Aplicación no sobreyectiva](../images/nonsurjective.svg)

{{% remark %}}
En notación matemática, $f\colon A\rightarrow B$ es **inyectiva** si, dados $a,a'\in A$, $f(a)=f(a')\Rightarrow a=a'$, y $f$ es **sobreyectiva** si $\forall b\in B\\;\exists a\in A|f(a)=b$. Las flechas de las aplicaciones inyectivas se denotan $f\colon A\hookrightarrow B$ y las de las sobreyectivas $f\colon A\twoheadrightarrow B$.
{{% /remark %}}

{{% watch %}}
Es un error tristemente común el confundir la caracterización anterior de la inyectividad con la implicación $\Leftarrow$. En realidad esta impliciación es cierta para cualquier aplicación por la propia definición.
{{% /watch %}}

{{% lemma %}}
Una aplicación $f\colon A \rightarrow B$ es biyectiva $\Leftrightarrow$ $\forall b\in B\\;\exists! a\in A|f(a)=b$.
{{% /lemma %}}

{{% proof %}}
Veamos $\Rightarrow$. Supongamos pues que $f$ es biyectiva. Si excluimos la condición de unicidad, el enunciado de la derecha es cierto por ser $f$ sobreyectiva. La unicidad se deduce de ser $f$ inyectiva, pues si existieran $a,a'\in A$ tales que $f(a)=b=f(a')$ entonces tendríamos que $a=a'$.

Veamos ahora $\Leftarrow$. Como ya hemos comentado, el enunciado de la derecha implicia la sobreyectividad de $f$ ya que incluso la condición de unicidad no sería necesaria para esto. Para ver que $f$ es inyectiva tomamos $a,a'\in A$ y suponemos que $f(a)=f(a')$. Tomando $b=f(a)$ tenemos que $f(a)=b$ y $f(a')=b$, así que por la unicidad $a=a'$, que es lo que teníamos que probar.
{{% /proof %}}

{{% exercise %}}
Si $f\colon A\rightarrow B$ es biyectiva y $A$ es finito, ¿qué podemos decir de $B$? ¿Y si $f$ es inyectiva? ¿Y si es sobreyectiva?
{{% /exercise %}}

El siguiente tema versará en buena parte sobre el estudio de las aplicaciones biyectivas de un conjunto finito en sí mismo.

{{% theorem %}}
Una aplicación $f\colon A \rightarrow B$ es invertible $\Leftrightarrow$ es biyectiva.
{{% /theorem  %}}

{{% proof %}}
Supongamos que $f$ es invertible. Veamos que es sobreyectiva. Dado $b\in B$ tenemos que $f(f^{-1}(b))=(f\circ f^{-1})(b)=1_B(b)=b$, con lo que $f$ es sobreyectiva. Si, dados $a,a'\in A$, $f(a)=f(a')$, entonces $f^{-1}(f(a))=f^{-1}(f(a'))$. Como $f^{-1}\circ f=1_A$ deducimos que $a=a'$, luego $f$ es inyectiva.

Supongamos ahora que $f$ es biyectiva. Definimos $g\colon B\rightarrow A$ del siguiente modo. Dado $b\in B$, definimos $g(b)\in A$ como el único elemento tal que $f(g(b))=b$, que está bien definido por el lema anterior. Esto implica que $f\circ g=1_B$. Veamos que $g\circ f=1_A$. Ambas aplicaciones tienen a $A$ como dominio y codominio, así que basta ver que toman los mismos valores, es decir que para todo $a\in A$, $(g\circ f)(a)=1_A(a)=a$. Como $f$ es inyectiva, esto equivale a probar que $f((g\circ f)(a))=f(a)$. Tenemos también que $f((g\circ f)(a))=(f\circ(g\circ f))(a)$. Usando la asociatividad de la composición y la identidad ya probada deducimos que en efecto

$$
\begin{array}{rcl}
f\circ(g\circ f)&=&(f\circ g)\circ f\cr
&=&1_B\circ f\cr
&=&f.
\end{array}
$$

{{% /proof %}}

{{% remark %}}
Las aplicaciones invertibles juegan en el ámbito de los conjuntos el mismo papel que las igualdades en el campo de los números, es por eso que se denotan

$$f\colon A\stackrel{\cong}\longrightarrow B$$

o simplemente $f\colon A\cong B$. Por ejemplo, el producto cartesiano $A\times B$ no es conmutativo estrictamente hablando, pero hay una biyección

$$
\begin{array}{rcl}
A\times B&\cong &B\times A,\cr
(a,b)&\mapsto &(b,a).
\end{array}
$$

Decimos pues que el producto cartesiano no es conmutativo *salvo biyección*. Lo mismo ocurre con la asociatividad del producto cartesiano,

$$
\begin{array}{rcl}
(A\times B)\times C&\cong &A\times(B\times C),\cr
((a,b),c)&\mapsto &(a,(b,c)).
\end{array}
$$

Es más, ambos están en biyección con el producto triple, por ejemplo

$$
\begin{array}{rcl}
(A\times B)\times C&\cong &A\times B\times C,\cr
((a,b),c)&\mapsto &(a,b,c).
\end{array}
$$

{{% /remark %}}

{{% definition %}}
Sea $f \colon  A \rightarrow B$ una aplicación.

* La **imagen directa** de un subconjunto del dominio $U\subset A$
es el subconjunto del codominio $f(U)=\\{b\in B\\;|\\;\exists a\in U|f(a)=b\\}\subset B$.
* La **imagen inversa** de un subconjunto del codominio $V\subset B$ es subconjunto del dominio $f^{-1}(V)=\\{a\in A| f(a)\in V\\}\subset A$.

La **imagen** de la aplicación $A$ se define como $\operatorname{im}f=f(A)$.
{{% /definition %}}

![Imagen directa](../images/direct_image.svg)

![Imagen inversa](../images/inverse_image.svg)


La imagen inversa recible otros nombres como **contraimagen**, **preimagen** o **anti-imagen**. La imagen directa también se denomina simplemente **imagen**.

{{% watch %}}
Dada una aplicación $f\colon A\rightarrow B$, conviene no confundir la imagen de un elemento de $A$ con la imagen directa de un subconjunto de $A$, aunque obviamente son conceptos relacionados, $f(\\{a\\})=\\{ f(a) \\}$.
{{% /watch %}}


{{% exercise %}}
¿Cuál es la imagen directa del subconjunto vacío? ¿Y su imagen inversa? ¿Dependen las respuestas a estas preguntas de quién sea $f\colon A\rightarrow B$?
{{% /exercise %}}

{{% watch %}}
La notación $f^{-1}(V)$ para la imagen inversa es confusa porque incorpora la notación usada para la inversa de la aplicación $f$, cuando esta existe. La imagen inversa está siempre definida, aun cuando $f$ no es invertible y por tanto $f^{-1}$ no existe. Si $f$ es invertible, no hay ambigüedad ya que en este caso la imagen inversa $f^{-1}(V)$ de $V$ a través de $f$ coincide con la imagen directa de $V$ a través de $f^{-1}\colon B \rightarrow A$. Para añadir aún más confusión, es habitual abusar de la terminología y denotar al subconjunto $f^{-1}(\\{b\\})\subset A$ simplemente por $f^{-1}(b)$. El significado de esta expresión en cada caso se deducirá del contexto.
{{% /watch %}}

{{% remark label="rem:directinverse" %}}

* Una aplicación $f\colon A\rightarrow B$ es sobreyectiva si y solo si $\operatorname{im}f=f(A)=B$.

* Para toda aplicación $f\colon A\rightarrow B$, $f^{-1}(B)=A$.

* A partir de cualquier aplicación $f\colon A\to B$ podemos definir una sobreyectiva $\overline{f}\colon  A \to \operatorname{im}(f)$ como $\overline{f}(a)=f(a)$. ¿En qué se diferencia de la anterior?

* Las imágenes directa e inversa preservan inclusiones, es decir,
dada una aplicación $f\colon A\rightarrow B$:

	- $U\subset U'\subset A\Rightarrow f(U)\subset f(U')\subset B$
	- $V \subset V'\subset B\Rightarrow f^{-1}(V)\subset f^{-1}(V')\subset A$.

¿Son ciertos los recíprocos de estas últimas implicaciones?
{{% /remark %}}

{{% proposition %}}
Dada una aplicación $f\colon A \rightarrow B$ y subconjuntos $U\subset
A$ y $V\subset B$, se verifican las siguientes propiedades:

* $U \subset f^{-1}(f(U))$.
* $f(f^{-1}(V)) \subset V$.

{{% /proposition %}}

{{% proof %}}
Probaremos la segunda propiedad y dejaremos la primera como ejercicio. Dado $y\in f(f^{-1}(V))$ existe $x\in f^{-1}(V)$ tal que $y=f(x)$. Como $x\in f^{-1}(V)$, $f(x)\in V$, así que $y\in V$. Esto es lo que había que demostrar.
{{% /proof %}}

{{% proposition %}}
Dada una aplicación $f\colon A \rightarrow B$ y subconjuntos $U_1,U_2 \subset
A$ y $V_1,V_2 \subset B$, se verifican las siguientes propiedades:

1. $f(U_1 \cup U_2) = f(U_1) \cup f(U_2)$.
2. $f(U_1 \cap U_2) \subset f(U_1) \cap f(U_2)$.
3. $f^{-1} (V_1 \cup V_2) = f^{-1} (V_1) \cup f^{-1} (V_2)$.
4. $f^{-1} (V_1 \cap V_2) = f^{-1} (V_1) \cap f^{-1} (V_2)$.

{{% /proposition %}}

{{% proof %}}
Vamos a probar 2 y 3. Los demás apartados son similares y quedan como ejercicio.

Dado $y \in
f(U_1 \cap U_2)$ existe $x \in U_1 \cap U_2$ tal que $y =
f(x)$. Como $x\in U_1$ y $x\in U_2$ deducimos que $y \in f(U_1)$ e $y \in f(U_2)$, por tanto  $y\in f(U_1) \cap f(U_2)$.

Tenemos que $x\in f^{-1}(V_1 \cup V_2)$ si y solo si $f(x)\in V_1\cup V_2$. Esto equivale a decir que $f(x)\in V_1$ o $f(x)\in V_2$, lo que es lo mismo, $x\in f^{-1}(V_1)$ o $x\in f^{-1}(V_2)$. Esto último es idéntico a afirmar que $x\in f^{-1}(V_1)\cup f^{-1}(V_2)$.
{{% /proof %}}

{{% definition %}}
La **restricción** de una aplicación $f\colon A \rightarrow B$ a un subconjunto
$U\subset A$ es la aplicación $f|_U\colon U\rightarrow B$ definida como $f|_U(u)=f(u)$ para todo $u\in U$.
{{% /definition %}}

{{% exercise %}}
¿En qué se diferencian $f$ y su restricción $f|_U$?
{{% /exercise %}}


{{% definition %}}
Dados dos conjuntos $A$ y $B$, el **conjunto exponencial** es $B^A=\\{$aplicaciones $A\rightarrow B\\}$.
{{% /definition %}}

{{% example name="Un conjunto exponencial pequeño" %}}
El conjunto exponencial $\\{a,b\\}^{\\{1,2\\}}=\\{f\_1,f\_2,f\_3,f\_4\\}$ está formado por las cuatro aplicaciones siguientes:

![Conjunto exponencial](../images/exponential.svg)

{{% /example %}}

{{% exercise %}}

* Si $A$ y $B$ son finitos, ¿cuántos elementos tiene $B^A$?

* ¿Cuántos elementos hay en $A^\varnothing$?

* Dado un conjunto cualquiera $A$ y otro unitario $\\{e\\}$, describe $A^{\\{e\\}}$ y $\\{e\\}^A$.

{{% /exercise %}}

{{% definition %}}
El **grafo** de una aplicación $f\colon A\rightarrow B$ es el conjunto 

$$G_f=\\{(a,b)\in A\times B | b=f(a) \\} \subset A\times B$$

{{% /definition %}}

El grafo de la aplicación

![Aplicación](../images/map.svg)

es el conjunto

$$G_f=\\{(1,a), (4,b), (2,b), (3, b)\\}\subset A\times B.$$

{{% remark %}}
Las aplicaciones $f\colon A\rightarrow B$ se caracterizan porque para cada $a$ está definido un único $f(a)\in B$. Por tanto un subconjunto $S\subset A\times B$ es el grafo de una aplicación $f$ si para cada $a\in A$ existe un único $b\in B$ tal que $(a,b)\in S$. Este $b$ sería $b=f(a)$.
{{% /remark %}}



## Conjuntos cociente

{{% definition %}}
Una **relación** $R$ en un conjunto $A$ es un subconjunto $R\subset A\times A$. Si $(x,y)\in R$ diremos que $x$ **está relacionado con** $y$ y lo denotaremos $xRy$, o simplemente $x\sim y$ cuando la relación $R$ sea obvia por el contexto.

Una relación $R$ es **de equivalencia** si satisface las siguientes propiedades:

* $xRx$ para todo $x \in A$ (**reflexiva**).
* $xRy\Leftrightarrow yRx$ para $x,y\in A$ cualesquiera (**simétrica**).
* $xRy\wedge yRz\Rightarrow xRz$ para $x,y,z\in A$ (**transitiva**).

{{% /definition %}}

{{% example name="Relaciones de equivalencia" %}}

* En el conjunto de los seres humanos, poseer el mismo grupo sanguíneo, es decir $x\sim y$ si $x$ tiene el mismo grupo sanguíneo que $y$.

* En el conjunto de estudiantes del primer curso del Grado en Matemáticas de la Universidad de Sevilla, estar en el mismo grupo de Álgebra Básica.

* En $\mathbb Z$, tener la misma paridad, o equivalentemente $x\sim_2 y$ si $x-y$ es par.

* En $\mathbb Z$, dado $n\in \mathbb Z$, podemos definir la relación $\sim\_n$ como $x\sim\_n y$ si $x-y$ es divisible por $n$. Observa que $\sim\_n=\sim\_{-n}$.

* En un conjunto cualquiera $A$, la relación dada por la igualdad, $x\sim y$ si $x=y$.

* En un conjunto cualquiera $A$, la relación definida como $x\sim y$ para todo $x,y\in A$.

{{% /example %}}

{{% exercise %}}
Estudia si las siguientes relaciones en el conjunto de los seres humanos son de equivalencia:

* Ser hermano de. Es decir, $x\sim y$ si $x$ es hermano de $y$.

* Ser hijo de.

* Ser la misma persona.

* Tener la misma edad.

* Llevarse menos de un año de edad.

Pon más ejemplos, definidos sobre los conjuntos que desees, de relaciones que satisfagan exactamente una o exactamente dos de las propiedades que se le demandan a las relaciones de equivalencia.
{{% /exercise %}}

{{% definition %}}
Dada una relación de equivalencia $R$ en un conjunto $A$, la **clase (de equivalencia)** de $x \in A$ es el conjunto de los elementos relacionados con $x$, es decir $R(x)=\\{y\in A| xRy\\}$. Los elementos de $R(x)$ se denominan **representantes** de esta clase. El conjunto **cociente** de $A$ por $R$ es el formado por las clases de equivalencia de los elementos de $A$. La **proyección canónica** es la aplicación sobreyectiva $\pi\colon A \twoheadrightarrow A/R$ definida como $x\mapsto R(x)$.
{{% /definition %}}

{{% remark %}}
Cuando la relación de equivalencia se denota simplemente $\sim$ por ser sobreentendida, la clase de un elemento $x\in A$ se denota simplemente como $[x]$ o $\overline{x}$. Observa que, en virtud de la reflexividad, $x\in R(x)$ en cualquier relación de equivalencia.
{{% /remark %}}

{{% watch %}}
En las relaciones de equivalencia, y por tanto en los cocientes, el problema que más confusión genera es que una misma clase de equivalencia puede tener muchos representantes diferentes. Esto dificulta la definición de aplicaciones que parten de cocientes $f\colon A/R\rightarrow B$, ya que si quiero definir $f(R(x))$ basándome en la elección de un representante, por ejemplo $x\in R(x)$, debo comprobar que la definición es independiente de cualquier otra elección posible del representante $y\in R(x)$.
{{% /watch %}}

{{% example name="Conjuntos cociente" %}}
Aquí identificamos los conjuntos cociente del ejemplo de arriba, en algunos casos estableciendo una biyección con otro conjunto más sencillo.

* $\\{$Seres humanos$\\}/$poseer el mismo grupo sanguíneo $\cong \\{0, A,B,AB\\}\colon [ x ]\mapsto$ grupo sanguíneo de cualquier representante.

* $\\{$Estudiantes de primero de Matemáticas$\\}/$estar en el mismo grupo de Álgebra Básica $\cong \\{A,B,C,D,E,F\\}\colon [ x ]\mapsto$ grupo al que pertenece un representante cualquiera.

* $\mathbb Z/\sim_2\\;=\\; \\{[0],[1]\\}$.

* $\mathbb Z/\sim_n\\;=\\;\\{[0],\dots,[n-1]\\}$ si $n>0$.

* En este caso la proyección natural es biyectiva $\pi\colon A\cong A/=$.

* $A/\sim$ es unitario.

{{% /example %}}


{{% definition %}}
Una **partición** de $A$ es un subconjunto $P \subset \mathcal{P}(A)$ tal que:

* Los elementos de $P$ son subconjuntos no vacíos de $A$.
* La unión de todos los elementos de $P$ es $A$.
* Dos elementos distintos de $P$ son siempre disjuntos.

{{% /definition %}}

La siguiente es una partición de un conjunto $A$ formada por los subconjuntos $\\{E_1, E_2, E_3, E_4, E_5\\}$.

![Partición](../images/partition.svg)


{{% proposition %}}
Si $R$ es una relación de equivalencia en un conjunto $A$, $xRy\Leftrightarrow R(x)=R(y)$.
{{% /proposition %}}

{{% proof %}}
$\Leftarrow$ En este caso $xRy$ pues $y\in R(x)$.

$\Rightarrow$ Probemos $\subset$. Si $z\in R(x)$ es porque $xRz$. Como $yRx$, por la transitividad tenemos que $yRz$, así que $z\in R(y)$. La inclusión $\supset$ también es cierta porque, por la simetría, los papeles de $x$ e $y$ son intercambiables en el argumento anterior.
{{% /proof %}}

{{% theorem %}}
Si $R$ es una relación de equivalencia en $A$, entonces $A/R$ es una partición de $A$. Es más, toda partición de $A$ proviene de una relación de equivalencia.
{{% /theorem %}}

{{% proof %}}
Las clases que forman $A/R$ no son vacías porque todas poseen algún representante. La unión de todas las clases es $A$, porque todo $x\in A$ pertenece a una clase, a la suya propia, $x\in R(x)$. Supongamos que dos clases $R(x)$ y $R(y)$ no fueran disjuntas. Entonces existe $z\in R(x)\cap R(y)$. Esto significa que $xRz$ e $yRz$. Por la simetría y la transitividad, $xRy$, luego por la proposición anterior $R(x)=R(y)$.

Si tenemos una partición $P$ de $A$, podemos definir la relación de equivalencia $x\sim_Py$ si $x$ e $y$ pertenecen al mismo elemento de la partición. Es obvio que esta relación es simétrica. Es reflexiva porque, en virtud de la segunda propiedad de las particiones, todo elemento de $A$ pertenece a alguno de $P$. Veamos la transitividad. Si $x\sim_Py\sim_Pz$ entonces existen $U,V\in P$ tales que $x,y\in U$ y $y,z\in V$. Como $y\in U\cap V$ la tercera propiedad de las particiones nos asegura que $U=V$, así que $x\sim_Pz$. Esta relación de equivalencia satisface $A/\sim_P=P$ por su propia definición, ya que el vacío no está en $P$.
{{% /proof %}}


## Factorización canónica de una aplicación

{{% theorem name="Propiedad universal de la proyección canónica" %}}
Si $f\colon A\rightarrow B$ es una aplicación y $R$ es una relación de equivalencia en $A$ tal que
$xRy \Rightarrow f(x) =f(y)$, entonces
existe una única aplicación $\overline{f}\colon A/R\to B$ tal que $f=\overline{f}\circ\pi$,

$$f\colon A\stackrel{\pi}\longrightarrow A/R\stackrel{\overline{f}}\longrightarrow B.$$

{{% /theorem %}}

{{% proof %}}
Vamos a suponer que $\overline{f}$ existe y cumple las propiedades indicadas. De ahí deduciremos una fórmula forzosa para $\overline{f}$, con lo cual de existir será única. Luego veremos que la fórmula tiene sentido, luego $\overline{f}$ existirá.

Si $f=\overline{f}\circ\pi$ entonces dado $a\in A$,
$$
\begin{array}{rcl}
f(x)&=&(\overline{f}\circ\pi)(x)\cr
&=&\overline{f}(\pi(x))\cr
&=&\overline{f}(R(x)).
\end{array}
$$
Definimos pues $\overline{f}$ mediante la fórmula $\overline{f}(R(x))=f(x)$. Veamos que $\overline{f}$ está bien definida así. Para ello hemos de comprobar que si $R(x)=R(y)$ entonces $f(x)=f(y)$. Esto se deduce de la hipótesis ya que $R(x)=R(y)$ si y solo si $xRy$.
{{% /proof %}}

{{% definition %}}
Dada una aplicación $f\colon A\to B$, podemos definir relación de equivalencia $\sim_f$ en $A$ asociada a $f$ como $x\sim_f y$ si $f(x)=f(y)$.
{{% /definition %}}

{{% exercise %}}
Prueba que $\sim\_f$ es en efecto una relación de equivalencia. Describe el conjunto cociente y la partición asociada. Demuestra también que si $R$ es una relación de equivalencia en $A$ y $\pi\colon A\rightarrow A/R$ es la proyección natural entonces $\sim\_\pi=R$.
{{% /exercise %}}




{{% theorem name="Factorización canónica" %}}
Dada una aplicación $f\colon A\to B$, existe una única aplicación $\overline{f}\colon A/\sim_f\\;\rightarrow \operatorname{im} f$ tal que el siguiente diagrama es conmutativo

![Factorización canónica](../images/canonica.svg)

es decir, $f=i\circ\overline{f}\circ\pi$. Aquí $\pi$ es la proyección canónica e $i$ es la inclusión. Además, la aplicación $\overline{f}$ es biyectiva.
{{% /theorem %}}

{{% proof %}}
Hemos visto con anterioridad que podemos definir una aplicación sobreyectiva $f'\colon A\twoheadrightarrow\operatorname{im} f$ como $f'(x)=f(x)$. Está claro que $f=i\circ f'$ ya que ambas posee el mismo dominio y codominio e $(i\circ f)(x)=i(f(x))=f(x)$ para todo $x\in A$. Es más, como $f$ y $f'$ toman los mismos valores, $\sim\_f=\sim\_{f'}$.

El teorema anterior se puede aplicar a $f'\colon A\rightarrow\operatorname{im} f$ y a $\sim\_{f}$. Esto da lugar a una aplicación $\overline{f}\colon A/\sim\_f\rightarrow \operatorname{im} f$ que satisface $f'=\overline{f}\circ\pi$, así que $f=i\circ f'=i\circ(\overline{f}\circ\pi)$. La aplicación $\overline{f}$ es la única que se descompone de este modo, ya que la propia descomposición fuerza una fórmula para su definición. En efecto, dado $x\in A$,
$$
\begin{array}{rcl}
f(x)&=&(i\circ\overline{f}\circ\pi)(x)\cr
&=&i(\overline{f}(\pi(x)))\cr
&=&i(\overline{f}([x]))\cr
&=&\overline{f}([x]).
\end{array}
$$

Veamos que $\overline{f}$ es biyectiva. Comenzamos por la sobreyectividad. Dado $b\in\operatorname{im} f$, como $f'$ es sobreyectiva, existe $a\in A$ tal que $b=f(a)=\overline{f}([a])$. Esto prueba que $\overline{f}$ es sobreyectiva. Comprobemos ahora la inyectividad. Dados $[x],[y]\in A/\sim\_f$, usando la anterior fórmula para $\overline{f}$ vemos que $\overline{f}([x])=\overline{f}([y])$ si y solo si $f(x)=f(y)$, lo cual equivale a que $x\sim\_f y$, que es lo mismo que decir $[x]=[y]$. Esto concluye la prueba.
{{% /proof %}}

Este teorema nos proporciona un método muy eficiente para establecen una biyección de un conjunto cociente en otro.

{{% example name="$\mathbb{Z}$ módulo $n$" %}}
Vamos a dar una demostración rigurosa de que $\mathbb{Z}/\sim\_n$ posee $n$ elementos para $n>0$. Para ello definimos la aplicación $f\colon \mathbb Z\rightarrow \mathbb Z$ tal que $f(m)$ es el resto no negativo de dividir $m$ entre $n$.

La imagen de $f$ es $\operatorname{im} f=\\{0,\dots, n-1\\}$. En efecto, el resto de la división es $\geq 0$ y $<n$, lo cual demuestra $\subset$. Además, para $0\leq m<n$, el cociente de la división es $0$ y el resto es el propio $m$, por tanto también tenemos $\subset$.

Veamos ahora que $\sim\_f=\sim\_n$. Sean $m,m'\in\mathbb Z$. Dividimos ambos números entre $n$, $m=c\cdot n+f(m)$ y $m'=c'\cdot n+f(m')$. Tenemos que $m-m'=(c-c')\cdot n+(f(m)-f(m'))$ es también una división, porque $|f(m)-f(m')|<n$. Por tanto $f(m)=f(m')$ si y solo si $m-m'$ es divisible por $n$. Esto demuestra que ambas relaciones coinciden.

Aplicando el teorema de factorización, deducimos que hay una biyección $\overline{f}\colon \mathbb Z/\sim\_n\cong \\{0,\dots, n-1\\}$ definida por $\overline{f}([m])=f(m)$.
{{% /example %}}

<!--


## Finitud

Uno de los aspectos que caracterizan a las Matemáticas dentro de las ciencias es el tratamiento riguroso del concepto de {\bf infinito}. De hecho, esto se hace a través de la Teoría de conjuntos y fue precisamente una de las motivaciones principales de Georg Cantor para desarrollar dicha teoría.


En esta sección vamos a dar una introducción a este tema, evitando entrar en detalles técnicos que requerirían un conocimiento más profundo de la Teoría axiomática de conjuntos.


Nuestros prototipos de conjuntos finitos son los de la forma  $\\{1,2,\dots, n\\}$, donde  $n$ es un número natural mayor o igual que $ 1$. Pero en Matemáticas, uno de los conjuntos más importantes, el de los números naturales
$$\mathbb{N} =\\{0,1,2,3,\dots \\},
$$
cae fuera de los primeros. Se trata de hecho del primer contacto que tenemos con la noción de "infinito".

Otra de las nociones más usadas en la práctica es la de "cantidad" o "número de elementos" de un conjunto finito. Por ejemplo, el conjunto $\\{1,2,\dots, n\\}$ tiene $n$ elementos.

Pero en lugar de comenzar por darle sentido a la "cantidad de elementos" de un conjunto, vamos a comenzar por dar sentido a que dos conjuntos tengan "la misma cantidad de elementos", sin saber qué es la cantidad de elementos de un conjunto.

{{% definition %}}
{Conjuntos equipotentes}{
Decimos que dos conjuntos $X$ e $Y$ son {\bf equipotentes} si existe una aplicación \underline{biyectiva} $f:X\to Y$.}
{{% /definition %}}

Es fácil ver que la relación de equipotencia es una relación de equivalencia en cualquier "conjunto de conjuntos".

{{% proposition %}}
\label{prop:aplicaciones_entre_m_y_n} Sean dos números enteros $m,n\geq 1$ y sea $f:\\{1,\dots,m\\} \to \\{1,\dots,n\\}$ una aplicación. Se tienen las siguientes propiedades:
\begin{enumerate}
\item Si $f$ es inyectiva, entonces $m\leq n$.
\item Si $f$ es sobreyectiva, entonces $m\geq n$.
\item Si $f$ es biyectiva, entonces $m=n$.
\end{enumerate}
Además, si $m=n$, las propiedades siguientes son equivalentes:
\begin{enumerate}
\item[(a)] $f$ es inyectiva.
\item[(b)] $f$ es sobreyectiva.
\item[( c )] $f$ es biyectiva.
\end{enumerate}
{{% /proposition %}}

{{% proof %}}
La prueba se deja como ejercicio.
{{% /proof %}}

{{% proposition %}}
\label{prop:subconj_m} Sea un número entero  $m\geq 1$ e $Y\subset \\{1,\dots,m\\}$ un subconjunto no vacío. Entonces existe un entero $n\geq 1$ y una aplicación biyectiva $f:\\{1,\dots,n\\} \to Y$. Además, por la proposición anterior se debe tener $n\leq m$.
{{% /proposition %}}

{{% proof %}}
La prueba se deja como ejercicio.
{{% /proof %}}

{{% corollary %}}
\label{cor:sobre_finito} Sea un número entero $m\geq 1$, $Y\subset \\{1,\dots,m\\}$ y supongamos que existe una aplicación sobreyectiva $f: Y \to \\{1,\dots,m\\}$. Entonces $Y= \\{1,\dots,m\\}$.
{{% /corollary %}}

{{% proof %}}
Es una consecuencia inmediata de las dos proposiciones anteriores.
{{% /proof %}}

Para tratar matemáticamente a las nociones de "conjunto finito" y de "conjunto infinito" debemos dar definiciones formales de ellas.

{{% definition %}}
{Conjuntos finitos y conjuntos infinitos}{
Decimos que un conjunto $X$ es {\bf finito} si o bien es vacío, o si no es vacío, existe un número natural $n\geq 1$ tal que $X$ es equipotente a $\\{1,2,\dots, n\\}$.

\noindent Decimos que un conjunto $X$ es infinito, si $X$ es equipotente a algún subconjunto propio de $X$, i.e. a algún $Y\subset X$ con $\varnothing \neq Y \neq X$.
}
{{% /definition %}}

{{% example name="Ejemplo" %}}
(1) Para cada número natural $n\geq 1$, el conjunto $\\{1,2,\dots, n\\}$ es finito (según la definición anterior).

\noindent (2) El conjunto de los números naturales $\mathbb{N}$ es infinito, pues $\mathbb{N}$ es equipotente a $\mathbb{N}_+$:

$$f: \mathbb{N} \to \mathbb{N}_+,\quad f(x) = x+1,$$

es una aplicación biyectiva, y $\mathbb{N}_+$ es un subconjunto propio de $\mathbb{N}$.

\noindent (3) Si $X$ es un conjunto finito (resp. infinito) e $Y$ es un conjunto equipotente a $X$, entonces $Y$ es también un conjunto finito (resp. infinito).
{{% /example %}}

La proposición siguiente nos garantiza que las definiciones dadas de de conjunto finito y de conjunto infinito son excluyentes y cubren todos los casos.

{{% proposition %}}
\label{prop:finito_vs_infinito} Sea $X$ un conjunto. Las propiedades siguientes son equivalentes:
\begin{enumerate}
\item[(a)] $X$ es un conjunto finito.
\item[(b)] $X$ no es un conjunto infinito.
\end{enumerate}
{{% /proposition %}}

{{% proof %}}
(a) $\Rightarrow$ (b): Se prueba sin mucha dificultad a partir del Corolario \ref{cor:sobre_finito}.

\noindent (b) $\Rightarrow$ (a): es equivalente a probar que si $X$ no es finito, entonces $X$ es infinito.

Supongamos que $X$ no es finito, es decir, no es vacío y no es posible establecer una aplicación biyectiva entre $X$ y ningún conjunto de la forma $\\{1,2,\dots, m\\}$, con $m\geq 1$. Como $X\neq \varnothing$, podemos encontrar un elemento $x_1\in X$. Sea $f_1:\\{1\\} \to X$ la aplicación inyectiva definida por $f_1(1)=x_1$. Como $X$ no es finito, la aplicación $f$ no puede ser sobreyectiva y por tanto podremos encontrar un $x_2\in X$ que no pertenece a la imagen de $f_1$. Consideremos la aplicación $f_2: \\{1,2\\} \to X$ que extiende a $f_1$ y tal que $f_2(2)=x_2$. Por la misma razón anterior $f_2$ no puede ser sobreyectiva.

Continuando con este proceso definimos una familia de aplicaciones

$$f_n: \\{1,\dots, n\\} \to X,\quad n\in\mathbb{N},$$

todas ellas inyectivas, que cada una prolonga a la anterior, es decir $f_n|_{\\{1,\dots, n-1\\}} = f_{n-1}$. Con esta familia construimos una aplicación $f:\mathbb{N} \to X$ de la siguiente forma:

$$f(n) = f_n(n)\quad \text{\ para cada\ }\ n\in \mathbb{N}.$$

Se prueba sin dificultad que $f$ es inyectiva, y como $\mathbb{N}$ es infinito, concluimos aplicando la Proposición \ref{prop:finito_infinito}, 3)\footnote{En esta prueba hemos utilizado un axioma de la Teoría axiomática de conjuntos denominado el "axioma de elección numerable". Al tratarse de una introducción a la Teoría de conjuntos, no entraremos en más detalles.}.
{{% /proof %}}

En la siguiente proposición damos las principales propiedades que se deducen de las definiciones dadas de conjunto finito y de conjunto infinito. Con ellas comprobamos
que dichas definiciones modelizan correctamente las ideas intuitivas previas que teníamos de estas nociones.

{{% proposition %}}
\label{prop:finito_infinito}  Se tienen las siguientes propiedades:
\begin{enumerate}
\item[1)] Si $X$ es un conjunto finito y $f:X \to Y$ es una aplicación sobreyectiva, entonces $Y$ también es un conjunto finito.
\item[2)] Si $Y$ es un conjunto finito y $f:X \to Y$ es una aplicación inyectiva, entonces $X$ también es un conjunto finito.
\item[3)] Si $X$ es un conjunto infinito y $f:X \to Y$ es una aplicación inyectiva, entonces $Y$ también es un conjunto infinito.
\item[4)] Si $Y$ es un conjunto infinito y $f:X \to Y$ es una aplicación sobreyectiva, entonces $X$ también es un conjunto infinito.
\item[5)] El producto cartesiano de dos conjuntos finitos es un conjunto finito.
\item[6)] $X$ es un conjunto finito si y solo si $\mathcal{P}(X)$ es un conjunto finito.
\item[7)] $X$ es un conjunto infinito si y solo si $\mathcal{P}(X)$ es un conjunto infinito.
\end{enumerate}
{{% /proposition %}}

{{% proof %}}
Nos limitaremos a dar algunas indicaciones.

\noindent 1): Podemos restringirnos al caso en que $X= \\{1,\dots,m\\}$ con $m\geq 1$. Definimos $g:Y \to X= \\{1,\dots,m\\}$ de la siguiente forma: para cada $y\in Y$

$$g(y) := \min f^{-1} (\\{y\\}) \in X.$$

Se prueba sin dificultad que $f\circ g = 1_Y$, por lo que $g$ es inyectiva e $Y$ será equipotente a $\operatorname{im}(g)\subset X= \\{1,\dots,m\\}$. Concluimos aplicando la Proposición \ref{prop:subconj_m}.


\noindent 2): Es una consecuencia casi inmediata de la Proposición \ref{prop:subconj_m}.



\noindent 3): Basta probar que si $X\subset Y$ con $X$ conjunto infinito, entonces $Y$ también es infinito.

Como $X$ es infinito, existe un subconjunto propio $X'\subsetneq X$ y una aplicación biyectiva $f:X'\to X$. Es claro que $Y':= X' \cup (Y\setminus X) $ es un subconjunto propio de $Y$, y que la aplicación $g: Y' \to Y$ definida por
$$
g(y) =
\left\\{
\begin{array}{ccl}
f(y) & \text{si} & y\in X'\\
y & \text{si} & y\in Y\setminus X
\end{array}
\right.
$$
es biyectiva. Por tanto $Y$ es equipotente a un subconjunto propio y concluimos que $Y$ es infinito.


\noindent 4): Por reducción al absurdo. Si $X$ fuera finito, deduciríamos que $Y$ también es finito por 1), lo que contradice que $Y$ sea infinito de acuerdo con la Proposición \ref{prop:finito_vs_infinito}.


\noindent 5): Es fácil a partir de la Proposición \ref{prop:mn}.


\noindent 6) y 7): Una idea fundamental es que siempre hay una aplicación inyectiva de $X$ en $\mathcal{P}(X)$:

$$x\in X \longmapsto  \\{x\\} \in \mathcal{P}(X).$$

Por tanto, si $X$ es infinito, $\mathcal{P}(X)$ también es infinito (aplicar 3)), y si $\mathcal{P}(X)$ es finito, $X$ también es finito (aplicar 2)).

Para probar $X$ finito $\Rightarrow$ $\mathcal{P}(X)$ finito,
basta considerar el caso en que $X=\\{1,\dots, m\\}$, con $m\geq 1$. En este caso se procede por inducción probando primeramente que
los conjuntos

$$\mathcal{P}(\\{1,\dots, n+1\\}) \quad \text{\ y\ }\quad \mathcal{P}(\\{1,\dots, n\\}) \times \\{0,1\\}$$

son equipotentes.

Por último, si $\mathcal{P}(X)$ fuera infinito, $X$ no podría ser finito y entonces ha de ser infinito por la Proposición \ref{prop:finito_vs_infinito}.
{{% /proof %}}

{{% definition %}}
{Cardinal de un conjunto finito}{Si $X$ es un conjunto finito, o bien es vacío, en cuyo caso decimos que su {\bf cardinal} es $0$, o si no es vacío, existe un entero $n\geq 1$ tal que $X$ es equipotente a $\\{1,\dots,n\\}$. De acuerdo con la Proposición \ref{prop:aplicaciones_entre_m_y_n}, este entero $n$ es único y lo llamaremos {\bf cardinal} de $X$.

El cardinal de un conjunto finito $X$ se denotará por $\sharp(X)$, o también $|X|$ si no hay peligro de confusión con otras notaciones al uso.
}
{{% /definition %}}

{{% watch %}}
Una de las primeras sorpresas que trajo el estudio matemático de los conjuntos infinitos es que "no todos los infinitos son iguales", o dicho de modo más preciso, no todos los conjuntos infinitos son equipotentes. De hecho, Cantor probó mediante su conocido "método diagonal" que los conjuntos $\mathbb{N}$, de los números naturales, y $\mathbb{R}$, de los números reales, no son equipotentes. Más generalmente, ningún conjunto $X$ es equipotente al conjunto de sus partes $\mathcal{P}(X)$, lo que nos proporciona "infinitos tipos de infinito". Todo esto lleva a la {\bf Teoría de cardinales} (y de {\bf ordinales}), que no abordaremos en estas notas.
{{% /watch %}}

Para terminar este tema, veamos una prueba de que ningún conjunto $X$ es equipotente al conjunto de sus partes $\mathcal{P}(X)$, así como una ilustración del método diagonal de Cantor.

{{% proposition %}}
Si $X$ es un conjunto cualquiera, no existe ninguna aplicación sobreyectiva $\varphi: X
\longrightarrow \mathcal{P}(X)$.
{{% /proposition %}}

{{% proof %}}

Sea $\varphi: X \longrightarrow \mathcal{P}(X)$ una aplicación arbitraria. Veamos que $\varphi$ nunca puede ser sobreyectiva. La idea fundamental consiste en considerar el siguiente subconjunto de $X$:


\centerline{\framebox{$ A:=\\{ x\in X\\, |\ x\notin \varphi(x)\\} \subset X.
$}}


Como $A\subset X$ se tiene que $A\in \mathcal{P}(X)$. Veamos que $A$ no pertenece a la imagen de $\varphi$.

Procederemos por reducción al absurdo. Si $A\in \operatorname{im} (\varphi)$, entonces existirá un $x_0\in X$ tal que $\varphi(x_0)=A$

Nos preguntamos ahora si $x_0\in A$. Lo que está claro es que o bien $x_0\in A$ o bien $x_0\notin A$.


\noindent Si $x_0\in A$, de acuerdo con la definición de $A$ tendríamos que $x_0\notin \varphi(x_0)$, y como $\varphi(x_0) =A$, concluimos $x_0\notin A$, lo cual es un absurdo.


\noindent Si $x_0\notin A$, como $A=\varphi(x_0)$ tendríamos que $x_0\notin \varphi(x_0)$, y de acuerdo con la definición de $A$ concluimos que $x_0\in A$, lo cual es un absurdo.


En ambos casos llegamos a un absurdo, por lo que nuestra suposición es falsa y por tanto $A\notin \operatorname{im} (\varphi)$ y por tanto $\varphi$ no es sobreyectiva
{{% /proof %}}

{{% proposition %}}
No existe ninguna aplicación sobreyectiva $\varphi: \mathbb{N} \longleftarrow \mathbb{N}^\mathbb{N}$.
{{% /proposition %}}

{{% proof %}}
Sea  $\varphi: \mathbb{N} \longleftarrow \mathbb{N}^\mathbb{N}$ una aplicación. Veamos que $\varphi$ nunca podrá ser sobreyectiva. La idea fundamental es considerar cualquier $f\in \mathbb{N}^\mathbb{N}$ (i.e. cualquier aplicación $f:\mathbb{N} \to \mathbb{N}$) que verifique lo siguiente:

$$f(n) \neq \varphi(n)(n)\quad \forall n\in \mathbb{N}.$$

Por ejemplo, podemos tomar $f:\mathbb{N} \to \mathbb{N}$ definida por $f(n) = \varphi(n)(n) + 1$.

Vemos fácilmente que $f$ no pertenece a la imagen de $\varphi$, puesto que si existiera $n_0\in \mathbb{N}$ tal que $f=\varphi(n_0)$ se tendría que

$$f(n) = \varphi(n_0)(n)\quad \forall n\in \mathbb{N},$$

y en particular $f(n_0) = \varphi(n_0)(n_0)$, lo cual contradice la propiedad con la que hemos elegido $f$. Así pues $\varphi$ no es sobreyectiva.
{{% /proof %}}

{{% watch %}}

Nótese que las pruebas de las dos proposiciones anteriores son muy similares y ambas responden al
"método diagonal" de Cantor. Para apreciar mejor la similitud de ambas pruebas, podemos tener en cuenta que de hecho la segunda proposición es un corolario de la primera, pues sabemos que hay una biyección natural entre $\mathcal{P}(\mathbb{N})$ y $\\{0,1\\}^\mathbb{N}$, y por otra parte es fácil encontrar una aplicación sobreyectiva $\mathbb{N}^\mathbb{N} \to \\{0,1\\}^\mathbb{N}$ (para ello basta tomar la composición con cualquier aplicación sobreyectiva $\mathbb{N} \to \\{0,1\\}$), de manera que si existiera alguna aplicación sobreyectiva $\mathbb{N} \to \mathbb{N}^\mathbb{N}$, componiéndola con la aplicación sobreyectiva $\mathbb{N}^\mathbb{N} \to \\{0,1\\}^\mathbb{N}$, obtendríamos una aplicación sobreyectiva $\mathbb{N} \to \\{0,1\\}^\mathbb{N}$, lo que contradeciría la primera proposición.
{{% /watch %}}

-->
