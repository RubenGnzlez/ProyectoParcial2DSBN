class Region

  @@FIELDS = "region_id, region_name"
  @@TABLE = "regions"

  def queryAll
    @query_all = "SELECT #{@@FIELDS} FROM #{@@TABLE}"
  end

  def queryId
    @query_id
  end
  def queryId=(id)
    @query_id = "SELECT #{@@FIELDS} FROM #{@@TABLE} WHERE region_id = %s" % id
  end

  def insert
    @insert
  end
  def insert=(id,name,region)
    @insert = "INSERT INTO #{@@TABLE} (#{@@FIELDS}) VALUES ('%s','%s','%s')" % [id, name,region]
  end

  def update
    @update
  end
  def update=(newid,name,region,id)
    @update = "UPDATE #{@@TABLE} SET region_id = %s, region_name = %s WHERE region_id = %s" % [newid, name,region,id]
  end
  def delete
    @delete
  end
  def delete=(id)
    @delete = "DELETE FROM #{@@TABLE} WHERE region_id = %s" % id
  end

end

