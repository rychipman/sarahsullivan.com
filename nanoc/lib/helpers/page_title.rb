module PageTitleHelper
	def page_title(item)
		base_title = 'Sarah Sullivan'
		if(item[:title].nil?)
			return base_title
		else
			return item[:title] + ' | ' + base_title
		end
	end
end