describe 'What have the Romans done for us?', ->
  it '0 should throw an error', ->
    try
      roman = new Roman 0
      expect(true).toBeFalsy()
    catch error
      expect(error.message).toEqual "Romans go home!"
  it '1 should be I', ->
    roman = new Roman 1
    expect(roman.numeral).toEqual 'I'
   it '2 should be II', ->
    roman = new Roman 2
    expect(roman.numeral).toEqual 'II'
   it '3 should be III', ->
    roman = new Roman 3
    expect(roman.numeral).toEqual 'III'
   it '4 should be IV', ->
    roman = new Roman 4
    expect(roman.numeral).toEqual 'IV'
   it '5 should be V', ->
    roman = new Roman 5
    expect(roman.numeral).toEqual 'V'


class Roman
  constructor: (number) ->
    if number is 4
      @numeral = 'IV'
    else if 4 > number > 0
      for i in [1..number]
        @numeral = (@numeral ? '') + 'I'
    else
      throw new Error "Romans go home!"
