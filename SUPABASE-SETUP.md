# Setup Supabase — Captura de Leads

> Guia passo-a-passo para conectar o formulário de captura ao banco Supabase.
> Estimativa: **5 minutos**.

---

## Pré-requisitos

- Acesso ao projeto Supabase: `https://qkcnawpkzfpmyrdczjac.supabase.co`
- Acesso ao repositório `github.com/thidebrito/claucarvalho`

---

## Passo 1: Criar a tabela `clau_leads`

1. Abra o **SQL Editor** no Supabase:
   👉 https://supabase.com/dashboard/project/qkcnawpkzfpmyrdczjac/sql/new

2. Copie e cole o conteúdo do arquivo:
   📄 `/supabase/migrations/20260430_clau_leads.sql`

3. Clique em **Run** (ou `Cmd+Enter`).

4. Confirme: **Database → Tables → `public.clau_leads`** deve aparecer com 7 colunas e RLS ativo.

---

## Passo 2: Pegar a `anon` key (chave pública)

1. Abra **Settings → API**:
   👉 https://supabase.com/dashboard/project/qkcnawpkzfpmyrdczjac/settings/api

2. Em **Project API keys**, copie a chave **`anon` `public`** (começa com `eyJhbGciOiJIUzI1NiIs...`).

> ⚠️ **Não confunda** com a `service_role` (essa é privada e NUNCA deve ir pro frontend).

---

## Passo 3: Colar a chave no site

1. Abra o arquivo `index.html` na raiz do repositório.

2. Procure (Ctrl+F) por: `SUPABASE_ANON_KEY = ''`

3. Cole a chave entre as aspas:

   ```js
   const SUPABASE_URL      = 'https://qkcnawpkzfpmyrdczjac.supabase.co';
   const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.<resto-da-chave>';
   ```

4. Salve o arquivo.

---

## Passo 4: Commitar e fazer deploy

```bash
git add index.html
git commit -m "feat: conecta formulário de captura ao Supabase"
git push origin main
```

A Vercel detecta o push e deploya automaticamente em ~1 minuto.

---

## Passo 5: Testar

1. Abra https://claucarvalho.vercel.app
2. Role até a seção **"Receba conteúdos exclusivos"**
3. Preencha o formulário e clique em **"Quero receber novidades"**
4. Volte ao Supabase → **Table Editor → `clau_leads`** — o registro deve aparecer.

---

## Como ver os leads

### Opção A: Pelo painel
👉 https://supabase.com/dashboard/project/qkcnawpkzfpmyrdczjac/editor

Clique em `clau_leads` para ver todos os leads cadastrados, ordenados por data.

### Opção B: Exportar CSV

No Table Editor, clique no menu **(...)** ao lado do nome da tabela → **Export to CSV**.

### Opção C: Query SQL rápida

```sql
select created_at, nome, celular, email, source
from public.clau_leads
order by created_at desc
limit 100;
```

---

## Segurança aplicada

✅ **RLS ativado** — sem login, ninguém consegue LER os dados pelo frontend
✅ **Apenas INSERT permitido** para usuários anônimos (formulário público)
✅ **Validação de e-mail e celular** via CHECK constraints no banco
✅ **Pixel Meta** rastreia o evento `Lead` no submit (no facebook business)

---

## Troubleshooting

### "Erro 401 / 403 ao enviar"
- A `anon key` está errada ou foi copiada incompleta
- O RLS bloqueou — verificar se a policy `anon can insert leads` existe

### "Erro 400 — invalid input"
- Provavelmente o e-mail ou o celular não passaram na CHECK constraint
- Logs ficam no Supabase em **Logs → API**

### "Form mostra sucesso mas nada chega no Supabase"
- A variável `SUPABASE_ANON_KEY` está vazia → o fallback ativou e salvou no localStorage do navegador
- Para recuperar leads do localStorage de algum teste: console do navegador → `JSON.parse(localStorage.getItem('clau_leads'))`

---

## Próximos passos (opcionais)

- 🔔 **Webhook** para Resend/Brevo enviar e-mail de boas-vindas automático ao lead
- 📊 **View materializada** com agregados (leads por dia, por origem)
- 🔄 **Sync com ActiveCampaign / RD Station** via Edge Function
