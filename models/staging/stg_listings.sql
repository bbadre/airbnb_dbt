{{ config(materialized='view') }}

SELECT
    id AS listing_id,
    name AS listing_name,
    host_id,
    host_name,
    neighbourhood,
    room_type,
    CAST(price AS NUMBER) AS price,
    CAST(minimum_nights AS INT) AS minimum_nights,
    CAST(availability_365 AS INT) AS availability_365
FROM {{ source('google_sheets', 'listings_sample') }}
