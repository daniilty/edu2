module StaticPagesHelper
	#returns full title
	def full_title (page_title = '')
		base_title = "Sample app"
		if page_title.blank?
			base_title
		else
			page_title + " | " + base_title
		end
	end
end
