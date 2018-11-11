class CreateNayoseApis < ActiveRecord::Migration[5.2]
  def change
    create_table :nayose_apis do |t|
      t.string :before_word
      t.string :after_word

      t.timestamps
    end
  end
end
