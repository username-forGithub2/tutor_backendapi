class AddLangToTutors < ActiveRecord::Migration[7.0]
  def change
    add_column :tutors, :lang, :string
  end
end
