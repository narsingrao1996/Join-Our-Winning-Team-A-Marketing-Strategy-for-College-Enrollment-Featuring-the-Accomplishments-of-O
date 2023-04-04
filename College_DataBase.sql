CREATE table students_details (
student_id integer not null  PRIMARY KEY,
student_name varchar(255),
branch varchar(255),
adhress varchar(255),
gender varchar(255),
email_id varchar(255),
mobile_number integer(255)
);

INSERT INTO students_details(student_id,student_name,branch,adhress,gender,email_id,mobile_number)values
(1001, "narsing","MECH","hyderabad","MALE","narsing@555gmail.com", 91225665),
(1002,"Naveen","ECE","karimnagar","MALE","naveen@999gmail.com",912246),
(1003, "uday","CSE","hyderabad","MALE","uday@14gmail.com",91223347),
(1004, "bharath","MECH","khamam","MALE","bharath@123gmail.com",9120345),
(1005, "manideep","EEE","mahabubnagar","MALE","manideep@55gmail.com",8914233),
(1006, "sai kiran","CSE","adilabad","MALE","saikiran@88gmail.com",7012345),
(1007, "naresh","CIVIL","hyderabad","MALE","naresh@88gmail.com",701225),
(1008, "nikitha","CSE","karimnagar","FEMALE","nikitha@54gmail.com",85122883),
(1009, "mounika","MECH","sangareddy","FEMALE","mounika@78gmail.com",96122099),
(1010, "hema latha","EEE","medak","FEMALE","hemalatha@22gmail.com",971283),
(1011, "geetha","ECE","nalgonda","FEMALE","geetha@47gmail.com",912495),
(1012, "swathi","ECE","sangareddy","FEMALE","swathi@58gmail.com",8124345),
(1013, "chadana","CSE","hyderabad","FEMALE","chadana@00gmail.com",8912473),
(1014, "varun","CIVIL","khamam","MALE","varun@99gmail.com",7512463),
(1015, "pavan","ECE","hyderabad","MALE","pavan@12gmail.com",741245345)



CREATE table students_percentage (
student_id integer not null,
branch varchar(255),
percentage integer(255)
);
ALTER TABLE students_percentage
ADD FOREIGN KEY (student_id) REFERENCES students_details(student_id);

INSERT INTO students_percentage(student_id, branch, percentage) VALUES
(1001, 'MECH', 75),
(1002, 'ECE', 62),
(1003, 'CSE', 87),
(1004, 'MECH', 51),
(1005, 'EEE', 65),
(1006, 'CSE', 56),
(1007, 'CIVIL', 74),
(1008, 'CSE', 70),
(1009, 'MECH', 62),
(1010, 'EEE', 58),
(1011, 'ECE', 63),
(1012, 'ECE', 45),
(1013, 'CSE', 88),
(1014, 'CIVIL', 73),
(1015, 'ECE', 72);

CREATE table students_IQ (
student_id int (255),
iq_level varchar (255),
iq_points int(255)
);

 ALTER TABLE students_IQ
ADD FOREIGN KEY (student_id) REFERENCES students_details(student_id);

INSERT INTO students_IQ (student_id, iq_level, iq_points)VALUES 
  (1001,'good', 9),
  (1002,null, 8),
  (1003,'low', 6),
  (1004,'average', 8),
  (1005, null, 9),
  (1006,'average', 9),
  (1007, null, 8),
  (1008,'good', 9),
  (1010,'good', 8),
  (1011,'average', 7),
  (1012,'low', 5),
  (1013,'average', 7),
  (1014,'low', 5),
  (1015,'good', 10);


CREATE table students_sports (
student_id int (255),
sport_name varchar (255),
medals varchar(255),
sport_points int(255)
);
ALTER TABLE students_sports
ADD FOREIGN KEY (student_id) REFERENCES students_details(student_id);

insert into students_sports(student_id,sport_name,medals,sport_points)values
(1001, "cricket","silver",8),
(1002,"kabadi",null,6),
(1003,"cricket","gold",9),
(1004,"boxing","bronze",6),
(1005,"cricket",null,8),
(1006,"kabadi","silver",8),
(1007,null, null,null),
(1008,"boxing","gold",10),
(1010,"badminton",null,7),
(1011,"badminton",null,6),
(1012,null,null,null),
(1013,null,null,null),
(1014,"kabadi",null,8),
(1015,"badminton","bronze",6)



