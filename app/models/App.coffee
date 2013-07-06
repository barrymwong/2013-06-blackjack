#todo: refactor to have a game beneath the outer blackjack model
class window.App extends Backbone.Model

  initialize: ->
    @set 'deck', deck = new Deck()
    @set 'playerHand', deck.dealPlayer()
    @set 'dealerHand', deck.dealDealer()
    # console.log @

    @get('playerHand').on 'stand', ->
      console.log 'App -> stand'
      # flip the deal's card
      @get('dealerHand').models[0].flip()
      # while dealer decides to hit continue
      @get('dealerHand').hit() while @get('dealerHand').scores() < 17
      # when dealer decides to stand, check scores and display win status
    , @

    @get('dealerHand').on 'bust', =>
      console.log 'app --> dealerHand bust'

    @get('playerHand').on 'bust', =>
        alert 'you are busted'