ActiveAdmin.register IpAddress do
  index do
    column :id
    column :address
    column :count
    column :created_at
    column :updated_at
    actions
  end

  permit_params :count

  # actions :index, :show

  form do |f|
    f.inputs "IP Details" do
      f.input :count
    end
    f.actions
  end
end
