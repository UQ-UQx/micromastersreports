# micromastersreports -- Tools for MicroMasters edX

##### The University of Queensland - Institute for Teaching and Learning Innovation

### This project provides a set of tools (Jupyter Notebooks) of data processing and data analytics for MicroMasters of edX

##### 1) Create_MM_Report.ipynb --Creating MicroMasters Report
		
##### 2) Dynamic Email.ipynb --Preparing for dynamic mailout

The following uses the micromasters course _buslead_ as example

## Before running 
#### 1) Make the following director
```bash
$ mkdir ./csv
$ mkdir ./data
$ mkdir ./data/buslead
$ mkdir ./database
```
#### 2) Download data
Go to the edX website and download all runs of buslead profile_info csv files and grade_report csv files and save them to ./data/buslead

#### 3) Prepare the database file
```bash
$ cp ./dummymmcourse_verified.db ./database
$ mv ./database/dummymmcourse_verified.db ./database/buslead_verified.db
```

#### 4) Edit Create_MM_Report.ipynb 
* Set `mmCourse = 'buslead'`
* Make sure the variable `mmCourseMeta` having the `buslead` key, such as
	```python
	mmCoursesMeta = {
		'buslead': {
			"buslead1x": {"title": "UQx_BUSLEAD1x",  'grade': 0.65},
			"buslead2x": {"title": "UQx_BUSLEAD2x",  'grade': 0.65},
			"buslead3x": {"title": "UQx_BUSLEAD3x",  'grade': 0.65},
			"buslead4x": {"title": "UQx_BUSLEAD4x",  'grade': 0.65},
			"buslead5x": {"title": "UQx_BUSLEAD5x",  'grade': 0.65},
		}
	}
	``` 

## Run Create_MM_Report.ipynb
Running this notebook will
#### 1) Clean all tables in `buslead_verified.db`

#### 2) Import buslead profile_info csv files into the table `learners`

#### 3) Import buslead grade_report csv files into the table `course_instancedetails`

#### 4) Sum up student status of each course and write the result into the table `buslead_coursecompletion`

* The column 'no_certificate_eligible' records how many courses the student already achieved 'certificated eligible' in the micromaster courses.

* You may export the table `buslead_coursecompletion` as the micromaster report

## Run Dynamic Email.ipynb 
This notebook try to find the following two sets of students
* The student whose enrollment track is 'audit' and his/her grade is above the passing line.
We will send emails to such kind of students to suggest them to transfer their track from 'audit' to 'verify'.
* The student whose grade is above the passing line and he/she did not complete all courses of this micromaster course. We will send emails to such kind of students to suggest them to continuely enrol another uncompleted course.








