roman = (require './roman').roman

describe 'Here be tests!', ->
  it 'No Roman numeral for zero', ->
    try
      expect(roman(0)).toThrow "Cannot convert 0 to Roman numeral!"      
    catch error
      console.log "shouldn't get here? #{error}"

  it 'Roman numeral for 1 should be I', ->
    expect(roman(1)).toEqual 'I'
  it 'Roman numeral for 2 should be II', ->
    expect(roman(2)).toEqual 'II'
  it 'Roman numeral for 3 should be III', ->
    expect(roman(3)).toEqual 'III'
  it 'Roman numeral for 4 should be IV', ->
    expect(roman(4)).toEqual 'IV'
  it 'Roman numeral for 5 should be V', ->
    expect(roman(5)).toEqual 'V'
  it 'Roman numeral for 6 should be VI', ->
    expect(roman(6)).toEqual 'VI'
  it 'Roman numeral for 7 should be VII', ->
    expect(roman(7)).toEqual 'VII'
  it 'Roman numeral for 8 should be VIII', ->
    expect(roman(8)).toEqual 'VIII'
  it 'Roman numeral for 9 should be IX', ->
    expect(roman(9)).toEqual 'IX'

