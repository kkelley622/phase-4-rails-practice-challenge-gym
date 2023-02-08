class Client < ApplicationRecord
    has_many :memberships
    has_one :gyms, through: :memberships 
    

    # def total_memberships_cost 
    #     charges = @client.memberships.map(membership => membership.charge)
    #     total = charges.sum
    # end
end
