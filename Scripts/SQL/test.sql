SELECT 
  date_trunc('hour', block_timestamp) as hour,
  count(distinct tx_hash) as tx_count
FROM ethereum.core.fact_transactions 
WHERE block_timestamp >= GETDATE() - interval'7 days'
GROUP BY 1
