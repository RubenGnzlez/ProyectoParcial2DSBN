class Country
  @@FIELDS = "country_id, country_name, region_id"
  @@TABLE = "countries"

  def queryAll
    @query_all = "SELECT #{@@FIELDS} FROM #{@@TABLE}"
  end

  def queryId
    @query_id
  end
  def queryId=(id)
    @query_id = "SELECT #{@@FIELDS} FROM #{@@TABLE} WHERE country_id = %s" % id
  end

  def insert
    @insert
  end
  def insert=(country_id, country_name, region_id)
    @insert = "INSERT INTO #{@@TABLE} (#{@@FIELDS}) VALUES ('%s','%s','%s')" % [country_id, country_name, region_id]
  end

  def update
    @update
  end
  def update=(newcountry_id, country_name, region_id,country_id)
    @update = "UPDATE #{@@TABLE} SET country_name = %s, region_id = %s,country_id = %s WHERE country_id = %s" % [newcountry_id, country_name, region_id,country_id]
  end
  def delete
    @delete
  end
  def delete=(id)
    @delete = "DELETE FROM #{@@TABLE} WHERE country_id = %s" % id
  end
end