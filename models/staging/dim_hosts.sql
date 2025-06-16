{{ config(materialized='table') }}

SELECT
    host_id,
    host_name,
    COUNT(*) AS total_listings
FROM {{ ref('stg_listings') }}
GROUP BY host_id, host_name