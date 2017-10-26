ActiveAdmin.register Article do

form do |f|
      f.inputs "Articulos" do

      	f.input :category_id, label:  "Categoria",  :as =>  :select, :collection => Category.all.map{|a|["#{a.titulo}", a.id]}
        f.input :titulo
       	f.input :contenido
       	f.input :fecha
		f.input :estado
      end
      
      #f.belongs_to :category do |item|
       # item.input :category_id,  :as =>  :select, :collection => Category.all.map{|a|["#{a.titulo}", a.id]}      

        #  options_from_collection_for_select(Answer.all, 'id', 'contenido')      
    #end

      f.actions
    end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params do
   permitted = [:titulo, :contenido, :fecha, :estado, :category_id]
	end
end
