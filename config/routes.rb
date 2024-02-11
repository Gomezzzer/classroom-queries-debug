Rails.application.routes.draw do
  get("/", { :controller => "departments", :action => "index" })
  # Routes for the Department resource:
          
  # READ
  get("/departments", { :controller => "departments", :action => "index" })
  
  get("/departments/:path_id", { :controller => "departments", :action => "show" })

  post("/insert_department", { :controller => "departments", :action => "create" })

  get("/delete_department/:path_id", { :controller => "departments", :action => "destroy" })

  #------------------------------

  # Routes for the Course resource:

  # READ
  get("/courses", { :controller => "courses", :action => "index" })
  
  get("/courses/:path_id", { :controller => "courses", :action => "show" })

  post("/insert_course", { :controller => "courses", :action => "create" })

  post("/modify_course/:path_id", { :controller => "courses", :action => "update" })

  get("/delete_course/:path_id", { :controller => "courses", :action => "destroy" })

  #------------------------------

  # Routes for the Enrollment resource:
          
  # READ
  get("/enrollments", { :controller => "enrollments", :action => "index" })
  
  get("/enrollments/:path_id", { :controller => "enrollments", :action => "show" })

  #------------------------------

  # Routes for the Student resource:

  # READ
  get("/students", { :controller => "students", :action => "index" })
  
  get("/students/:path_id", { :controller => "students", :action => "show" })

  post("/insert_student", { :controller => "students", :action => "create" })

  get("/delete_student/:path_id", { :controller => "students", :action => "destroy" })

  #------------------------------

  post("/insert_enrollment", { :controller => "enrollments", :action => "create" })

end
