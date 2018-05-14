class Location

    @@FIELDS = "location_id, address, postal_code, city, state_province, country_id"
    @@TABLE = "locations"

    def queryAll
      @query_all = "SELECT #{@@FIELDS} FROM #{@@TABLE}"
    end

    def queryId
      @query_id
    end
    def queryId=(id)
      @query_id = "SELECT #{@@FIELDS} FROM #{@@TABLE} WHERE location_id = %s" % id
    end

    def insert
      @insert
    end
    def insert=(location_id, address, postal_code, city, state_province, country_id)
      @insert = "INSERT INTO #{@@TABLE} (#{@@FIELDS}) VALUES ('%s','%s','%s','%s','%s','%s')" % [location_id, address, postal_code, city, state_province, country_id]
    end

    def update
      @update
    end
    def update=(newlocation_id, address, postal_code, city, state_province, country_id,location_id)
      @update = "UPDATE #{@@TABLE} SET location_id = %s, address = %s, postal_code= %s, city= %s, state_province= %s, country_id= %s WHERE location_id = %s" % [newlocation_id, address, postal_code, city, state_province, country_id,location_id]
    end
    def delete
      @delete
    end
    def delete=(id)
      @delete = "DELETE FROM #{@@TABLE} WHERE location_id = %s" % id
    end
end

