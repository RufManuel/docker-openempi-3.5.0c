-- This script must be installed on an instance of OpenEMPI version 3.4.0 or higher that is based on the 3.0.0 major release
-- 
ALTER TABLE app_user
	ADD COLUMN identifier_domain_id integer NULL,
	ADD CONSTRAINT fk_app_user_identifier_domain FOREIGN KEY (identifier_domain_id) REFERENCES identifier_domain (identifier_domain_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO audit_event_type (audit_event_type_cd, audit_event_type_name, audit_event_type_description, audit_event_type_code) VALUES (113, 'View Record', 'View a record', 'VIEWR');
