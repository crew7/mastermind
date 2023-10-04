module CircleColors
    attr_accessor :yellow_circle, :blue_circle, :orange_circle,
                  :green_circle, :purple_circle, :black_circle
  
    def initialize
      self.yellow_circle = "\u{1F7E1}"
      self.blue_circle = "\u{1F535}"
      self.orange_circle = "\u{1F7E0}"
      self.green_circle = "\u{1F7E2}"
      self.purple_circle = "\u{1F7E3}"
      self.black_circle = "\u26AB"
    end
  
    def yellow_circle
      "\u{1F7E1}"
    end
  end
  
  class Baby
    def initialize
        @abc = 'yo'
    end
    include CircleColors
  end

  p Baby.new.methods