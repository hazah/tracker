ActiveAdmin.register Person do
  belongs_to :membership, optional: true

  menu priority: 3

  controller do
    def scoped_collection
      end_of_association_chain.joins(:membership)
    end
  end

  sidebar "Person Details", only: [:show, :edit] do
    ul do
      li link_to("Devices", admin_person_devices_path(person))
    end
  end

  index do
    column :id, sortable: :id do |person|
      link_to person.id, admin_person_path(person)
    end
    column :membership, sortable: 'memberships.name'
    column :name
    column :created_at
    column :updated_at
    default_actions
  end

  permit_params :membership_id, :name

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs do
      f.input :membership, include_blank: false
      f.input :name
    end
    f.actions
  end

end
