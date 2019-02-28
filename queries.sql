
SELECT  student_id, username, email, name, lgdm1x_verified, lgdm1x_completed,  lgdm2x_verified, lgdm2x_completed,  lgdm3x_verified, lgdm3x_completed,  lgdm4x_verified, lgdm4x_completed, lgdm5x_verified, lgdm5x_completed, no_completed_courses as no_verified_passed, no_audited_passed, survey_oncampus, country
FROM  lgdm_coursecompletion ORDER bY no_completed_courses DESC;

SELECT  student_id, username, email, name, buslead1x_verified, buslead1x_completed,  buslead2x_verified, buslead2x_completed, buslead3x_verified, buslead3x_completed, buslead4x_verified, buslead4x_completed, no_completed_courses as no_verified_passed, no_audited_passed
FROM  buslead_coursecompletion ORDER bY no_completed_courses DESC;

SELECT  student_id, username, email, name, engy0x_verified, engy0x_completed, engy1x_verified, engy1x_completed, engy2x_verified, engy2x_completed, engy3x_verified, engy3x_completed, no_completed_courses as no_verified_passed, no_audited_passed
FROM  energy_coursecompletion ORDER bY no_completed_courses DESC;

// Create Indexes to speed up queries

CREATE INDEX StudentIDIndex ON Learners(student_id);

CREATE INDEX StudentIDIndex2 ON course_instancedetails(learner_id);

CREATE INDEX StudentIDIndex3 ON energy_coursecompletion(student_id);
