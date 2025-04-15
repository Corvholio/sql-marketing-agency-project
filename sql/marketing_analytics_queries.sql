-- 1. Which clients bring in the most revenue (excluding cancelled invoices)?
-- 1. Top-Spending Clients (Excluding Cancelled Invoices)
SELECT 
    clients_table.company_name,
    ROUND(SUM(invoices_table.amount_due), 2) AS total_spent
FROM invoices_table
JOIN campaigns_table ON invoices_table.campaign_id = campaigns_table.campaign_id
JOIN clients_table ON campaigns_table.client_id = clients_table.client_id
WHERE invoices_table.status != 'cancelled'
GROUP BY clients_table.company_name
ORDER BY total_spent DESC
LIMIT 10;

-- 2. How many ads have been created on each ad platform?
-- 2. Number of Ads per Platform
SELECT
    COUNT(ads_table.ad_id) AS ads_ran,
    ad_platforms_table.platform_name,
    ad_platforms_table.category
FROM ads_table
JOIN ad_platforms_table ON ads_table.platform_id = ad_platforms_table.platform_id
GROUP BY ad_platforms_table.platform_name, ad_platforms_table.category
ORDER BY ads_ran DESC;

-- 3. How many ads were created on each platform in the last 12 months?
-- 3. Ads per Platform (Last 12 Months)
SELECT 
    COUNT(ads_table.ad_id) AS ads_ran,
    ad_platforms_table.platform_name,
    MIN(ads_table.created_at) AS first_created_date
FROM ads_table
JOIN ad_platforms_table ON ads_table.platform_id = ad_platforms_table.platform_id
WHERE ads_table.created_at >= DATE('now', '-12 months')
GROUP BY ad_platforms_table.platform_name
ORDER BY ads_ran DESC;

-- 4. Which clients had the most ads created, and on which platforms?
-- 4. Ad Volume by Client and Platform
SELECT
    clients_table.company_name,
    ad_platforms_table.platform_name,
    COUNT(ads_table.ad_id) AS ads_ran
FROM ads_table
JOIN campaigns_table ON ads_table.campaign_id = campaigns_table.campaign_id
JOIN clients_table ON campaigns_table.client_id = clients_table.client_id
JOIN ad_platforms_table ON ads_table.platform_id = ad_platforms_table.platform_id
GROUP BY clients_table.company_name, ad_platforms_table.platform_name
ORDER BY ads_ran DESC;

