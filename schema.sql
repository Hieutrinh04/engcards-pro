begin;

create table public.engcards_state (
  user_id uuid primary key references auth.users(id) on delete cascade,
  state jsonb not null check (
    jsonb_typeof(state) = 'object' and state ? 'vocabulary'
    and jsonb_typeof(state -> 'vocabulary') = 'array'
  ),
  revision integer not null default 1 check (revision > 0)
);

alter table public.engcards_state enable row level security;
revoke all on public.engcards_state from public, anon, authenticated;
grant select, insert, update on public.engcards_state to authenticated;

create policy "Read own EngCards state" on public.engcards_state
  for select to authenticated using ((select auth.uid()) = user_id);
create policy "Insert own EngCards state" on public.engcards_state
  for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "Update own EngCards state" on public.engcards_state
  for update to authenticated using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);

commit;
