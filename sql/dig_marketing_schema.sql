-- clients
CREATE TABLE "clients" (
    "client_id" TEXT PRIMARY KEY,
    "company_name" TEXT,
    "industry" TEXT,
    "location" TEXT,
    "contact_name" TEXT,
    "contact_email" TEXT,
    "joined_date" TEXT,
    "is_active" TEXT
);

-- agency_staff
CREATE TABLE "agency_staff" (
    "staff_id" TEXT PRIMARY KEY,
    "full_name" TEXT,
    "email" TEXT,
    "job_title" TEXT,
    "team" TEXT,
    "hire_date" TEXT,
    "is_active" TEXT
);

-- ad_platforms
CREATE TABLE "ad_platforms" (
    "platform_id" TEXT PRIMARY KEY,
    "platform_name" TEXT,
    "category" TEXT,
    "cost_model" TEXT
);

-- campaigns
CREATE TABLE "campaigns" (
    "campaign_id" TEXT PRIMARY KEY,
    "client_id" TEXT,
    "staff_id" TEXT,
    "campaign_name" TEXT,
    "campaign_type" TEXT,
    "start_date" TEXT,
    "end_date" TEXT,
    "budget" REAL,
    "status" TEXT,
    FOREIGN KEY("client_id") REFERENCES "clients"("client_id"),
    FOREIGN KEY("staff_id") REFERENCES "agency_staff"("staff_id")
);

-- ads
CREATE TABLE "ads" (
    "ad_id" TEXT PRIMARY KEY,
    "campaign_id" TEXT,
    "platform_id" TEXT,
    "ad_name" TEXT,
    "ad_format" TEXT,
    "created_at" TEXT,
    "is_active" TEXT,
    FOREIGN KEY("campaign_id") REFERENCES "campaigns"("campaign_id"),
    FOREIGN KEY("platform_id") REFERENCES "ad_platforms"("platform_id")
);

-- customers
CREATE TABLE "customers" (
    "customer_id" TEXT PRIMARY KEY,
    "full_name" TEXT,
    "gender" TEXT,
    "email" TEXT,
    "birthdate" TEXT,
    "country" TEXT
);

-- customer_interactions
CREATE TABLE "customer_interactions" (
    "interaction_id" TEXT PRIMARY KEY,
    "ad_id" TEXT,
    "customer_id" TEXT,
    "event_type" TEXT,
    "event_time" TEXT,
    "device_type" TEXT,
    "location" TEXT,
    FOREIGN KEY("ad_id") REFERENCES "ads"("ad_id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("customer_id")
);

-- invoices
CREATE TABLE "invoices" (
    "invoice_id" TEXT PRIMARY KEY,
    "campaign_id" TEXT,
    "issue_date" TEXT,
    "due_date" TEXT,
    "amount_due" REAL,
    "status" TEXT,
    FOREIGN KEY("campaign_id") REFERENCES "campaigns"("campaign_id")
);

