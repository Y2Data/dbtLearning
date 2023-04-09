{{
    config(
        materialized = 'incremental',
        on_schema_change = 'fail'
    )
}}
WITH src_reviews AS (
    SELECT * FROM {{ ref("src_reviews") }}
)
SELECT 
    listing_id,
    review_date,
    review_text,
    review_sentiment
FROM src_reviews
WHERE review_text IS NOT NULL
{% if is_incremental() %}
    AND review_date > (SELECT MAX(review_date) FROM {{ this }})
{% endif %}