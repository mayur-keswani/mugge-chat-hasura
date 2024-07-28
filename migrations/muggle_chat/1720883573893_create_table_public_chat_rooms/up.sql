CREATE TABLE "public"."chat_rooms" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "name" text NOT NULL, "created_by" uuid NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz DEFAULT now(), PRIMARY KEY ("id") , FOREIGN KEY ("created_by") REFERENCES "public"."users"("id") ON UPDATE no action ON DELETE no action);
CREATE EXTENSION IF NOT EXISTS pgcrypto;
