--2. Dimensional Data Store (DDS)
create table employee_dds (
	EmployeeID INT PRIMARY KEY,
    PersonID INT,
    Position VARCHAR,
    person_name VARCHAR,
    person_surname VARCHAR,
    SocialSecurityID INT,
    CompanyID INT,
    is_manager BOOL,
    DepartmentId INT,
    department_name VARCHAR,
   	department_description VARCHAR,
    company_name VARCHAR,
    company_location VARCHAR
);

insert into employee_dds
select 
	e.EmployeeID,
  e.PersonID,
  e.Position,
  p.Name as person_name,
  p.Surname as person_surname,
  p.SocialSecurityID,
  p.CompanyID,
  case 
    when m.managerID is not null then true 
      else false 
  end as is_manager,
  d.DepartmentId,
  d.Name as department_name,
  d.Description as department_description,
  c.Name as company_name,
  c.Location as company_location
from Employee_stage as e
inner join Person_stg as p on p.PersonID = e.PersonID
left join manager_stg as m on m.PersonID = p.PersonID
left join Department_stg as d on d.DepartmentID = m.DepartmentID and m.PersonId is not null 
inner join Company_stg as c on c.CompanyID = p.CompanyID
