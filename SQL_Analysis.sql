1.what is the average price by brand?
SELECT brand_name, ROUND(AVG(price), 2) AS avg_price
FROM smartphones_cleaned_dataset.smartphones_cleaned_dataset
GROUP BY brand_name
ORDER BY avg_price DESC;

2.How can we correlate Price vs rating with the brand name?
SELECT price, rating, brand_name
FROM smartphones_cleaned_dataset.smartphones_cleaned_dataset
WHERE rating IS NOT NULL;

3.Whether fast charging available or not by brand name and model?
SELECT brand_name, model, COUNT(*) AS models_with_fast_charging
FROM smartphones_cleaned_dataset.smartphones_cleaned_dataset
WHERE fast_charging_available = 'Yes'
GROUP BY brand_name, model
ORDER BY models_with_fast_charging DESC;

4.What is the average rear and front camera megapixels by brand?
SELECT brand_name, 
       ROUND(AVG(primary_camera_rear), 1) AS avg_rear_camera,
       ROUND(AVG(primary_camera_front), 1) AS avg_front_camera
FROM smartphones_cleaned_dataset.smartphones_cleaned_dataset
GROUP BY brand_name
ORDER BY avg_rear_camera DESC;

5.How can we describe the screen resolution trends?
SELECT resolution_width, resolution_height, COUNT(*) AS model_count
FROM smartphones_cleaned_dataset.smartphones_cleaned_dataset
GROUP BY resolution_width, resolution_height
ORDER BY model_count DESC;

6.wWhat are the top processor brands by average speed?
SELECT processor_brand, ROUND(AVG(processor_speed), 2) AS avg_speed
FROM smartphones_cleaned_dataset.smartphones_cleaned_dataset
GROUP BY processor_brand
ORDER BY avg_speed DESC;

7.Is fast charging available with the battery capacity?
SELECT battery_capacity, fast_charging_available, COUNT(*) AS count
FROM smartphones_cleaned_dataset.smartphones_cleaned_dataset
GROUP BY battery_capacity, fast_charging_available
ORDER BY count DESC;

8. Which are the top 10 rated models by brand?
SELECT brand_name, model, rating
FROM smartphones_cleaned_dataset.smartphones_cleaned_dataset
WHERE rating IS NOT NULL
ORDER BY rating DESC
LIMIT 10;

9.How does processor speed affect pricing across brands?
SELECT brand_name, ROUND(AVG(processor_speed), 2) AS avg_speed, ROUND(AVG(price), 2) AS avg_price
FROM smartphones_cleaned_dataset.smartphones_cleaned_dataset
GROUP BY brand_name
ORDER BY avg_speed DESC;

10.Most popular rear and front camera setups?
SELECT num_rear_cameras, num_front_cameras, COUNT(*) AS model_count
FROM smartphones_cleaned_dataset.smartphones_cleaned_dataset
GROUP BY num_rear_cameras, num_front_cameras
ORDER BY model_count DESC;

11.Which brands  and which model offer the fastest charging speeds?
SELECT brand_name, model, MAX(battery_capacity) AS max_charging_speed
FROM smartphones_cleaned_dataset.smartphones_cleaned_dataset
GROUP BY brand_name, model 
ORDER BY max_charging_speed DESC;

12.What are the most common RAM and internal memory combinations?
SELECT ram_capacity, internal_memory, COUNT(*) AS model_count
FROM smartphones_cleaned_dataset.smartphones_cleaned_dataset
GROUP BY ram_capacity, internal_memory
ORDER BY model_count DESC;

13.Which models offer top-tier specifications across processor, RAM, and camera?
SELECT brand_name, model, processor_speed, ram_capacity, primary_camera_rear
FROM smartphones_cleaned_dataset.smartphones_cleaned_dataset
WHERE processor_speed >= 2.8 AND ram_capacity >= 8 AND primary_camera_rear >= 64
ORDER BY processor_speed DESC, ram_capacity DESC;

14.What model of which brand offer the highest expandable memory?
SELECT brand_name, model, MAX(extended_upto) AS max_expandable_memory
FROM smartphones_cleaned_dataset.smartphones_cleaned_dataset
WHERE extended_memory_available = 'Yes'
GROUP BY brand_name, model 
ORDER BY max_expandable_memory DESC;

15.What are the top-rated models under 20000
SELECT brand_name, model, price, rating
FROM smartphones_cleaned_dataset.smartphones_cleaned_dataset
WHERE price < 20000 AND rating >= 4.0
ORDER BY rating DESC, price ASC;
