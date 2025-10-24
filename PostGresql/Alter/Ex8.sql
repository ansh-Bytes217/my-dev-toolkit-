ALTER TABLE job_history
ADD FOREIGN KEY(job_id)
REFERENCES jobs(job_id);
