# CoreText

http://coretext.herokuapp.com/
https://trello.com/b/YAnjC5CA/wdi-project-2-elearning-app

CoreText is an eLearning app that focuses on presenting information one concept at a time, with exercises interspersed throughout. Anyone can create  instructor and user accounts. Instructors can create courses, which consist of a series of concepts and exercises, as well as subject categories. Students can enroll in courses, which show new concepts and exercises as they are completed.

### How to Use

Instructor

- Create an account
  - From the login page, click "New Instructor Account"
- Create a course
  - On the "[instructor]'s Courses" page, click "Create Course"
  - Select a subject category for the course
    - If a suitable category doesn't exist, you can go to the subjects page and click "Add Subject" to create a new one
- Add concepts to the course by clicking "add concept" on the course page
  - Concepts' content can contain html for formatting
- Add exercises to a concept by clicking "add exercise" on the concept page

Student

- Create an account
  
  - From the login page, click "New Student Account"
  
- Enroll in courses
  
  - Click "Subjects" to see subjects available
  - On a subject's page, click the "Enroll" button on a course you'd like to take
  
- Once enrolled in a course, click "Continue" to pick up from wherever you left off (or from the beginning if you've just enrolled)
  
  ​

# Technologies Used

- Ruby
- Ruby on Rails
- HTML & CSS
- Sass
- Bootstrap
- Heroku

# User Stories

- As an instructor I want to be able to present concepts and exercises modularly
- As an instructor, I want to customize the order and number of modules in a given course
- As an instructor, I want to be able to include images, sounds, and video in concept modules *(not done)*
- As an instructor, I want to be able to specify that certain courses are prerequisite to others *(not done)*
- As an instructor, I want to be able to revise courses and modules, to remove errors or improve understandability
- As a student, I want to be able to select courses to take
- As a student, I want to be able to track my progress through courses
- As a student, I want to be able to provide feedback on courses and modules *(not done)*
- As a student, I want to be able to see a summary of concepts I've learned *(not done)*
- As a student, I want to be able to quickly check back on previous concepts to review them *(not done)*

# Entity Relationships 

 ![project2_elearning_erd](/wireframes/project2_elearning_erd.png)

# Wireframes

 ![sign_up_log_in](/wireframes/sign_up_log_in.png) ![instructor_view](/wireframes/instructor_view.png) ![course_instructor_view](/wireframes/course_instructor_view.png) ![concept_instructor_view](/wireframes/concept_instructor_view.png) ![new_edit_course_view](/wireframes/new_edit_course_view.png) ![new_edit_concept_view](/wireframes/new_edit_concept_view.png) ![new_edit_exercise_view](/wireframes/new_edit_exercise_view.png) ![student_view](/wireframes/student_view.png) ![subjects_view](/wireframes/subjects_view.png) ![subject_view](/wireframes/subject_view.png) ![course_student_view](/wireframes/course_student_view.png) ![concept_student_view](/wireframes/concept_student_view.png) ![exercise_student_view](/wireframes/exercise_student_view.png)
