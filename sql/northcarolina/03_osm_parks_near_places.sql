-- Query 3: Parks Within 1 km of Populated Places
-- Purpose: Identify parks located near populated places using proximity analysis

-- Requirements:
-- - Use pois for parks and places_a for populated places
-- - Filter POIs where fclass = 'park'
-- - Use ST_DWithin with a distance of 1000 meters
-- - Count distinct parks

-- Expected Output:
-- - parks_near_places

SELECT
    COUNT(DISTINCT p.*) AS parks_near_places
FROM
    pois p
JOIN places_a pl
    ON ST_DWithin(p.geom, pl.geom, 1000)
WHERE
    p.fclass = 'park';