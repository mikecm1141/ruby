class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top
    scores.sort.reverse.first(3)
  end

  def report
    latest_score = scores.pop

    if latest_score > personal_best
      "Your latest score was #{latest_score}. That's your personal best!"
    else
      "Your latest score was #{latest_score}. That's #{personal_best - latest_score} short of your personal best!"
    end
  end
end
