class JobHistory

  @@FIELDS = "employee_id, start_date, end_date, job_id, department_id"
  @@TABLE = "job_history"

  def queryAll
    @query_all = "SELECT #{@@FIELDS} FROM #{@@TABLE}"
  end

  def queryId
    @query_id
  end
  def queryId=(id)
    @query_id = "SELECT #{@@FIELDS} FROM #{@@TABLE} WHERE employee_id = %s" % id
  end

  def insert
    @insert
  end
  def insert=(employee_id, start_date, end_date, job_id, department_id)
    @insert = "INSERT INTO #{@@TABLE} (#{@@FIELDS}) VALUES ('%s','%s','%s','%s','%s')" % [employee_id, start_date, end_date, job_id, department_id]
  end

  def update
    @update
  end
  def update=(newemployee_id, start_date, end_date, job_id, department_id,employee_id)
    @update = "UPDATE #{@@TABLE} SET employee_id = %s, start_date = %s, end_date = %s, job_id = %s, department_id = %s WHERE employee_id = %s" % [newemployee_id, start_date, end_date, job_id, department_id,employee_id]
  end
  def delete
    @delete
  end
  def delete=(id)
    @delete = "DELETE FROM #{@@TABLE} WHERE employee_id = %s" % id
  end
end
