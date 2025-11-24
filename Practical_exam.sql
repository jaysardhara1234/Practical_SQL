create database if not exists Practical_Exam;

use Practical_Exam;

create table venues (
Venue_ID int primary key ,
Venue_Name varchar(100),
Location varchar(100),
Capacity int
);

create table organizers (
Organiser_ID int primary key ,
Organiser_Name varchar(100),
Contact_Email varchar(100),
Phone_Number int 
);

create table attendes (
attendee_ID int primary key ,
Name varchar(100),
Email varchar(100),
Phone_Number int 
);

create table Events (
Event_ID int primary key ,
Event_Name varchar (100),
Event_Date date ,
Venue_ID int ,
foreign key (Venue_ID) references venues (Venue_ID),
Organiser_ID int ,
foreign key (Organiser_ID) references Organizers (Organiser_ID),
Ticket_Price int ,
Total_seats int ,
Available_seats int 
);

create table tickets (
Ticket_ID int primary key ,
Event_ID int ,
foreign key (Event_ID) references events (Event_ID),
attendee_ID int,
foreign key (attendee_ID) references attendes (attendee_ID),
Booking_Date date ,
Status varchar(100)
);

create table payments (
payment_ID int primary key ,
ticket_ID int ,
foreign key (ticket_ID) references tickets (ticket_ID),
Amount_paid int ,
payment_status varchar(100),
payment_date date 
);


INSERT INTO Venues (venue_id, venue_name, location, capacity) VALUES
(101, 'Grand Hall', 'Mumbai', 500),
(102, 'City Arena', 'Delhi', 800),
(103, 'Art Gallery Hall', 'Bangalore', 300),
(104, 'Summit Center', 'Hyderabad', 600),
(105, 'Innovation Hub', 'Chennai', 200),
(106, 'Expo Pavilion', 'Pune', 900),
(107, 'Food Plaza Grounds', 'Kolkata', 400),
(108, 'Tech Park Hall', 'Gurgaon', 700),
(109, 'AI Convention Center', 'Bangalore', 1200),
(110, 'Readers Auditorium', 'Jaipur', 1000),
(111, 'Comedy Club Theatre', 'Goa', 300),
(112, 'Dance Auditorium', 'Chandigarh', 350),
(113, 'HackHub Arena', 'Noida', 500),
(114, 'Cinema House', 'Coimbatore', 250),
(115, 'City Marathon Grounds', 'Ahmedabad', 2000);

INSERT INTO Organizers (organiser_id, organiser_name, contact_email, phone_number) VALUES
(201, 'EventMaster', 'eventmaster@gmail.com', '900111223'),
(202, 'MusicWave', 'musicwave@gmail.com', '900222334'),
(203, 'ArtCrew', 'artcrew@gmail.com', '900333445'),
(204, 'BizEvents', 'bizevents@gmail.com', '900444556'),
(205, 'StartupCircle', 'startupcircle@gmail.com', '900555667'),
(206, 'GameOn Events', 'gameon@gmail.com', '900666778'),
(207, 'FoodWorld', 'foodworld@gmail.com', '900777889'),
(208, 'RoboTech', 'robotech@gmail.com', '900888990'),
(209, 'AIGlobal', 'aiglobal@gmail.com', '900999001'),
(210, 'BookNerds', 'booknerds@gmail.com', '901000112'),
(211, 'LaughHouse', 'laughhouse@gmail.com', '901111223'),
(212, 'DanceClub', 'danceclub@gmail.com', '901222334'),
(213, 'HackathonX', 'hackathonx@gmail.com', '901333445'),
(214, 'FilmStudio', 'filmstudio@gmail.com', '901444556'),
(215, 'RunNation', 'runnation@gmail.com', '901555667');

INSERT INTO attendes (attendee_id, name, email, phone_number) VALUES
(301, 'Amit Rao', 'amit.rao@gmail.com', '987111223'),
(302, 'Sneha Patel', 'sneha.patel@gmail.com', '987222334'),
(303, 'Rohit Das', 'rohit.das@gmail.com', '987333445'),
(304, 'Mira Shah', 'mira.shah@gmail.com', '987444556'),
(305, 'Ajay Kumar', 'ajay.kumar@gmail.com', '987555667'),
(306, 'Sara Khan', 'sara.khan@gmail.com', '987666778'),
(307, 'Karan Mehta', 'karan.mehta@gmail.com', '987777889'),
(308, 'Pooja Verma', 'pooja.verma@gmail.com', '987888990'),
(309, 'Vikram Singh', 'vikram.singh@gmail.com', '987999001'),
(310, 'Priya Nair', 'priya.nair@gmail.com', '988000112'),
(311, 'Sanjay Pillai', 'sanjay.pillai@gmail.com', '988111223'),
(312, 'Nisha Roy', 'nisha.roy@gmail.com', '988222334'),
(313, 'Harish Gupta', 'harish.gupta@gmail.com', '988333445'),
(314, 'Divya Iyer', 'divya.iyer@gmail.com', '988444556'),
(315, 'Anil Joshi', 'anil.joshi@gmail.com', '988555667');

