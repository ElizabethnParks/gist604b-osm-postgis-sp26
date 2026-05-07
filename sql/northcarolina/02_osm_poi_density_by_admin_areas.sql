-- Query 2: POI Density by Administrative Areas
-- Purpose: Calculate number of POIs within each administrative area for spatial density analysis

-- Requirements:
-- - Use pois for point features
-- - Use adminareas_a for administrative boundaries
-- - Spatially join POIs to admin areas
-- - Aggregate POI counts per admin area
-- - Return geometry column as "geom" for GeoPandas compatibility

-- Expected Output:
-- - name (admin area name)
-- - poi_count
-- - geom (administrative boundary geometry)

SELECT
    a.name,
    COUNT(p.geom) AS poi_count,
    a.geom AS geom
FROM
    adminareas_a a
LEFT JOIN
    pois p
ON
    ST_Intersects(p.geom, a.geom)
GROUP BY
    a.name, a.geom
ORDER BY
    poi_count DESC;