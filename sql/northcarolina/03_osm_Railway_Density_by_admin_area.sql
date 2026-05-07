-- Query 3: Railway Density by Administrative Areas
-- Purpose: Calculate railway density (km per sq km) within each administrative area using clipped geometry

-- Requirements:
-- - Use adminareas_a for administrative boundaries
-- - Use railways for line features
-- - Use ST_Intersects to identify overlapping features
-- - Use ST_Intersection to clip railways to admin boundaries
-- - Use ST_Length(geom::geography) for accurate length calculation
-- - Convert meters to kilometers (divide by 1,000)
-- - Use ST_Area(geom::geography) for area calculation
-- - Convert square meters to square kilometers (divide by 1,000,000)
-- - Use a CTE for intermediate calculations
-- - Compute railway density = total_rail_length_km / area_sq_km
-- - Return geom for GeoPandas compatibility

-- Expected Output:
-- - admin_area
-- - total_rail_length_km
-- - area_sq_km
-- - rail_density_km_per_sq_km
-- - geom

WITH admin_rail_metrics AS (
    SELECT
        a.name AS admin_area,
        SUM(
            ST_Length(
                ST_Intersection(r.geom, a.geom)::geography
            )
        ) / 1000 AS total_rail_length_km,
        ST_Area(a.geom::geography) / 1000000 AS area_sq_km,
        a.geom
    FROM
        adminareas_a a
    JOIN
        railways r
        ON ST_Intersects(a.geom, r.geom)
    GROUP BY
        a.name, a.geom
)

SELECT
    admin_area,
    total_rail_length_km,
    area_sq_km,
    total_rail_length_km / area_sq_km AS rail_density_km_per_sq_km,
    geom
FROM
    admin_rail_metrics
ORDER BY
    rail_density_km_per_sq_km DESC;