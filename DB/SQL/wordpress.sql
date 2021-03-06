-- Multi-Rating

SELECT
(
  SELECT group_concat(t.name SEPARATOR ', ')
  FROM wp_table_prefix_terms t
  LEFT JOIN wp_table_prefix_term_taxonomy tt ON t.term_id = tt.term_id
  LEFT JOIN wp_table_prefix_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
  WHERE tt.taxonomy = 'subject' AND p.ID = tr.object_id
) AS 'Disease',
p.post_title AS 'Video Post', CONCAT('https://www.example.com/video/', p.post_name) AS 'URL',
rating.description AS 'Rating', COUNT(*) 'Responded', SUM(value.value) AS 'Total Stars', ROUND(AVG(value.value),2) AS 'Average Stars'
FROM `wp_table_prefix_mr_rating_item_entry` AS entry
INNER JOIN `wp_table_prefix_posts` AS p ON p.ID = entry.post_id
INNER JOIN `wp_table_prefix_mr_rating_item_entry_value` AS value ON value.rating_item_entry_id = entry.rating_item_entry_id
INNER JOIN `wp_table_prefix_mr_rating_item` AS rating on rating.rating_item_id = value.rating_item_id
LEFT JOIN `wp_table_prefix_users` AS u ON u.ID = entry.user_id
WHERE
p.post_type = 'youtube_video' AND
p.post_status = 'publish'
GROUP BY rating.description, p.post_title
ORDER BY Disease ASC, entry.entry_date DESC;

SELECT
(
  SELECT group_concat(t.name SEPARATOR ', ')
  FROM wp_table_prefix_terms t
  LEFT JOIN wp_table_prefix_term_taxonomy tt ON t.term_id = tt.term_id
  LEFT JOIN wp_table_prefix_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
  WHERE tt.taxonomy = 'subject' AND p.ID = tr.object_id
) AS 'Disease',
p.post_title AS 'Video Post', CONCAT('https://www.example.com/video/', p.post_name) AS 'URL',
rating.description AS 'Rating Question', COUNT(*) 'Rated Count', SUM(value.value) AS 'Total Stars', ROUND(AVG(value.value),2) AS 'Average Stars', entry.entry_date AS 'Rated On', u.user_email AS 'User'
FROM `wp_table_prefix_mr_rating_item_entry` AS entry
INNER JOIN `wp_table_prefix_posts` AS p ON p.ID = entry.post_id
INNER JOIN `wp_table_prefix_mr_rating_item_entry_value` AS value ON value.rating_item_entry_id = entry.rating_item_entry_id
INNER JOIN `wp_table_prefix_mr_rating_item` AS rating on rating.rating_item_id = value.rating_item_id
LEFT JOIN `wp_table_prefix_users` AS u ON u.ID = entry.user_id
WHERE
p.post_type = 'youtube_video' AND
p.post_status = 'publish'
GROUP BY rating.description, p.post_title
ORDER BY Disease ASC, entry.entry_date DESC;

SELECT p.post_title AS 'Post', CONCAT('https://www.example.com/video/', p.post_name) AS 'URL',
(
  SELECT group_concat(t.name SEPARATOR ', ')
  FROM wp_table_prefix_terms t
  LEFT JOIN wp_table_prefix_term_taxonomy tt ON t.term_id = tt.term_id
  LEFT JOIN wp_table_prefix_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
  WHERE tt.taxonomy = 'subject' AND p.ID = tr.object_id
) AS 'Disease',
rating.description AS 'Rating', value.value AS 'Stars', entry.entry_date AS 'Rated On', u.user_email AS 'User'
FROM `wp_table_prefix_mr_rating_item_entry` AS entry
INNER JOIN `wp_table_prefix_posts` AS p ON p.ID = entry.post_id
INNER JOIN `wp_table_prefix_mr_rating_item_entry_value` AS value ON value.rating_item_entry_id = entry.rating_item_entry_id
INNER JOIN `wp_table_prefix_mr_rating_item` AS rating on rating.rating_item_id = value.rating_item_id
LEFT JOIN `wp_table_prefix_users` AS u ON u.ID = entry.user_id
WHERE
p.post_type = 'youtube_video' AND
p.post_status = 'publish'
ORDER BY Disease ASC, entry.entry_date DESC;
-- With Post Slug --
SELECT p.ID AS 'Post ID', p.post_title AS 'Title', p.post_name AS 'Slug', rating.description AS 'Rating', value.value AS 'Stars', entry.entry_date AS 'Rated On', u.user_email AS 'User'
FROM `wp_table_prefix_mr_rating_item_entry` AS entry
INNER JOIN `wp_table_prefix_posts` AS p ON p.ID = entry.post_id
INNER JOIN `wp_table_prefix_mr_rating_item_entry_value` AS value ON value.rating_item_entry_id = entry.rating_item_entry_id
INNER JOIN `wp_table_prefix_mr_rating_item` AS rating on rating.rating_item_id = value.rating_item_id
LEFT JOIN `wp_table_prefix_users` AS u ON u.ID = entry.user_id
WHERE
p.post_type = 'youtube_video' AND
p.post_status = 'publish'
ORDER BY p.ID DESC, entry.entry_date DESC;

