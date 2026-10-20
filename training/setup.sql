-- 행사 전용 Supabase 프로젝트에서 실행하세요. 공개 익명 접근 정책이므로 민감정보를 저장하지 마세요.
create table if not exists public.reading_run_control_training (
 id integer primary key check(id=1), session_id text not null default 'initial', state text not null default 'ready',
 minutes integer not null default 15, threshold numeric not null default 0.8, next_1 integer not null default 0, next_2 integer not null default 0, next_3 integer not null default 0, started_at timestamptz
);
insert into public.reading_run_control_training(id) values(1) on conflict(id) do nothing;
create table if not exists public.reading_run_lanes_training (
 session_id text not null, lane integer not null check(lane between 1 and 3), characters integer not null default 0,
 meters integer not null default 0, stanza integer not null default 1, state text not null default 'ready',
 updated_at timestamptz default now(), primary key(session_id,lane)
);
alter table public.reading_run_control_training enable row level security;
alter table public.reading_run_lanes_training enable row level security;
create policy "training control read" on public.reading_run_control_training for select to anon using(true);
create policy "training control update" on public.reading_run_control_training for update to anon using(true) with check(true);
create policy "training lanes read" on public.reading_run_lanes_training for select to anon using(true);
create policy "training lanes insert" on public.reading_run_lanes_training for insert to anon with check(true);
create policy "training lanes update" on public.reading_run_lanes_training for update to anon using(true) with check(true);
