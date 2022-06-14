# ==
# !=
# >
# <
# >=
# <=
# ===
# .eql?

p 10 == "10".to_f
p 10 === "10".to_f

(1..5) === 3           # => true
 (1..5) === 6           # => false

Integer === 42          # => true
Integer === 'fourtytwo' # => false

  /ell/ === 'Hello'     # => true
  /ell/ === 'Foobar'    # => false