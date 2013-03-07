module ApplicationHelper
  
  # def title return title 
  def title
    base_title = "Tadashi Shoji | 30 for 30"
    if @title.nil? 
      base_title
    else
      "#{base_title} | #{@title}"
    end  
  end
  
end
