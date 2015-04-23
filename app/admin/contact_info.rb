ActiveAdmin.register ContactInfo do
  permit_params(
    :first_name,
    :last_name,
    :email,
    :phone,
  )

  show do
    panel "Belongs to" do
      link_to contact_info.patient, admin_patient_path(contact_info.patient)
    end
    default_main_content
  end
end
