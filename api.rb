Exercise-1
step1: toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
step2: toronto_wards_json = JSON.parse(toronto_wards_response.body)
step3: toronto_wards_Array = toronto_wards_json['objects']
step4: Iterate through your new hash and display the name of each ward in the collection.
      name_of_wards = toronto_wards_Array.map do |obj|
        obj['name']
      end


Exercise-2
Retrieving all the first name of the representatives by postal code and boundaries by postal code

step1: representatives_by_specific_postal_code = HTTParty.get('https://represent.opennorth.ca/postcodes/L5G4L3/')
step2: requested_response = JSON.parse(representatives_by_specific_postal_code.body)
step3: representatives_centroid = requested_response['representatives_centroid']
step4: array_first_name = representatives_centroid.map do |representative|
       representative['first_name']
     end
     
