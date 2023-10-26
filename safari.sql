



CREATE TABLE (
	id SERIAL PRIMARY KEY
	name "Tony",
	"type": "Tiger",
	"age": 59,
	"enclosure_id": 1
);

// enclosure

{
	"id": 1,
	"name": "big cat field",
	"capacity": 20,
	"closedForMaintenance": false
}

// staff

{
	"id": 1,
	"name": "Captain Rik",
	"employeeNumber": 12345,
}

// assignment

{
	"id": 1,
	"employeeId": 1,
	"enclosureId": 1,
	"day": "Tuesday"
}