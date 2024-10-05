USE sqllearning;
SELECT * FROM smartphones_cleaned_v6;

SELECT model,battery_capacity,os FROM smartphones_cleaned_v6;

-- ----------------------------------------- Alias ------------------------------------------------------------------------------------------
SELECT os AS "Operating System" ,model,battery_capacity AS mAH FROM smartphones_cleaned_v6;
-- ------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------- Mathematical Function ---------------------------------------------------------------------------------
SELECT model , SQRT(resolution_width*resolution_width + resolution_height*resolution_height)/screen_size as "ppi" FROM smartphones_cleaned_v6;
-- ------------------------------------------------------------------------------------------------------------------------------------------
-- ----------------------------------Constants ----------------------------------------------------------------------------------------------

SELECT model,"smartphone" AS "type" FROM smartphones_cleaned_v6;
-- ---------------------------------- Distinct ------------------------------------------------------------------------------------------------
SELECT DISTINCT (brand_name) AS "all_brands" FROM  smartphones_cleaned_v6;

SELECT DISTINCT (processor_brand) AS "processor_name" FROM smartphones_cleaned_v6;
-- -------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------Distinct combinations + Where -----------------------------------------------------------------------------
SELECT DISTINCT brand_name,processor_brand from smartphones_cleaned_v6 WHERE brand_name="samsung";
-- --------------------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM smartphones_cleaned_v6 WHERE brand_name="samsung";

SELECT * FROM smartphones_cleaned_v6 WHERE price > 60000 AND brand_name="samsung" ;
-- ---------------------------------------------------------------------------------------------------------------------------------------------

