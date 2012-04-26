describe 'What have the Romans done for us?', ->
  it '1 should be I', ->
    roman = new Roman 1
    expect(roman.numeral).toEqual 'I'

class Roman
  constructor: (number) ->
    @numeral = 'I'