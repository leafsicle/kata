match = (candidate, job) => {
  if(candidate.minSalary && job.maxSalary){
    return candidate.minSalary*.9 <= job.maxSalary 
  } else throw error
}