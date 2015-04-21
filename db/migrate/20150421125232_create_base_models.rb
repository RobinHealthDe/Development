class CreateBaseModels < ActiveRecord::Migration
  def change
    create_table :contact_infos do |t|
      t.string :first_name, limit: 64, null: false
      t.string :last_name,  limit: 64, null: false

      # A valid e-mail address can have up to 254 characters. See http://isemail.info/about
      t.string :email, limit: 254, null: false

      # A normalized phone number that conforms to ITU E.164 standard.
      # Most countries (including Germany) follow this standard.
      # Note that phone numbers don't have to be unique. People can share a landline for example.
      t.string :phone, limit: 15

      t.timestamps null: false
    end
    add_index :contact_infos, :email, unique: true

    create_table :patients do |t|
      t.references :contact_info

      t.timestamps null: false
    end
    add_index :patients, :contact_info_id, unique: true

    create_table :inquiries do |t|
      t.references :patient

      t.timestamps null: false
    end
    add_index :inquiries, :patient_id, unique: true
  end
end
