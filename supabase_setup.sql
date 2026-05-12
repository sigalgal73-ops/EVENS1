-- Run this in Supabase SQL Editor
create table quotes (
  id uuid default gen_random_uuid() primary key,
  created_at timestamptz default now(),
  quote_number text,
  client_name text,
  company_name text,
  phone text,
  email text,
  event_date text,
  event_type text,
  start_time text,
  end_time text,
  guests integer,
  hall text,
  menu text,
  add_fruits boolean default false,
  add_mehadrin boolean default false,
  notes text,
  total_price integer,
  status text default 'נשלחה'
);

-- Allow public read/write (anon key access)
alter table quotes enable row level security;
create policy "Allow all" on quotes for all using (true) with check (true);
