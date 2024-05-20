class RenameOldColumnNameToNewColumnName < ActiveRecord::Migration[7.0]
  
    def change
      rename_column :people, :address, :nickname
    end
  
end
