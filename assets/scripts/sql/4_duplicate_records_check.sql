/*

# 4. Duplicate records check

-- 1. Check for duplicate rows in the view
-- 2. Group by the channel name
-- 3. Filter for groups with more than one row

*/


-- 1.
SELECT
    Channel_Name,
    COUNT(*) AS duplicate_count
FROM
    view_uk_youtube_data

-- 2.
GROUP BY
    Channel_Name

-- 3.
HAVING
    COUNT(*) > 1;