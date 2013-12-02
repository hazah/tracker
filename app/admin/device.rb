ActiveAdmin.register Device do
  belongs_to :person, optional: true

  menu priority: 4

  controller do
    def scoped_collection
      end_of_association_chain.joins(:person)
    end
  end

  filter :person
  filter :kind, label: 'Type', as: :select, collection: ['Cell Phone', 'Computer', 'Tablet']
  filter :contact
  filter :hostname
  filter :mac
  filter :created_at
  filter :updated_at

  index do
    column :id, sortable: :id do |device|
      link_to device.id, admin_device_path(device)
    end
    column :person, sortable: 'people.name'
    column 'Type', :kind
    column :contact
    column :hostname
    column :mac
    column :created_at
    column :updated_at
    default_actions
  end

  permit_params :person_id, :kind, :contact, :mac

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input :person, include_blank: false
      f.input :kind, label: 'Type', as: :select, collection: ['Smart Phone', 'Computer', 'Tablet'], include_blank: false
      f.input :contact
      f.input :mac
    end
    f.actions
  end
end
