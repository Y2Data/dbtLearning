WITH rawreviews AS (
    SELECT
        * 
    FROM 
        AIRBNB.RAW.RAW_REVIEWS
)
SELECT
    listing_id,
    DATE AS review_date,
    comments AS review_text,
    sentiment AS review_sentiment
FROM rawreviews