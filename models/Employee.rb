class Employee
  @@FIELDS = "employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id"
  @@TABLE = "employees"

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
  def insert=(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
    @insert = "INSERT INTO #{@@TABLE} (#{@@FIELDS}) VALUES ('%s','%s','%s','%s,'%s,'%s,'%s,'%s,'%s,'%s,'%s')" % [employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id]
  end

  def update
    @update
  end
  def update=(newemployee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id,employee_id)
    @update = "UPDATE #{@@TABLE} SET first_name = %s, last_name = %s, email = %s, phone_number = %s, hire_date = %s, job_id = %s, salary = %s, commission_pct = %s, manager_id = %s, department_id = %s,employee_id WHERE employee_id = %s" % [newemployee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id,employee_id]
  end
  def delete
    @delete
  end
  def delete=(id)
    @delete = "DELETE FROM #{@@TABLE} WHERE employee_id = %s" % id
  end
end