SELECT p.ID AS 'Post ID', p.post_title AS 'Title', rating.description AS 'Rating', value.value AS 'Stars', entry.entry_date AS 'Rated On', u.user_email AS 'User'
FROM `wp_table_prefix_mr_rating_item_entry` AS entry
INNER JOIN `wp_table_prefix_posts` AS p ON p.ID = entry.post_id
INNER JOIN `wp_table_prefix_mr_rating_item_entry_value` AS value ON value.rating_item_entry_id = entry.rating_item_entry_id
INNER JOIN `wp_table_prefix_mr_rating_item` AS rating on rating.rating_item_id = value.rating_item_id
LEFT JOIN `wp_table_prefix_users` AS u ON u.ID = entry.user_id WHERE 1 ORDER BY p.ID DESC, entry.entry_date DESC;

SELECT p.ID AS 'Post ID', p.post_title AS 'Title', rating.description AS 'Rating', value.value AS 'Stars', entry.entry_date AS 'Rated On', u.user_email AS 'User'
FROM `o_vj_mr_rating_item_entry` AS entry
INNER JOIN `o_vj_posts` AS p ON p.ID = entry.post_id
INNER JOIN `o_vj_mr_rating_item_entry_value` AS value ON value.rating_item_entry_id = entry.rating_item_entry_id
INNER JOIN `o_vj_mr_rating_item` AS rating on rating.rating_item_id = value.rating_item_id
LEFT JOIN `o_vj_users` AS u ON u.ID = entry.user_id WHERE 1 ORDER BY p.ID DESC, entry.entry_date DESC;

-- https://wordpress.stackexchange.com/questions/169863/custom-sql-query-get-all-posts-with-category-id-and-a-concated-list-of-tags-on/263221

-- # AML Videos

-- Get AML term ID
SELECT tt.*, t.* FROM wp_term_taxonomy AS tt
INNER JOIN wp_terms AS t on t.term_id = tt.term_id
WHERE tt.taxonomy = 'subject'; -- AML = term_id 185

-- Get AML video data and tags
SELECT DISTINCT
	wp_terms.name AS 'Disease',
      p.ID AS 'ID',
      p.post_title AS 'Video',
      p.post_date AS 'Date',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'speaker' AND p.ID = tr.object_id
      ) AS Speaker,
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'event' AND p.ID = tr.object_id
      ) AS 'Event',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'format' AND p.ID = tr.object_id
      ) AS 'Format',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'subject' AND p.ID = tr.object_id
      ) AS 'Disease',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'medicines' AND p.ID = tr.object_id
      ) AS Medicines,
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'trial' AND p.ID = tr.object_id
      ) AS Trials,
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'field' AND p.ID = tr.object_id
      ) AS Fields,
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'institution' AND p.ID = tr.object_id
      ) AS 'Institutions',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'general-tags' AND p.ID = tr.object_id
      ) AS 'General Tags'
    FROM wp_posts p
    LEFT JOIN wp_term_relationships ON p.ID = wp_term_relationships.object_ID
	LEFT JOIN wp_terms ON wp_terms.term_id = wp_term_relationships.term_taxonomy_id
	WHERE
    wp_terms.term_id = 185 AND
    p.post_type = 'youtube_video' AND
    p.post_status = 'publish' AND
    p.post_date BETWEEN CAST('2020-01-01' AS DATE) AND CAST('2021-01-01' AS DATE)
    ORDER BY p.post_date DESC; -- wp_terms.term_id = 185 (AML)

-- # ALL Videos Report

-- Get ALL term ID
SELECT tt.*, t.* FROM wp_term_taxonomy AS tt
INNER JOIN wp_terms AS t on t.term_id = tt.term_id
WHERE tt.taxonomy = 'subject'; -- AML = term_id 39

