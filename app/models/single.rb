class Single
  attr_accessor :seeking

  def initialize(options = {})
    @seeking = options.fetch(:seeking, false)
  end

  def toggle_seeking_status
    seeking ? stop_seeking : start_seeking
  end

private
  def start_seeking; self.seeking = true end
  def stop_seeking; self.seeking = false end
end

