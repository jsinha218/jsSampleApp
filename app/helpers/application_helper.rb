module ApplicationHelper
	##defining a custom helper for missing page titile
	##full_title helper return "Ruby on rails Sample App" if 
	##no page_title is there other wise returns |  Ruby on rails Sample App
	def full_title(page_title = '')	
		base_title = "Ruby on Rails Sample App"
		if page_title.empty?
			base_title
		else
			page_title + " |"  + base_title
		end
	end				

end
