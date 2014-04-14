require './plugins/post_filters'

module AppendFooterFilter
  	def append(post)
     	author = post.site.config['author']
     	url = post.site.config['url']
     	pre = post.site.config['original_url_pre']
     	copyright = post.site.config['original_url_copyright']
     	contact = post.site.config['contact']
     	mailto = post.site.config['mailto']
     	post.content + %Q[<p class='post-footer'> #{pre or "original link:"} <a href='#{post.full_url}'>#{post.full_url}</a><br/>#{copyright or "copyright:"} <a href='#{url}'>#{author}</a>&nbsp;posted at <a href='#{url}'>#{url}</a><br/>#{contact or "contact us:"} <a href='mailto:#{mailto}'>#{mailto}</a></p>]
  	end
end

module Jekyll
  	class AppendFooter < PostFilter
    	include AppendFooterFilter
    	def pre_render(post)
    	  post.content = append(post) if post.is_post?
    	end
 	end
end

Liquid::Template.register_filter AppendFooterFilter
