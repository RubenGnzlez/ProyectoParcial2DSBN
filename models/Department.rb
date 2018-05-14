class Department
  @@FIELDS = "department_id, name, manager_id, location_id"
  @@TABLE = "departments"

  def queryAll
    @query_all = "SELECT #{@@FIELDS} FROM #{@@TABLE}"
  end

  def queryId
    @query_id
  end
  def queryId=(id)
    @query_id = "SELECT #{@@FIELDS} FROM #{@@TABLE} WHERE department_id = %s" % id
  end

  def insert
    @insert
  end
  def insert=(department_id, name, manager_id, location_id)
    @insert = "INSERT INTO #{@@TABLE} (#{@@FIELDS}) VALUES ('%s','%s','%s','%s')" % [department_id, name, manager_id, location_id]
  end

  def update
    @update
  end
  def update=(newdepartment_id, name, manager_id, location_id,department_id)
    @update = "UPDATE #{@@TABLE} SET name = %s, manager_id = %s, location_id = %s,department_id = %s WHERE department_id = %s" % [newdepartment_id, name, manager_id, location_id,department_id]
  end
  def delete
    @delete
  end
  def delete=(id)
    @delete = "DELETE FROM #{@@TABLE} WHERE department_id = %s" % id
  end
end

test = Department.new
test.delete = "abracadabra"
puts test.delete