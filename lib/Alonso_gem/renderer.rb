require "Alonso_gem/version"
require "Alonso_gem/renderer"

module AlonsoGem
  def set_copyright
   @copyright = AhViewTool::Renderer.copyright "Alonso Hernandez", "All rights reserved"
  end
end



module AhViewTool
  class Renderer
    def self.copyright name, msg
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
   end
  end
end