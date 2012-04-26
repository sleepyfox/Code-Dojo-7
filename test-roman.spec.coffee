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

class Roman
  constructor: (number) ->
    if number is 1
      @numeral = 'I'
    else
      throw new Error "Romans go home!"