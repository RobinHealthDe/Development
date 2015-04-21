ActiveAdmin.register ContactInfo do
  permit_params(
    :first_name,
    :last_name,
    :email,
    :phone,
  )
end
