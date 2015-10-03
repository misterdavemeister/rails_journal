class AddPaperclipFieldsToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :image_file_name,    :string
    add_column :entries, :image_content_type, :string
    add_column :entries, :image_file_size,    :integer
    add_column :entries, :image_updated_at,   :datetime
  end
end
