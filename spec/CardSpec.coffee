###

Hit
  if > 21, bust
  if === 21, dealer gets card
    dealer must keep getting cards until === 21 or bust

Stand
  dealer gets new card
  keep adding cards


###


describe "deck constructor", ->
  deck = new Deck()

  it "should access attributes", ->
    expect(typeof deck.at(0).attributes.rank).toBe 'number'
    #expect(typeof deck.at(0).attributes.rankName).toBe 'number'
    #expect(typeof deck.at(0).attributes.revealed).toBe 'boolean'
    #expect(typeof deck.at(0).attributes.suit).toBe 'string'
    expect(typeof deck.at(0).attributes.suitName).toBe 'string'
    expect(typeof deck.at(0).attributes.value).toBe 'number'

  it "should create a card collection", ->
    collection = new Deck()
    expect(collection.length).toBe 52
