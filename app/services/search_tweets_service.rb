class SearchTweetsService
  def self.search(search)
    if search != ""
      Tweet.where('title LIKE(?) OR material LIKE(?)', "%#{search}%","%#{search}%")
    else
      Tweet.all
    end
  end
end