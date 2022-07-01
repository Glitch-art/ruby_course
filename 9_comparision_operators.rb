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

p (1..5) === 3            # => true
p (1..5) === 6            # => false

p Integer === 42          # => true
p Integer === 'fourtytwo' # => false

p /ell/ === 'Hello'     # => true
p /ell/ === 'Foobar'    # => false
  
# .eql?() Compare data types.
p 10.eql?(10.0)         # false