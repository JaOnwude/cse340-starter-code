-- Data for table `account`
INSERT INTO public.account (
        account_firstname,
        account_lastname,
        account_email,
        account_password
    )
VALUES (
        'Tony',
        'Stark',
        'tony@starkent.com',
        'Iam1ronM@n'
    );
-- Update Tony Stark's account_type to "Admin"
UPDATE public.account
SET account_type = 'Admin'
WHERE 'account_email' = 'tony@starkent.com';
-- Delete Tony Stark's record
DELETE FROM public.account
WHERE 'account_email' = 'tony@starkent.com';
-- Update GM Hummer description: replace "small interiors" with "a huge interior"
UPDATE public.inventory
SET inv_description = REPLACE(
        inv_description,
        'small interiors',
        'a huge interior'
    )
WHERE inv_make = 'GM'
    AND inv_model = 'Hummer';
-- Inner join: select make, model, and classification name for "Sport"
SELECT inv_make,
    inv_model,
    classification_name
FROM public.inventory
    INNER JOIN classification ON inventory.classification_id = classification.classification_id
WHERE classification_name = 'Sport';
-- Update file paths in inv_image and inv_thumbnail to include "/vehicles"
UPDATE public.inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');