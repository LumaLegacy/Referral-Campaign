# Export to CSV with the referrer_id
ActiveAdmin.register User do
  csv do
    column :id
    column :email
    column :referral_code
    column :referrer_id
    column :created_at
    column :updated_at
  end

  index do
    column :id
    column :email
    column :referral_code
    column :referrer_id
    column :created_at
    column :updated_at
    actions
  end

  actions :index, :show

end
