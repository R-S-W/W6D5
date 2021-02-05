class CatRentalRequest < ApplicationRecord

    belongs_to :cat,
        foreign_key: :cat_id,
        class_name: :Cat

    
    def overlapping_requests
        Cat
            .select(:name, :id, :start_date, :end_date)
            .where()
    end




    validates  :cat_id,   presence: true
    validates  :start_date,   presence: true
    validates  :end_date,   presence: true
    validates  :status,  presence: true,
        inclusion: {in: ["PENDING","APPROVED","DENIED"], message:'No status available' }
    validates     presence: true
end