class Alien
  def can_talk_to?(character)
    is_a?(character.class)
  end
end
