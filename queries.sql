

SELECT  student_id, username, email, name, buslead1x_enrollment_track, buslead1x_passed,  buslead2x_enrollment_track, buslead2x_passed, buslead3x_enrollment_track, buslead3x_passed, buslead4x_enrollment_track, buslead4x_passed, buslead5x_enrollment_track, buslead5x_passed, no_certificate_eligible, no_audited_passed, country
FROM  coursecompletion ORDER bY no_certificate_eligible DESC;

SELECT  student_id, username, email, name, corpinn1x_enrollment_track, corpinn1x_passed,  corpinn2x_enrollment_track, corpinn2x_passed, corpinn3x_enrollment_track, corpinn3x_passed, corpinn4x_enrollment_track, corpinn4x_passed, corpinn5x_enrollment_track, corpinn5x_passed, no_certificate_eligible, no_audited_passed, country
FROM  coursecompletion ORDER bY no_certificate_eligible DESC;

SELECT  student_id, username, email, name, engy0x_enrollment_track, engy0x_passed, engy1x_enrollment_track, engy1x_passed, engy2x_enrollment_track, engy2x_passed, engy3x_enrollment_track, engy3x_passed, engycapx_enrollment_track, engycapx_passed, no_certificate_eligible, no_audited_passed, country
FROM coursecompletion ORDER bY no_certificate_eligible DESC;

SELECT  student_id, username, email, name, lgdm1x_enrollment_track, lgdm1x_passed, lgdm2x_enrollment_track, lgdm2x_passed, lgdm3x_enrollment_track, lgdm3x_passed, lgdm4x_enrollment_track, lgdm4x_passed, lgdm5x_enrollment_track, lgdm5x_passed, no_certificate_eligible, no_audited_passed, country
FROM  coursecompletion ORDER bY no_certificate_eligible DESC;



CREATE INDEX StudentIDIndex ON Learners(student_id);

CREATE INDEX StudentIDIndex2 ON course_instancedetails(learner_id);

CREATE INDEX StudentIDIndex3 ON coursecompletion(student_id);