INSERT INTO Events (event_id, event_name, event_date, venue_id, organiser_id, ticket_price, total_seats, available_seats) VALUES
(1, 'Tech Expo 2025', '2025-01-10', 101, 201, 499, 300, 200),
(2, 'Music Fiesta', '2025-01-15', 102, 202, 899, 500, 420),
(3, 'Art Carnival', '2025-01-20', 103, 203, 299, 250, 140),
(4, 'Business Summit', '2025-02-01', 104, 204, 999, 400, 350),
(5, 'Startup Meetup', '2025-02-05', 105, 205, 199, 150, 90),
(6, 'Gaming Fest', '2025-02-12', 106, 206, 599, 600, 450),
(7, 'Food Festival', '2025-02-20', 107, 207, 149, 350, 300),
(8, 'Robotics Expo', '2025-02-25', 108, 208, 799, 500, 380),
(9, 'AI Conference', '2025-03-01', 109, 209, 1299, 800, 640),
(10, 'Book Fair', '2025-03-05', 110, 210, 99, 700, 600),
(11, 'Comedy Night', '2025-03-10', 111, 211, 499, 250, 180),
(12, 'Dance Show', '2025-03-15', 112, 212, 699, 300, 220),
(13, 'Coding Hackathon', '2025-03-20', 113, 213, 0, 200, 150),
(14, 'Film Screening', '2025-03-25', 114, 214, 349, 180, 120),
(15, 'Marathon 2025', '2025-03-30', 115, 215, 249, 1000, 900);

INSERT INTO Tickets (ticket_id, event_id, attendee_id, booking_date, status) VALUES
(401, 1, 301, '2025-01-01', 'Confirmed'),
(402, 2, 302, '2025-01-10', 'Pending'),
(403, 3, 303, '2025-01-18', 'Cancelled'),
(404, 4, 304, '2025-01-22', 'Confirmed'),
(405, 5, 305, '2025-02-01', 'Pending'),
(406, 6, 306, '2025-02-05', 'Confirmed'),
(407, 7, 307, '2025-02-12', 'Confirmed'),
(408, 8, 308, '2025-02-18', 'Pending'),
(409, 9, 309, '2025-02-25', 'Confirmed'),
(410, 10, 310, '2025-03-02', 'Cancelled'),
(411, 11, 311, '2025-03-05', 'Confirmed'),
(412, 12, 312, '2025-03-10', 'Pending'),
(413, 13, 313, '2025-03-15', 'Confirmed'),
(414, 14, 314, '2025-03-18', 'Pending'),
(415, 15, 315, '2025-03-25', 'Confirmed');

INSERT INTO Payments (payment_id, ticket_id, amount_paid, payment_status, payment_date) VALUES
(501, 401, 499, 'Success', '2025-01-01'),
(502, 402, 0, 'Pending', NULL),
(503, 403, 299, 'Failed', '2025-01-18'),
(504, 404, 999, 'Success', '2025-01-22'),
(505, 405, 0, 'Pending', NULL),
(506, 406, 599, 'Success', '2025-02-05'),
(507, 407, 149, 'Success', '2025-02-12'),
(508, 408, 0, 'Pending', NULL),
(509, 409, 1299, 'Success', '2025-02-25'),
(510, 410, 99, 'Failed', '2025-03-02'),
(511, 411, 499, 'Success', '2025-03-05'),
(512, 412, 0, 'Pending', NULL),
(513, 413, 0, 'Success', '2025-03-15'),
(514, 414, 349, 'Pending', NULL),
(515, 415, 249, 'Success', '2025-03-25');
 
-- Query 1 (CRUD) -- 

insert into venues value (116, 'Smart City', 'Guwahati', 350);

update venues 
set Venue_Name = 'Export Exhibition '
where Venue_ID = 106;

select * from venues ;

delete from venues where Venue_ID = 116;

-- Query 2 --

select v.Venue_ID , v.Venue_Name , v.Location from venues as v 
where Location = 'Mumbai';

select e.event_id,e.event_name,
SUM(p.amount_paid) as total_revenue
from Events e
inner join Tickets t ON e.event_id = t.event_id
inner join Payments p ON t.ticket_id = p.ticket_id
where p.payment_status = 'Success'
GROUP BY e.event_id, e.event_name
ORDER BY total_revenue DESC LIMIT 5;