CREATE table campus_placement (
student_id int (255),
Company_name varchar(255),
domain varchar (255),
Written_test varchar(255),
Technical_round varchar(255),
HR_Round varchar(255),
Joined_company varchar(255),
salary_package int(255)
);
ALTER TABLE campus_placement
ADD FOREIGN KEY (student_id) REFERENCES students_percentage(student_id);
insert into campus_placement(student_id,Company_name,domain,Written_test,Technical_round,HR_Round,Joined_company,salary_package)values
(1001,"TCS","IT","not cleared",null,null,null,null),			
(1002,"TCS","IT","cleared","cleared","not selected",null,null),	
(1003,"TECH MAHINDRA","BPO","cleared","cleared","selected","joined",650000),
(1004,"SUMSUNG","MARKETING","not cleared",null,null,null,null),			
(1005,"ITC","IT","cleared",	"cleared","selected","joined",580000),
(1006,"TECH MAHINDRA","IT","cleared","cleared","not-selected",null,null),		
(1007,"TCS","BPO","cleared","cleared","not selected",null,null),	
(1008,"ZOMATO","IT","cleared","cleared","selected","joined",530000),
(1009,"AMAZON","BPO","cleared","cleared","selected","not joined",380000),
(1010,"AMAZON","IT","cleared","cleared","not-selected",null,null),
(1011,"ITC","MARKETING","cleared","cleared","selected","not joined",550000),
(1012,"TCS"	,"IT","cleared","not cleared",null,null,null),
(1013,"TECH MAHINDRA","IT","cleared","cleared","selected","joined",670000),
(1014,"SUMSUNG","MANUFACURING","cleared","cleared","selected","joined",700000),
(1015,"ITC","BPO","cleared","not cleared",null,null,null);
							
CREATE table startup (
student_id int (255),
enterprise_name varchar(255),
domain varchar (255),
share_holding_percentage int(255),
company_valution int(255)
);
ALTER TABLE startup
ADD FOREIGN KEY (student_id) REFERENCES students_percentage(student_id);
INSERT INTO startup (student_id, enterprise_name, domain, share_holding_percentage,company_valution) 
VALUES 
    (1001, NULL, NULL, NULL, NULL),
    (1002, NULL, NULL, NULL, NULL),
    (1003, NULL, NULL, NULL, NULL),
    (1004, NULL, NULL, NULL, NULL),
    (1005, NULL, NULL, NULL, NULL),
    (1006, NULL, NULL, NULL, NULL),
    (1007, NULL, NULL, NULL, NULL),
    (1008, NULL, NULL, NULL, NULL),
    (1009, NULL, NULL, NULL, NULL),
    (1010, NULL, NULL, NULL, NULL),
    (1011, NULL, NULL, NULL, NULL),
    (1012, 'VISION TECH', 'FINTECH', 15,100000000),
    (1013, NULL, NULL, NULL, NULL),
    (1014, NULL, NULL, NULL, NULL),
    (1015, 'JUST-IN SOFTWARE', 'IT', 25,70000000);
    
    
    CREATE table business (
student_id int (255),
business_vertical varchar(255),
quartly_sales int (255),
quartly_expenses int(255),
total_debt int(255),
rate_of_intrest int(255)
);
ALTER TABLE business
ADD FOREIGN KEY (student_id) REFERENCES students_percentage(student_id);
insert into business(student_id,business_vertical,quartly_sales,quartly_expenses,total_debt,rate_of_intrest)
VALUES 
    (1001,"resturant",500000,350000,700000,12),
    (1002, NULL, NULL, NULL, NULL,NULL),
    (1003, NULL, NULL, NULL, NULL,NULL),
    (1004, NULL, NULL, NULL, NULL,NULL),
    (1005, NULL, NULL, NULL, NULL,NULL),
    (1006, NULL, NULL, NULL, NULL,NULL),
    (1007, NULL, NULL, NULL, NULL,NULL),
    (1008, NULL, NULL, NULL, NULL,NULL),
    (1009, NULL, NULL, NULL, NULL,NULL),
    (1010,"general store",800000,450000,1500000,18),
    (1011, NULL, NULL, NULL, NULL,NULL),
    (1012,NULL, NULL, NULL, NULL,NULL),
    (1013, NULL, NULL, NULL, NULL,NULL),
    (1014, NULL, NULL, NULL, NULL,NULL),
    (1015, NULL, NULL, NULL, NULL,NULL);    
    
				
CREATE table goverment_job(
student_id int (255),
name_of_exam varchar(255),
name_of_role varchar(255),
written_test varchar(255),
interview varchar(255),
salary_package varchar(255)
);
ALTER TABLE goverment_job
ADD FOREIGN KEY (student_id) REFERENCES students_percentage(student_id);
INSERT INTO goverment_job (student_id,name_of_exam,name_of_role,written_test,interview,salary_package)
VALUES 
    (1001, NULL, NULL, NULL, NULL,NULL),
    (1002,"group-4","Junior Auditor","not cleared",NULL,NULL),
    (1003, NULL, NULL, NULL, NULL,NULL),
    (1004,"group-3","Junior Assistant","cleared","not cleared",NULL),
    (1005,"group-1","District Employment Officer","not cleared",NULL,NULL),
    (1006,"group-2","Assistant Labour Officer","cleared","cleared",600000),
    (1007, NULL, NULL, NULL, NULL,NULL),
    (1008,"group-2","Assistant Development Officer","cleared","not cleared",NULL),
    (1009,"group-1","commissioner","cleared","cleared",1500000),
    (1010,"group-3","Junior Assistant","cleared","not cleared",NULL),
    (1011,"group-2","Assistant Labour Officer","cleared","cleared",600000),
    (1012,NULL, NULL, NULL, NULL,NULL),
    (1013,"group-1","Deputy Collector","not cleared",NULL,NULL),
    (1014,NULL, NULL, NULL, NULL,NULL),
    (1015,NULL, NULL, NULL, NULL,NULL);