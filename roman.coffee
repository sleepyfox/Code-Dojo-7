class Roman
  numerals = [
    { arabic: 10, roman: 'X' },
    { arabic: 9, roman: 'IX' },
    { arabic: 5, roman: 'V'  },
    { arabic: 4, roman: 'IV' },
    { arabic: 1, roman: 'I'  } ]

  constructor: (number) ->
    if number < 1 or number > 5000
      throw new Error "Romans go home!"
    else
      remaining = number
      string = ''
      for i in numerals
        while remaining >= i.arabic
          string = string + i.roman
          remaining = remaining - i.arabic
      @numeral = string

exports.Roman = Roman