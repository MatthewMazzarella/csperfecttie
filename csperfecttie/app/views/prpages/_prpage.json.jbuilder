json.extract! prpage, :id, :name, :address, :city, :state, :zipcode, :email, :methodofcom, :phone, :suitsize, :preferedcolor, :style, :shirtsize, :shoesize, :hatsize, :birthday, :anniversary, :ordernumber, :orderdetails, :cost, :created_at, :updated_at
json.url prpage_url(prpage, format: :json)