# [OSM and PostGIS Spatial Analysis]

**Student:** [Elizabeth Parks]
**Course:** GIST 604B – Open Source GIS
**Module:** [MODULE #5 OSM and PostGIS Spatial Analysis]
**University of Arizona**

## Project Description
This project focused on building a full spatial analysis workflow using OpenStreetMap data with Postgis and Python. I created and managed a PostGIS database, loaded real-world OSM spatial data, and write and tested SQL queries to perform spatial analyses. These results were executed and inspected through a jupyter notebook to support interpretation and visualization, with the workflow adapted to a new geographic area of choice.

## Tools and Technologies
- OpenStreetMaps
- PostgreSQL with PostGIS
- Python
- Jupyter notebooks
- SQL queries
- Docker

  ## What I did
  - Setup OSM and design 3 SQL queries.
  - Setup the database and configure the notebook environment.
  - Execute SQL queries through Jupyter notebooks and created visualizations and interpretations for each.
 
  ## How to View / Run
  - Connect to the PostGIS database 'nc-connection'.
  - Run the spatial analyses.
  - Run each cell in the notebook to execute SQl queries, visualize results, and view interpretations.

## Repository Structure

    .
    ├── .devcontainer/
    │   ├── Dockerfile
    │   └── devcontainer.json
    ├── notebooks/
    │   ├── setup_osm_postgis.ipynb
    │   └── osm_postgis_queries.ipynb
    ├── sql/
    │   └── arizona/
    │       ├── 01_osm_restaurant_distribution.sql
    │       ├── 02_osm_park_area_by_county.sql
    │       ├── 03_osm_restaurants_near_streets.sql
    │       ├── 04_osm_railway_density_by_county.sql
    │       └── 05_osm_county_amenity_synthesis.sql
    ├── src/
    │   └── setup_osm_postgis.py
    ├── docker-compose.yml
    ├── pyproject.toml
    ├── uv.lock
    └── README.md

## Notes

- Notebooks are for exploration and learning.
- sql/arizona folder contains sql scripts discussed in the lectures.
- Data is downloaded and prepared inside the Codespace environment and is not stored in this repository.
- The database runs in a separate PostGIS container using Docker.
