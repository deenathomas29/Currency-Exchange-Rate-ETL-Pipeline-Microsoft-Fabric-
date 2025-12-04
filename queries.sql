SELECT *
FROM fx_rates_history
ORDER BY date DESC, target_currency
LIMIT 10;

SELECT 
  COUNT(*) AS num_rows,
  COUNT(DISTINCT date) AS num_dates,
  MIN(date) AS min_date,
  MAX(date) AS max_date,
  MIN(rate) AS min_rate,
  MAX(rate) AS max_rate,
  AVG(rate) AS avg_rate
FROM fx_rates_history;

SELECT target_currency, rate, date
FROM fx_rates_history
ORDER BY rate ASC
LIMIT 10;

SELECT target_currency, rate, date
FROM fx_rates_history
ORDER BY rate DESC
LIMIT 10;

SHOW TABLES;
