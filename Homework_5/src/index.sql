CREATE INDEX "companies_user_id_foreign"
ON "companies" ("user_id");

CREATE INDEX "companies_state_index"
ON "companies" ("state");

ALTER TABLE companies
ADD CONSTRAINT companies_user_id_foreign
FOREIGN KEY (user_id)
REFERENCES common.users(id)
ON DELETE SET NULL



ALTER TABLE companies_messages ADD PRIMARY KEY (campaign_id, message_id);

CREATE INDEX "companies_messages_message_id_foreign"
ON "companies_messages" ("message_id");

ALTER TABLE companies_messages
ADD CONSTRAINT companies_messages_campaign_id_foreign
FOREIGN KEY (campaign_id)
REFERENCES companies.companies(id)
ON DELETE CASCADE;

ALTER TABLE companies_messages
ADD CONSTRAINT companies_messages_message_id_foreign
FOREIGN KEY (message_id)
REFERENCES common.messages(id)
ON DELETE CASCADE;



ALTER TABLE phone_numbers_companies ADD PRIMARY KEY (phone_number_id, campaign_id);

CREATE INDEX "phone_numbers_companies_campaign_id_foreign"
ON "phone_numbers_companies" ("campaign_id");

ALTER TABLE phone_numbers_companies
ADD CONSTRAINT phone_numbers_companies_campaign_id_foreign
FOREIGN KEY (campaign_id)
REFERENCES companies.companies(id)
ON DELETE CASCADE;

ALTER TABLE phone_numbers_companies
ADD CONSTRAINT phone_numbers_companies_phone_number_id_foreign
FOREIGN KEY (phone_number_id)
REFERENCES phone_numbers.phone_numbers(id)
ON DELETE CASCADE;



ALTER TABLE phone_numbers_groups ADD PRIMARY KEY (phone_number_id, group_id);

CREATE INDEX "phone_numbers_groups_group_id_foreign"
ON "phone_numbers_groups" ("group_id");

ALTER TABLE phone_numbers_groups
ADD CONSTRAINT phone_numbers_groups_group_id_foreign
FOREIGN KEY (group_id)
REFERENCES common.groups(id)
ON DELETE CASCADE;

ALTER TABLE phone_numbers_groups
ADD CONSTRAINT phone_numbers_groups_phone_number_id_foreign
FOREIGN KEY (phone_number_id)
REFERENCES phone_numbers.phone_numbers(id)
ON DELETE CASCADE;



ALTER TABLE role_permission ADD PRIMARY KEY (role_id, permission_slug);

ALTER TABLE role_permission
ADD CONSTRAINT role_permission_role_id_foreign
FOREIGN KEY (role_id)
REFERENCES roles.roles(id)
ON DELETE CASCADE;



ALTER TABLE role_user ADD PRIMARY KEY (role_id, user_id);

CREATE INDEX "role_user_user_id_foreign"
ON "role_user" ("user_id");

ALTER TABLE role_user
ADD CONSTRAINT role_user_role_id_foreign
FOREIGN KEY (role_id)
REFERENCES roles.roles(id)
ON DELETE CASCADE;

ALTER TABLE role_user
ADD CONSTRAINT role_user_user_id_foreign
FOREIGN KEY (user_id)
REFERENCES common.users(id)
ON DELETE CASCADE;


CREATE UNIQUE INDEX sms_uuid_unique
ON sms (uuid);

CREATE INDEX "sms_user_id_foreign"
ON "sms" ("user_id");

CREATE INDEX "sms_to_index"
ON "sms" ("to");

CREATE INDEX "sms_message_index"
ON "sms" ("message");

ALTER TABLE sms
ADD CONSTRAINT sms_user_id_foreign
FOREIGN KEY (user_id)
REFERENCES common.users(id)
ON DELETE SET NULL;


CREATE UNIQUE INDEX users_email_unique
ON users (email);



