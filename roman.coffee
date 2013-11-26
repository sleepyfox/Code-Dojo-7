class Roman
  numerals = [
    { arabic: 1000, roman: 'M' },
    { arabic: 900, roman: 'CM' },
    { arabic: 500, roman: 'D'  },
    { arabic: 400, roman: 'CD' },
    { arabic: 100, roman: 'C'  },
    { arabic: 90, roman: 'XC'  },
    { arabic: 50, roman: 'L'   },
    { arabic: 40, roman: 'XL'  },
    { arabic: 10, roman: 'X'   },
    { arabic: 9, roman: 'IX'   },
    { arabic: 5, roman: 'V'    },
    { arabic: 4, roman: 'IV'   },
    { arabic: 1, roman: 'I'    } ]

  guard = (number) ->
    if number < 1 or number > 5000
      throw new Error "Romans go home!"
   
  constructor: (number) ->
    guard number
    remaining = number
    string = ''
    for index in numerals
      while remaining >= index.arabic
        string = string + index.roman
        remaining = remaining - index.arabic
    @numeral = string

exports.Roman = Roman

# Alternative implementation extends Number
Number.prototype.roman = -> 
  numerals = [
      { arabic: 1000, roman: 'M' },
      { arabic: 900, roman: 'CM' },
      { arabic: 500, roman: 'D'  },
      { arabic: 400, roman: 'CD' },
      { arabic: 100, roman: 'C'  },
      { arabic: 90, roman: 'XC'  },
      { arabic: 50, roman: 'L'   },
      { arabic: 40, roman: 'XL'  },
      { arabic: 10, roman: 'X'   },
      { arabic: 9, roman: 'IX'   },
      { arabic: 5, roman: 'V'    },
      { arabic: 4, roman: 'IV'   },
      { arabic: 1, roman: 'I'    } ]

  if @ < 1 or @ > 5000 then throw new Error "Romans go home!"
     
  remaining = this
  string = ''
  for index in numerals
    while remaining >= index.arabic
      string = string + index.roman
      remaining = remaining - index.arabic
  @numeral = string