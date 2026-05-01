-- ════════════════════════════════════════════════════════════
-- Tabela: clau_leads
-- Captura de leads do site claucarvalho.vercel.app
-- ════════════════════════════════════════════════════════════

create table if not exists public.clau_leads (
  id          uuid primary key default gen_random_uuid(),
  nome        text not null,
  celular     text not null,
  email       text not null,
  source      text default 'site-claucarvalho-home',
  user_agent  text,
  ip_address  text,
  created_at  timestamptz default now()
);

-- Índices para consulta rápida por e-mail e data
create index if not exists clau_leads_email_idx   on public.clau_leads(email);
create index if not exists clau_leads_created_idx on public.clau_leads(created_at desc);

-- ════════════════════════════════════════════════════════════
-- Row Level Security (RLS)
-- - Anônimos PODEM inserir (formulário público)
-- - NINGUÉM pode ler/atualizar/deletar via API pública
--   (apenas service_role / dashboard)
-- ════════════════════════════════════════════════════════════

alter table public.clau_leads enable row level security;

-- GRANT explícito (Supabase não dá INSERT por default em todas as tabelas)
grant insert on public.clau_leads to anon, authenticated;
grant usage on schema public to anon, authenticated;

-- Permite INSERT anônimo (frontend público) — anon e authenticated
drop policy if exists "anon can insert leads"   on public.clau_leads;
drop policy if exists "clau_leads_anon_insert"  on public.clau_leads;
create policy "clau_leads_anon_insert"
  on public.clau_leads
  as permissive
  for insert
  to anon, authenticated
  with check (true);

-- Bloqueia SELECT/UPDATE/DELETE para anon (dados privados)
drop policy if exists "anon cannot read"   on public.clau_leads;
drop policy if exists "anon cannot update" on public.clau_leads;
drop policy if exists "anon cannot delete" on public.clau_leads;
-- (não criar policies de SELECT/UPDATE/DELETE para anon = bloqueio total)

-- ════════════════════════════════════════════════════════════
-- Validação de campos básicos (CHECK constraints)
-- ════════════════════════════════════════════════════════════

alter table public.clau_leads
  drop constraint if exists clau_leads_email_check,
  add  constraint clau_leads_email_check
       check (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$');

alter table public.clau_leads
  drop constraint if exists clau_leads_nome_check,
  add  constraint clau_leads_nome_check
       check (length(nome) >= 2);

alter table public.clau_leads
  drop constraint if exists clau_leads_celular_check,
  add  constraint clau_leads_celular_check
       check (length(regexp_replace(celular, '\D', '', 'g')) between 10 and 13);
