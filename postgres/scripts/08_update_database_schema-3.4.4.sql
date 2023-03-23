-- This script must be installed on an instance of OpenEMPI version 3.4.0 or higher that is based on the 3.0.0 major release
-- 

INSERT INTO job_type
(job_type_cd, job_type_name, job_type_description, job_type_handler) VALUES
(11, 'Reevaluate Probable Links', 'Job reevaluates all record pairs that represent probable links after changes have been made to the configuration of the matching algorithm', 'reevaluateProbableLinks');
