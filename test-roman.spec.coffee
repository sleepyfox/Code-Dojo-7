describe 'What have the Romans done for us?', ->
  it '1 should be I', ->
    roman = new Roman 1
    expect(roman.numeral).toEqual 'I'
  it '0 should throw an error', ->
    try
      roman = new Roman 0
      expect(true).toBeFalsy()
    catch error
      expect(error.message).toEqual "Romans go home!"
   it '2 should be II', ->
    roman = new Roman 2
    expect(roman.numeral).toEqual 'II'
   it '3 should be III', ->
    roman = new Roman 3
    expect(roman.numeral).toEqual 'III'


class Roman
  constructor: (number) ->
    if number is 1
      @numeral = 'I'
    else if number is 2
      @numeral = 'II'
    else if number is 3
      @numeral = 'III'
    else
      throw new Error "Romans go home!"