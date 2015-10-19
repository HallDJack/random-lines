# Roman Numerals

The point of this exercise is to provide a method of converting from Ruby
Integer types to String Roman Numeral representation.

As a refresher, roman numeral values are defined as:

- I = 1
- V = 5
- X = 10
- L = 50
- C = 100
- D = 500
- M = 1000

You can combine letters to add values by listing them largest to smallest from
left to right:

    II = 2
    VIII = 8
    XXXI = 31

You may list only three consecutive identical letters. A single lower value may
precede a larger value to indicate subtraction. For example:

    IV = 4
    IX = 9
    XL = 40
    XC = 90
    CD = 400
    CM = 900

A working implementation will solve the following cases:

    romanize(1) => "I"
    romanize(2) => "II"
    romanize(3) => "III"
    romanize(4) => "IV"
    romanize(5) => "V"
    romanize(9) => "IX"
    romanize(10) => "X"
    romanize(20) => "XX"
    romanize(40) => "XL"
    romanize(50) => "L"
    romanize(90) => "XC"
    romanize(100) => "C"
    romanize(110) => "CX"
    romanize(200) => "CC"
    romanize(400) => "CD"
    romanize(500) => "D"
    romanize(900) => "CM"
    romanize(1000) => "M"
    romanize(2011) => "MMXI"


