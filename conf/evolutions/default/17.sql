# --- !Ups
ALTER TABLE webhook ADD COLUMN send_all_cases tinyint(1) default 0;
CREATE INDEX ix_webhook_send_all_cases ON webhook (send_all_cases);

# --- !Downs
ALTER TABLE webhook DROP COLUMN send_all_cases;