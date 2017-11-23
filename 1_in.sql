create table tbl_1in (
cnum varchar(9) not null,
year1_in datetime default now(),
video1_in boolean default 0 not null,
guide1_in boolean default 0 not null,
tukgang1_in boolean default 0 not null,
jindan1_in boolean default 0 not null,
primary key(cnum)
);