WITH rawhosts AS (
    SELECT * FROM AIRBNB.RAW.RAW_HOSTS
)
SELECT
    id AS hosts_id,
    name AS hosts_name,
    is_superhost,
    created_at,
    updated_at
FROM rawhosts