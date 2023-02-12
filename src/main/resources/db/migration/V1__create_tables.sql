create schema core;

create table core.room(id int not null auto_increment, name varchar, capacity int, floor int, primary key (id));

create table core.employee(id int not null auto_increment, name varchar, team varchar, constraint pk_employee primary key (id));

create table core.reservation(id int not null auto_increment, room_id int, start_time varchar, end_time varchar, floor int,
purpose varchar, members int, employee_id int, charges long, confirm boolean default false, constraint pk_reservation primary key (id),
constraint fk_room_id_room foreign key (room_id) references Room (id), constraint fk_employee_id_employee
foreign key (employee_id) references Employee (id));