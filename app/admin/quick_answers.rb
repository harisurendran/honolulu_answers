ActiveAdmin.register QuickAnswer do

  # Add to :parent Dropdown menu
  menu :parent => "Articles"

  # Filterable attributes
  filter :title
  filter :tags
  filter :contact_id
  filter :status

  # View 
  index do
    column "Quick Answer Title", :title do |article|
      link_to article.title, [:admin, article]
    end
    column :category
    column :contact
    column "Created", :created_at
    column "Author", :user do |article|
      if article.user.try(:department)
        (article.user.try(:email) || "") + ", " + (article.user.try(:department).name || "")
      else
        article.user.try(:email) || ""
      end
    end
    column :slug
    column "Status", :status
    default_actions # Add show, edit, delete column
  end

  form :partial => "shared/admin/article_form"
end
