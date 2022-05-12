class Fono < ApplicationRecord
    #relacion 1 a n con user, fono pertenece a user
    belongs_to:user,class_name:"User",foreign_key:"user_id"
end
