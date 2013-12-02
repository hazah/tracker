ActiveAdmin.register Membership do

  menu priority: 2

  sidebar "Membership Details", only: [:show, :edit] do
    ul do
      li link_to("People", admin_membership_people_path(membership))
    end
  end

  filter :kind, label: 'Membership Type', as: :select, collection: ['Full Time', 'Lite', 'Basic']
  filter :name
  filter :address

  permit_params :kind, :name, :address

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs do
      f.input :kind, label: 'Membership Type', as: :select, collection: ['Full Time', 'Lite', 'Basic'], include_blank: false
      f.input :name
      f.input :address
    end
    f.actions
  end

end
