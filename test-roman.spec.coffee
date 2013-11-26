Roman = (require './roman').Roman
expect = (require 'chai').expect

describe 'What have the Romans done for us?', ->
  it '0 should throw an error', ->
    expect(-> new Roman(0)).to.throw "Romans go home!"
  it '1 should be I', ->
    roman = new Roman 1
    expect(1.roman()).to.equal 'I'
   it '2 should be II', ->
    roman = new Roman 2
    expect(roman.numeral).to.equal 'II'
   it '3 should be III', ->
    roman = new Roman 3
    expect(roman.numeral).to.equal 'III'
   it '4 should be IV', ->
    roman = new Roman 4
    expect(roman.numeral).to.equal 'IV'
   it '5 should be V', ->
    roman = new Roman 5
    expect(roman.numeral).to.equal 'V'
   it '6 should be VI', ->
    roman = new Roman 6
    expect(roman.numeral).to.equal 'VI'
   it '7 should be VII', ->
    roman = new Roman 7
    expect(roman.numeral).to.equal 'VII'
   it '8 should be VIII', ->
    roman = new Roman 8
    expect(roman.numeral).to.equal 'VIII'
   it '9 should be IX', ->
    roman = new Roman 9
    expect(roman.numeral).to.equal 'IX'
   it '10 should be X', ->
    roman = new Roman 10
    expect(roman.numeral).to.equal 'X'
   it '37 should be XXXVII', ->
    roman = new Roman 37
    expect(roman.numeral).to.equal 'XXXVII'
   it '99 should be XCIX', ->
    roman = new Roman 99
    expect(roman.numeral).to.equal 'XCIX'
   it '399 should be CCCXCIX', ->
    roman = new Roman 399
    expect(roman.numeral).to.equal 'CCCXCIX'
   it '1999 should be MCMXCIX', ->
    roman = new Roman 1999
    expect(roman.numeral).to.equal 'MCMXCIX'



