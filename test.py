import mysql.connector
from datetime import datetime

db = mysql.connector.connect(
                user = "root",
                host = "localhost",
                password = "root")

mycursor = db.cursor()
# email = "testing@gmail.com"
# insert = input("Enter what to insert: ")
#
mycursor.execute("SELECT * FROM jujaworks.job_posting  LIMIT 0,1;")
# db.commit()
#?

jobs = [i for i in mycursor][0]
print(jobs)


# var = "Hello\nPerson\nvvv"
# varx = var.encode("utf-8")
#
varx = "button_1"
print(f"This is it {varx}")
#
# print(f"This is not it: {varx.decode('utf8')}")
# self.pagejob_buttons = [self.btn_jobsdisplay_1, self.btn_jobsdisplay_2, self.btn_jobsdisplay_3, self.btn_jobsdisplay_4, self.btn_jobsdisplay_5, self.btn_jobsdisplay_6,self.btn_jobsdisplay_7,self.btn_jobsdisplay_8,self.btn_jobsdisplay_9]
# self.pagejob_display_company = [self.lbl_jobdisplay_company_1, self.lbl_jobdisplay_company_2, self.lbl_jobdisplay_company_3, self.lbl_jobdisplay_company_4, self.lbl_jobdisplay_company_5, self.lbl_jobdisplay_company_6, self.lbl_jobdisplay_company_7, self.lbl_jobdisplay_company_8, self.lbl_jobdisplay_company_9]
# self.pagejob_display_date = [self.lbl_jobdisplay_date_1, self.lbl_jobdisplay_date_2, self.lbl_jobdisplay_date_3, self.lbl_jobdisplay_date_4, self.lbl_jobdisplay_date_5, self.lbl_jobdisplay_date_6, self.lbl_jobdisplay_date_7, self.lbl_jobdisplay_date_8, self.lbl_jobdisplay_date_9]
# self.pagejob_display_description = [self.lbl_jobdisplay_description_1, self.lbl_jobdisplay_description_2, self.lbl_jobdisplay_description_3, self.lbl_jobdisplay_description_4, self.lbl_jobdisplay_description_5, self.lbl_jobdisplay_description_6, self.lbl_jobdisplay_description_7, self.lbl_jobdisplay_description_8, self.lbl_jobdisplay_description_9]
# self.pagejob_display_jobtitle = [self.lbl_jobdisplay_jobtitle_1, self.lbl_jobdisplay_jobtitle_2, self.lbl_jobdisplay_jobtitle_3, self.lbl_jobdisplay_jobtitle_4, self.lbl_jobdisplay_jobtitle_5, self.lbl_jobdisplay_jobtitle_6, self.lbl_jobdisplay_jobtitle_7, self.lbl_jobdisplay_jobtitle_8, self.lbl_jobdisplay_jobtitle_9]
# self.pagejob_display_salary = [self.lbl_jobdisplay_salary_1, self.lbl_jobdisplay_salary_2, self.lbl_jobdisplay_salary_3, self.lbl_jobdisplay_salary_4, self.lbl_jobdisplay_salary_5, self.lbl_jobdisplay_salary_6, self.lbl_jobdisplay_salary_7, self.lbl_jobdisplay_salary_8, self.lbl_jobdisplay_salary_9]
#


