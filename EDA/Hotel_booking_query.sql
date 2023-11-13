select * from hotel_booking;

update hotel_booking
set adults=2
where adults>10;

select hotel,arrival_date_month,arrival_date_year,count(*) as total_booking,
sum(total_people) as total_people,sum(is_canceled) as total_cancel
from hotel_booking
group by (hotel,arrival_date_month,arrival_date_year);

select count(*)as num_booking,sum(is_canceled)as num_cancel,
market_segment,distribution_channel,customer_type
from hotel_booking
group by (market_segment,distribution_channel,customer_type);

select hotel,arrival_date_month,arrival_date_year,
count(*) as num_booking, sum(is_canceled) as num_cancel,
distribution_channel,customer_type
from hotel_booking
group by(hotel,arrival_date_month,arrival_date_year,market_segment,distribution_channel,customer_type);

select hotel,country,arrival_date_month,count(*) as num_booking,sum(is_canceled)as num_cancel,
distribution_channel,sum(required_car_parking_spaces) as total_parking,
sum(total_of_special_requests) as total_special_request
from hotel_booking
group by(country,hotel,arrival_date_month,distribution_channel);