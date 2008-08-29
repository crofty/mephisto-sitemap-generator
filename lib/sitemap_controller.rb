class SitemapController < ApplicationController
  self.view_paths = File.join(File.dirname(__FILE__), '../', 'views') 
  session :off  
  layout nil

  def index
    Article.with_published do
      @articles = site.articles.find(:all)
    end
    @sections = site.sections.find(:all) 
    @plugin   = Engines.plugins['mephisto_sitemap']
  end

end