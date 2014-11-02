#Begin User Methods
def multiply (num1, den1, num2, den2)
  return simplify(num1 * num2, den1 * den2)
end
def add(num1, den1, num2, den2)
  return simplify((num1 * den2) + (num2 * den1), den1 * den2)
  #commonDen = den1 * den2
end
def subtract(num1, den1, num2, den2)
  return simplify((num1 * den2) - (num2 * den1), den1 * den2)
end
def divide(num1, den1, num2, den2)
  return simplify(num1 * den2, den1 * num2)
end
def simplify(num,den)
  gcd = gcd(num,den)
  return num/gcd, den/gcd
end
def gcd(num,den)
  #http://en.wikipedia.org/wiki/Euclidean_algorithm
  #Need everything at abs value
  num, den = num.abs, den.abs
  #Use commas instead of multiple lines.
  while den > 0 #While the denominator is not 0.
    num, den = den, num % den #Set Num equal to den, and set den = to the remainder of num / den.
  end
  num #return num, which is equal to the GCD.
end
#Converting to/from, decs, fracs, and mixed
def fracToDec(num,den)
  return num.to_f/den.to_f
end
def fecToFrac(dec)
  #Using the litteral suffixes.
  #I'm using rationals for this one.
   #Converts into rational (auto creating fractions.) then converts back into string for splitting.
  return dec.to_r.to_s.split("/")
end
def fracToMix(num,den)
  wholeNumber, numerator = num.to_f.divmod(den.to_f)
  numSimp, denSimp = Simplify(numerator,den)
  [wholeNumber, numSimp, denSimp]
  #Should return numerator, denominator, and whole number
  #wholeNum = (num.to_f / den.to_f).round(0)
  #puts wholeNum
end
def mixToFrac(wNum,num,den)
  return Simplify(num.to_f + (wNum.to_f * den.to_f),den)
end
if __FILE__ == $0
  puts subtract(1,2,1,5)
end

