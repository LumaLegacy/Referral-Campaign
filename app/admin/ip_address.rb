ActiveAdmin.register IpAddress do
  csv do
    column :id
    column :address
    column :count
    column :created_at
    column :updated_at
  end

  actions :index, :show

end
