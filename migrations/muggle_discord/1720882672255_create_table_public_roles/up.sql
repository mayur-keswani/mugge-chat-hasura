CREATE TABLE "public"."roles" ("role_id" text NOT NULL, "description" text, "created_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("role_id") , UNIQUE ("role_id"));
