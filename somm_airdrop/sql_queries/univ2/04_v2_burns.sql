BEGIN

CREATE TABLE uniswap_v2_burns AS (
SELECT uniswap_v2_burns_without_sender.*, from_address
FROM `bigquery-public-data.crypto_ethereum.transactions` AS transactions
    JOIN uniswap_v2_burns_without_sender ON transactions.hash = uniswap_v2_burns_without_sender.transaction_hash
);

-- END;