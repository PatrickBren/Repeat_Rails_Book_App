class RssFeedController < ApplicationController
	def rss_feed

    #Uses the RSS_feed Gem by passing through the RSS feed link and source name to return an array of objects from the items in the rss feed
    #It uses three sources and can easily support many more feeds
    #All the array of objects from each source are merged into one array of objects 
    @rss_source_1 = Rss.runcheck("https://www.bookbrowse.com/rss/book_news.rss","bookbrowse")
    @rss_source_2 = Rss.runcheck("https://www.fortressofsolitude.co.za/comic-books/feed/","fortressofsolitude")
    @rss_source_3 = Rss.runcheck("https://lithub.com/feed/","lithub")
    @merge = @rss_source_1 + @rss_source_2 + @rss_source_3
    
  end
end
