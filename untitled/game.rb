class Game
  def start
    player = Players.new
    player.setName("Hari", "Ram", "shyam")

    @playerarray = (player.getName)
    numOfPlayers = @playerarray.count()
    @cardm = Card.new
    @cardarray = @cardm.setCard(numOfPlayers)

  end

  def distributeCards
    @playerarray.each do |player|
      @cardarray.each do |card|
        @a = player
        @b = card
        if @playerarray.index(player) == @cardarray.index(card)
          puts "#{@a} gets #{@b}"
        end
      end
    end
  end

  def winner
    puts @cardm.rank_array
    card = Card.new
    givenrank = (card.ranks)
    puts "test #{card.rank_array}"
    playrank = (card.rank_array)
    puts givenrank
    puts playrank

  end
end



class Card
  @@ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "jack", "queen", "king", "ace"]
  @@shapes = ["spade", "heart", "diamond", "club"]
attr_accessor :rank_array

  def setCard(n)
    player = Players.new
    playerArray = (player.getName)

    distributionArray = Array.new
    for i in 1..n
      @a = @@ranks.sample
      @b = @@ranks.sample
      @c = @@ranks.sample
      @d = @@shapes.sample
      @e = @@shapes.sample
      @f = @@shapes.sample
      firstcard = "#{@a} of #{@d}"
      secondcard = "#{@b} of #{@d}"
      thirdcard = "#{@c} of #{@e}"
      if firstcard != secondcard && secondcard != thirdcard && thirdcard != firstcard
        cardArray = Array.new
        cardArray.push(firstcard)
        cardArray.push(secondcard)
        cardArray.push(thirdcard)
      end
      if cardArray.values_at(0) != cardArray.values_at(1) &&
          cardArray.values_at(1) != cardArray.values_at(2) &&
          cardArray.values_at(2) != cardArray.values_at(0)

        distributionArray.push(cardArray)

      end
      @rank_array = Array.new
      @rank_array.push(@a)
      @rank_array.push(@b)
      @rank_array.push(@c)


    end

    return distributionArray
  end

  def playerRanks
    puts "df"
    puts rankarray
    playerrank = @rankarray
    return playerrank


  end

  def ranks
    allranks = Array.new
    allranks.push(@@ranks)
    return allranks

  end

end


class Players
  def setName(*name)
    @name = name


  end

  def getName()

    playerName = @name.to_a
    return playerName
  end


end

game = Game.new
game.start
game.distributeCards
game.winner











