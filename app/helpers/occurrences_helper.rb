module OccurrencesHelper
  def close_occurrence(id)
    @occurrence = Occurrence.find(id)
    @occurrence.update!(status: :finished)
  end
end
