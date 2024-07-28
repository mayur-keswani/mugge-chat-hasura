alter table "public"."roles" alter column "created_at" set default now();
alter table "public"."roles" alter column "created_at" drop not null;
alter table "public"."roles" add column "created_at" timestamptz;
