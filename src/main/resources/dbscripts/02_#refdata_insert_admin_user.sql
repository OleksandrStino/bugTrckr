INSERT INTO User (firstName, lastName, email, password, role, description) VALUES ('admin', 'admin', 'admin@ss.com', 'admin', 'ADMIN', 'first');

INSERT INTO Project (title, guestView, guestCreateIssues, guestAddComment, description) VALUES ('project_1',  '1', '0', '0', 'description to project 1');
-- it doesn't work with INSERT INTO projectRelease syntax
INSERT INTO ProjectRelease (projectId, version, releaseStatus, description, isDeleted) VALUES ('1', '1', 'OPEN', 'RELEASE 1', '0');

INSERT INTO User (firstName, lastName, email, password, role, description, projectId) VALUES ('manager', 'manager', 'manager@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'PROJECT_MANAGER', 'pm','1');
INSERT INTO User (firstName, lastName, email, password, role, description, projectId) VALUES ('developer', 'developer', 'developer@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'DEVELOPER', 'developer', '1');
INSERT INTO User (firstName, lastName, email, password, role, description, projectId) VALUES ('quality_e', 'quality_e', 'quality_e@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'QA', 'qa', '1');

INSERT INTO Project (title, guestView, guestCreateIssues, guestAddComment, description) VALUES ('project_2',  '1', '1', '0', 'description to project 2');
INSERT INTO ProjectRelease (id, projectId, version, releaseStatus, description, isDeleted) VALUES ('2', '2', '2', 'OPEN', 'RELEASE 2', '0');
INSERT INTO User (firstName, lastName, email, password, role, description, projectId) VALUES ('manager2', 'manager2', 'manager1@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'PROJECT_MANAGER', 'pm','2');
INSERT INTO User (firstName, lastName, email, password, role, description, projectId) VALUES ('developer2', 'developer2', 'developer1@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'DEVELOPER', 'developer', '2');
INSERT INTO User (firstName, lastName, email, password, role, description, projectId) VALUES ('quality_e2', 'quality_e2', 'quality_e1@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'QA', 'qa', '2');

INSERT INTO Project (title, guestView, guestCreateIssues, guestAddComment, description) VALUES ('project_3',  '1', '1', '1', 'description to project 3');
INSERT INTO ProjectRelease (id, projectId, version, releaseStatus, description, isDeleted) VALUES ('3', '3', '3', 'OPEN', 'RELEASE 3', '0');
INSERT INTO User (firstName, lastName, email, password, role, description, projectId) VALUES ('manager3', 'manager3', 'manager2@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'PROJECT_MANAGER', 'pm','3');
INSERT INTO User (firstName, lastName, email, password, role, description, projectId) VALUES ('developer3', 'developer3', 'developer2@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'DEVELOPER', 'developer', '3');
INSERT INTO User (firstName, lastName, email, password, role, description, projectId) VALUES ('quality_e3', 'quality_e3', 'quality_e2@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'QA', 'qa', '3');

INSERT INTO Project (title, guestView, guestCreateIssues, guestAddComment, description) VALUES ('project_4',  '0', '0', '0', 'description to project 2');
INSERT INTO ProjectRelease (id, projectId, version, releaseStatus, description, isDeleted) VALUES ('4', '4', '4', 'OPEN', 'RELEASE 4', '0');
INSERT INTO User (firstName, lastName, email, password, role, description, projectId) VALUES ('manager4', 'manager4', 'manager3@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'PROJECT_MANAGER', 'pm','4');
INSERT INTO User (firstName, lastName, email, password, role, description, projectId) VALUES ('developer4', 'developer4', 'developer3@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'DEVELOPER', 'developer', '4');
INSERT INTO User (firstName, lastName, email, password, role, description, projectId) VALUES ('quality_e4', 'quality_e4', 'quality_e3@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'QA', 'qa', '4');

INSERT INTO User (firstName, lastName, email, password, role, description) VALUES ('user1', 'user1', 'user1@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'USER', 'user1');
INSERT INTO User (firstName, lastName, email, password, role, description) VALUES ('user2', 'user2', 'user2@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'USER', 'user2');
INSERT INTO User (firstName, lastName, email, password, role, description) VALUES ('user3', 'user3', 'user3@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'USER', 'user3');
INSERT INTO User (firstName, lastName, email, password, role, description) VALUES ('user4', 'user4', 'user4@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'USER', 'user4');
INSERT INTO User (firstName, lastName, email, password, role, description) VALUES ('user5', 'user5', 'user5@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'USER', 'user5');

INSERT INTO User (firstName, lastName, email, password, role, description) VALUES ('guest1', 'guest1', 'guest1@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'GUEST', 'guest1');
INSERT INTO User (firstName, lastName, email, password, role, description) VALUES ('guest2', 'guest2', 'guest2@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'GUEST', 'guest2');
INSERT INTO User (firstName, lastName, email, password, role, description) VALUES ('guest3', 'guest3', 'guest3@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'GUEST', 'guest3');
INSERT INTO User (firstName, lastName, email, password, role, description) VALUES ('guest4', 'guest4', 'guest4@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'GUEST', 'guest4');
INSERT INTO User (firstName, lastName, email, password, role, description) VALUES ('guest5', 'guest5', 'guest5@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'GUEST', 'guest5');
INSERT INTO User (firstName, lastName, email, password, role, description) VALUES ('guest6', 'guest6', 'guest6@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'GUEST', 'guest6');
INSERT INTO User (firstName, lastName, email, password, role, description) VALUES ('guest7', 'guest7', 'guest7@ss.com', '21232f297a57a5a743894a0e4a801fc3', 'GUEST', 'guest7');

INSERT INTO Issue (title, type, priority, status, projectReleaseId, assigneeId, createTime, dueDate, lastUpdateDate, estimateTime, parentId, isDeleted)
VALUES ('Issue1', 'TASK', 'LOW', 'OPEN', '2', '2', '2016-01-01', '2016-02-02', '2016-03-03', '32100000', '1', '0');
INSERT INTO Issue (title, type, priority, status, projectReleaseId, assigneeId, createTime, dueDate, lastUpdateDate, estimateTime, parentId, isDeleted)
VALUES ('Issue2', 'BUG', 'MEDIUM', 'OPEN', '3', '3', '2016-01-01', '2016-02-02', '2016-03-03', '434500000', '2', '0');
INSERT INTO Issue (title, type, priority, status, projectReleaseId, assigneeId, createTime, dueDate, lastUpdateDate, estimateTime, parentId, isDeleted)
VALUES
  ('Issue3', 'IMPROVEMENT', 'HIGH', 'OPEN', '4', '4', '2016-01-01', '2016-02-02', '2016-03-03', '534500000', '3', '0');
INSERT INTO Issue (title, type, priority, status, projectReleaseId, assigneeId, createTime, dueDate, lastUpdateDate, estimateTime, parentId, isDeleted)
VALUES ('Issue4', 'EPIC', 'CRITICAL', 'OPEN', '3', '3', '2016-01-01', '2016-02-02', '2016-03-03', '53450000', '4', '0');
INSERT INTO Issue (title, type, priority, status, projectReleaseId, assigneeId, createTime, dueDate, lastUpdateDate, estimateTime, parentId, isDeleted)
VALUES ('Issue5', 'TASK', 'BLOCKER', 'OPEN', '4', '4', '2016-01-01', '2016-02-02', '2016-03-03', '56450000', '5', '0');
