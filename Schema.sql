Drop table campaign
Drop table contacts
Drop table category
Drop table subcategory
Create table contacts(
contact_id integer Primary Key,
first_name varchar,
last_name varchar,
email varchar
)
Create table campaign(
cf_id integer Primary Key,
contact_id integer,
company_name varchar,
description varchar,
goal real,
pledged real,
outcome varchar,
backers_count real,
country varchar,
currency varchar,
launched_date date,
end_date date,
category_id varchar,
subcategory_id varchar,
Foreign Key (category_id) references category(category_id),
Foreign Key (subcategory_id) references subcategory(subcategory_id),
Foreign Key (contact_id) references contacts(contact_id)
)
Create table category(
category_id varchar Primary Key,
categories varchar
)
Create table subcategory(
subcategory_id varchar Primary Key,
subcategories varchar
)