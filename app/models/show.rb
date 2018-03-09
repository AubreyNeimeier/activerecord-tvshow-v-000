class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum("rating")
  end

  def self.most_popular_show
    where("rating = ?", highest_rating)[0]
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    where("rating = ?", lowest_rating)[0]
  end

  def self.ratings_sum
    Show.sum("rating")
  end

  def self.popular_shows
    shows = []
    Show.all do |m|
      shows << where("rating > 5")
    end
  end


  def self.ratings_sum
    Show.sum("rating")
  end



end
