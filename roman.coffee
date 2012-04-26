class Roman
  numerals = { 6:'VI', 5:'V', 4:'IV', 3:'III', 2:'II', 1:'I' }

  constructor: (number) ->
    if number of numerals
      @numeral = numerals[number]
    else
      throw new Error "Romans go home!"

exports.Roman = Roman