select a.attendee_id,a.name,a.email,a.phone_number,t.ticket_id,t.booking_date,e.event_name
from Attendes a
inner join Tickets t ON a.attendee_id = t.attendee_id
inner join Events e ON t.event_id = e.event_id
WHERE t.booking_date >= CURRENT_DATE - INTERVAL 7 DAY
ORDER BY t.booking_date DESC;

-- Query 3 -- 

select e.Event_ID , e.Event_Name , e.Event_date , e.Available_seats from events as e
where e.Event_Date = '2025-12-01' and e.Available_Seats > (select Avg(e.Available_seats) from events );

select  a.attendee_id ,a.Name , t.ticket_ID from attendes as a 
inner join tickets as t on a.attendee_ID = t.Attendee_ID
where t.Status='Confirmed' or t.Status = 'Pending';

select event_id,event_name,total_seats,available_seats from Events 
WHERE available_seats > 0;


--  Query 4 --

select Event_ID,Event_Name , Event_Date  from events order by Event_date Asc;

select e.event_id,e.event_name,
COUNT(t.attendee_id) as attendee_count
from Events e
left join Tickets t on e.event_id = t.event_id
group by e.event_id,e.event_name
order by attendee_count desc;

select e.event_id,e.event_name,
SUM(p.amount_paid) AS total_revenue
from Events e
inner join Tickets t ON e.event_id = t.event_id
inner join Payments p ON t.ticket_id = p.ticket_id
where p.payment_status = 'Success'
group by e.event_id, e.event_name
order by total_revenue DESC;
 
 
-- Query 5 -- 

select sum(Amount_Paid) as Total_Revenue from payments ;

select e.event_id,e.event_name,
COUNT(t.attendee_id) as attendee_count
from Events e
inner join Tickets t on e.event_id = t.event_id
group by e.event_id,e.event_name
order by attendee_count DESC
LIMIT 1;

select avg(ticket_price) AS avg_ticket_price
FROM Events;

-- Query 6 -- 

-- Already Done -- 

-- Query 7 -- 

select e.Event_ID , e.Event_Name , v.Venue_Name , v.Location , v.Capacity from events as e
inner join venues as v on e.Venue_ID = v.Venue_ID;

SELECT a.attendee_id,a.name,a.email,t.ticket_id,t.booking_date,p.payment_status
FROM Attendes a
JOIN Tickets t ON a.attendee_id = t.attendee_id
LEFT JOIN Payments p ON t.ticket_id = p.ticket_id
WHERE p.payment_status IS NULL 
OR p.payment_status <> 'Success';

SELECT e.event_id,e.event_name,e.total_seats,e.available_seats
FROM Tickets t
RIGHT JOIN Events e ON t.event_id = e.event_id
WHERE t.ticket_id IS NULL;

select a.Name ,a.Email ,a.Phone_number , a.attendee_ID , t.booking_date , t.Status from attendes as a 
left join tickets as t on a.attendee_ID = t.attendee_ID
union
select a.Name ,a.Email ,a.Phone_number , a.attendee_ID,t.booking_date , t.Status from attendes as a 
right join tickets as t on a.attendee_ID = t.attendee_ID;

-- Query 9 --

select month(Event_Date) as Event_Month from events;

SELECT event_id,event_name,event_date,
DATEDIFF(event_date, CURRENT_DATE) AS days_remaining
FROM Events
WHERE event_date > CURRENT_DATE
ORDER BY event_date ASC;

select date_format(payment_Date , '%Y-%m-%d') as Formatted_date from payments;

-- Query 10 --

select upper(Organiser_name) as UPPERCASE_NAME from organizers;

select trim(Name) as Clean_name from attendes ;

select replace(Email,'Null', 'Not Provided') as Replaced_Email from attendes;

-- Query 11 --

SELECT e.event_id,e.event_name,t.ticket_id,t.attendee_id,t.booking_date,
COUNT(t.attendee_id) OVER (PARTITION BY e.event_id ORDER BY t.booking_date ) AS running_total_attendees
FROM Events e
JOIN Tickets t ON e.event_id = t.event_id
ORDER BY e.event_id, t.booking_date;

-- Query 12 --

select Event_name, Event_ID ,
case
when available_Seats <=300 then 'High Demand'
when available_Seats between 300 and 200 then 'Moderate Demand'
else 'Low Demand'
end as Seats_Demand
FROM events ;

select payment_ID ,
case 
when payment_status = 'Success' then 'Successfull'
when payment_status = 'Failed' then 'Failed'
else 'Pending'
end as Final_Status
from payments;


-- Project Over --
