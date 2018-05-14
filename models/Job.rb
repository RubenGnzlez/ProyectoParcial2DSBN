class Job
  @@FIELDS = "job_id, job_title, min_salary, max_salary"
  @@TABLE = "jobs"

  def queryAll
    @query_all = "SELECT #{@@FIELDS} FROM #{@@TABLE}"
  end

  def queryId
    @query_id
  end
  def queryId=(id)
    @query_id = "SELECT #{@@FIELDS} FROM #{@@TABLE} WHERE job_id = %s" % id
  end

  def insert
    @insert
  end
  def insert=(job_id, job_title, min_salary, max_salary)
    @insert = "INSERT INTO #{@@TABLE} (#{@@FIELDS}) VALUES ('%s','%s','%s','%s')" % [job_id, job_title, min_salary, max_salary]
  end

  def update
    @update
  end
  def update=(newjob_id, job_title, min_salary, max_salary,job_id)
    @update = "UPDATE #{@@TABLE} SET newjob_id = %s, job_title = %s, min_salary = %s, max_salary = %s WHERE job_id = %s" % [newjob_id, job_title, min_salary, max_salary,job_id]
  end
  def delete
    @delete
  end
  def delete=(id)
    @delete = "DELETE FROM #{@@TABLE} WHERE job_id = %s" % id
  end
end