-- Get ALL video data and tags
SELECT DISTINCT
	wp_terms.name AS 'Disease',
      p.ID AS 'ID',
      p.post_title AS 'Video',
      p.post_date AS 'Date',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'speaker' AND p.ID = tr.object_id
      ) AS Speaker,
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'event' AND p.ID = tr.object_id
      ) AS 'Event',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'format' AND p.ID = tr.object_id
      ) AS 'Format',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'subject' AND p.ID = tr.object_id
      ) AS 'Disease',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'medicines' AND p.ID = tr.object_id
      ) AS Medicines,
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'trial' AND p.ID = tr.object_id
      ) AS Trials,
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'field' AND p.ID = tr.object_id
      ) AS Fields,
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'institution' AND p.ID = tr.object_id
      ) AS 'Institutions',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'general-tags' AND p.ID = tr.object_id
      ) AS 'General Tags'
    FROM wp_posts p
    LEFT JOIN wp_term_relationships ON p.ID = wp_term_relationships.object_ID
	LEFT JOIN wp_terms ON wp_terms.term_id = wp_term_relationships.term_taxonomy_id
	WHERE
    wp_terms.term_id = 39 AND
    p.post_type = 'youtube_video' AND
    p.post_status = 'publish' AND
    p.post_date BETWEEN CAST('2020-01-01' AS DATE) AND CAST('2021-01-01' AS DATE)
    ORDER BY p.post_date DESC; -- wp_terms.term_id = 39 (ALL)

-- # Transplantatiom Videos

-- Get Transplantation term ID
SELECT tt.*, t.* FROM wp_term_taxonomy AS tt
INNER JOIN wp_terms AS t on t.term_id = tt.term_id
WHERE tt.taxonomy = 'field'; -- Transplantation = term_id 25

-- Get Transplantation video data and tags
SELECT DISTINCT
	wp_terms.name AS 'Field',
      p.ID AS 'ID',
      p.post_title AS 'Video',
      p.post_date AS 'Date',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'speaker' AND p.ID = tr.object_id
      ) AS Speaker,
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'event' AND p.ID = tr.object_id
      ) AS 'Event',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'format' AND p.ID = tr.object_id
      ) AS 'Format',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'subject' AND p.ID = tr.object_id
      ) AS 'Disease',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'medicines' AND p.ID = tr.object_id
      ) AS Medicines,
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'trial' AND p.ID = tr.object_id
      ) AS Trials,
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'field' AND p.ID = tr.object_id
      ) AS Fields,
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'institution' AND p.ID = tr.object_id
      ) AS 'Institutions',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'general-tags' AND p.ID = tr.object_id
      ) AS 'General Tags'
    FROM wp_posts p
    LEFT JOIN wp_term_relationships ON p.ID = wp_term_relationships.object_ID
	LEFT JOIN wp_terms ON wp_terms.term_id = wp_term_relationships.term_taxonomy_id
	WHERE
    wp_terms.term_id = 25 AND
    p.post_type = 'youtube_video' AND
    p.post_status = 'publish' AND
    p.post_date BETWEEN CAST('2020-01-01' AS DATE) AND CAST('2021-01-01' AS DATE)
    ORDER BY p.post_date DESC; -- wp_terms.term_id = 25 (Transplantation)

-- # Lung Cancer Videos

-- Get Lung Cancer term ID
SELECT tt.*, t.* FROM wp_term_taxonomy AS tt
INNER JOIN wp_terms AS t on t.term_id = tt.term_id
WHERE tt.taxonomy = 'subject'; -- Lung Cancer = term_id 58

-- Get Lung Cancer video data and tags
SELECT DISTINCT
	wp_terms.name AS 'Disease',
      p.ID AS 'ID',
      p.post_title AS 'Video',
      p.post_date AS 'Date',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'speaker' AND p.ID = tr.object_id
      ) AS Speaker,
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'event' AND p.ID = tr.object_id
      ) AS 'Event',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'format' AND p.ID = tr.object_id
      ) AS 'Format',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'subject' AND p.ID = tr.object_id
      ) AS 'Disease',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'medicines' AND p.ID = tr.object_id
      ) AS Medicines,
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'trial' AND p.ID = tr.object_id
      ) AS Trials,
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'field' AND p.ID = tr.object_id
      ) AS Fields,
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'institution' AND p.ID = tr.object_id
      ) AS 'Institutions',
      (
        SELECT group_concat(t.name SEPARATOR ', ')
        FROM wp_terms t
        LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
        LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
        WHERE tt.taxonomy = 'general-tags' AND p.ID = tr.object_id
      ) AS 'General Tags'
    FROM wp_posts p
    LEFT JOIN wp_term_relationships ON p.ID = wp_term_relationships.object_ID
	LEFT JOIN wp_terms ON wp_terms.term_id = wp_term_relationships.term_taxonomy_id
	WHERE
    wp_terms.term_id = 58 AND
    p.post_type = 'youtube_video' AND
    p.post_status = 'publish' AND
    p.post_date BETWEEN CAST('2020-01-01' AS DATE) AND CAST('2021-01-01' AS DATE)
    ORDER BY p.post_date DESC; -- wp_terms.term_id = 58 (Lung Cancer)
