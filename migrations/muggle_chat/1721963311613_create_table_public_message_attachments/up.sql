CREATE TABLE "public"."message_attachments" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "message_id" uuid NOT NULL, "file_path" text NOT NULL, "file_type" text, "created_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("id") , FOREIGN KEY ("message_id") REFERENCES "public"."messages"("id") ON UPDATE no action ON DELETE cascade);
CREATE EXTENSION IF NOT EXISTS pgcrypto;
