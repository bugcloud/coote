module ApplicationHelper
  def hbr(str)
    h(str).gsub(/\r\n|\r|\n/, "<br />\n")
  end
end
