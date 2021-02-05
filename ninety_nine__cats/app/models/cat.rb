
class Cat < ApplicationRecord
    COLORS = ["black", 'white', 'grey', 'brown', 'orange']

    def age 
        now = Date.today
        raise if birth_date.year > now.year
        age = birth_date.year - now.year
    end


    has_many :requests,
        foreign_key: :cat_id,
        class_name: :CatRentalRequest,
        dependent: :destroy




    validates :birth_date, presence: true
    validates :age, presence: true
    validates :color, presence: true,
        inclusion: {in: COLORS, message: "Color not in our assortment."}
    validates :name, presence: true
    validates :sex, presence: true, inclusion: {in: ['M', 'F']}
    validates :description, presence: true
end