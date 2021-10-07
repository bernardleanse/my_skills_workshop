# coding: utf-8

# Understands how to present a random, happy emoji
class RandomHappyEmoji
  HAPPY_EMOJI = [":D", ":)"]

  def get_emoji
    HAPPY_EMOJI[random_index]
  end

  private

  def random_index
    [0, 1].sample
  end
end
