open HolQbfLib normalForms Profile
fun qbf s t = profile s decide t
fun skico s t = profile s SKICo_CONV t
val t1 = ``∀x. x ∨ ¬x``
val t2 = ``∃p. (∀q. p ∨ ¬q) ∧ ∀(q:bool). ∃r. r``
val t3 = ``∃x. ∀y. ∃z. (¬x ∨ ¬y) ∧ (¬z ∨ ¬y)``
val _ = qbf "QBF1" t1
val _ = qbf "QBF2" t2
val _ = qbf "QBF3" t3
val _ = skico "SKICo1" t1
val _ = skico "SKICo2" t2
val _ = skico "SKICo3" t3
val r = results ()
(*
   [("QBF1", {n = 1, gc = 0.000, sys = 0.000, usr = 0.000, real = 0.002}),
    ("QBF2", {n = 1, gc = 0.000, sys = 0.000, usr = 0.010, real = 0.023}),
    ("QBF3", {n = 1, gc = 0.000, sys = 0.000, usr = 0.000, real = 0.024}),
    ("SKICo1", {n = 1, gc = 0.000, sys = 0.000, usr = 0.000, real = 0.000}),
    ("SKICo2", {n = 1, gc = 0.000, sys = 0.000, usr = 0.000, real = 0.001}),
    ("SKICo3", {n = 1, gc = 0.000, sys = 0.000, usr = 0.000, real = 0.005})]

   [("QBF1", {n = 1, gc = 0.000, sys = 0.000, usr = 0.000, real = 0.002}),
    ("QBF2", {n = 1, gc = 0.000, sys = 0.000, usr = 0.010, real = 0.024}),
    ("QBF3", {n = 1, gc = 0.000, sys = 0.000, usr = 0.000, real = 0.023}),
    ("SKICo1", {n = 1, gc = 0.000, sys = 0.000, usr = 0.000, real = 0.000}),
    ("SKICo2", {n = 1, gc = 0.000, sys = 0.000, usr = 0.000, real = 0.001}),
    ("SKICo3", {n = 1, gc = 0.000, sys = 0.000, usr = 0.000, real = 0.005})]

   [("QBF1", {n = 1, gc = 0.000, sys = 0.000, usr = 0.000, real = 0.002}),
    ("QBF2", {n = 1, gc = 0.000, sys = 0.000, usr = 0.000, real = 0.024}),
    ("QBF3", {n = 1, gc = 0.000, sys = 0.010, usr = 0.000, real = 0.024}),
    ("SKICo1", {n = 1, gc = 0.000, sys = 0.000, usr = 0.000, real = 0.000}),
    ("SKICo2", {n = 1, gc = 0.000, sys = 0.000, usr = 0.000, real = 0.001}),
    ("SKICo3", {n = 1, gc = 0.000, sys = 0.000, usr = 0.000, real = 0.005})]
*)
