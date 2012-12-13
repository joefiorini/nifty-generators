class <%= class_name %> < ActiveRecord::Base
<%= "  set_table_name :#{table_name}\n" if table_name -%>
  attr_accessible <%= model_attributes.map { |a| ":#{a.name}" }.join(", ") %>
<% model_attributes.select {|attr| attr.reference? }.each do |attribute| -%>
  belongs_to :<%= attribute.name %>
<% end -%>

end
