module ApplicationHelper
  
  def link_to_icon(icon_name, url_or_object, options={})
     options.merge!({ :class => "icon #{icon_name}" })

     link_to(image_tag("icons/#{icon_name}.png", { :title => icon_name }),
                       url_or_object,
                       options)
  end
   
  def sortable(column, title = nil)  
      title ||= column.titleize  
      css_class = (column == sort_column) ? "current #{sort_direction}" : nil  
      direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"  
      link_to title, params.merge(:sort => column, :direction => direction, :page => nil), {:class => css_class}  
    end
   
end
