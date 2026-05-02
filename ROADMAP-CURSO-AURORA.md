# Roadmap — Curso Método Aurora

> Lista de itens pendentes pra evoluir o ecossistema do curso depois do v1.
> Marcado pelo Thiago durante a sessão de design.
> Última atualização: 2026-05-02

---

## 🟢 Já entregue (v1)

- [x] **LP `curso.html`** — 16 seções, MIV completo, otimizações UX/UI (scroll progress, counter, tilt, parallax, stagger, selo SVG)
- [x] **VSL roteiro v3** — 9 blocos, ~7'15", com 3 versões de hook pra A/B test
- [x] **Sequência de 8 e-mails de aquecimento** — `EMAILS-AQUECIMENTO.md`
- [x] **Schema.org Course** + meta tags completas + Pixel Meta
- [x] **Form de captura** — Supabase + fallback localStorage + Pixel Lead
- [x] **Link no nav** do site principal apontando pra LP do curso

---

## 🟡 Próximo — depois (Thiago revisar)

### #2 — Página de obrigado pós-cadastro · `obrigado.html`
**Status:** depois
**Por que importa:** fixa o evento de conversão `Lead` no momento certo, multiplica conversão futura, cria identidade.

**Conteúdo proposto:**
- Header com confirmação visual (✓ você está na lista)
- Vídeo curto de 60s da Clau (gravação à parte) recebendo o lead
- Próximos passos:
  - Seguir no Instagram (@clinicaclau)
  - Salvar e-mail clau@... nos contatos pra não cair em spam
  - Adicionar WhatsApp (link automático)
- Upsell soft: "Quer adiantar? Conheça a Mentoria presencial" (link)
- Pixel Meta: dispara `CompleteRegistration` aqui

### #9 — Painel de leads · `/admin`
**Status:** depois
**Por que importa:** dashboard interno pra visibilidade da Clau / time.

**Conteúdo proposto:**
- Auth básico (HTTP basic ou Supabase auth)
- Total de leads / dia / semana / mês
- Origem (LP curso vs site principal vs anúncios)
- Estado (novo / aquecido / engajado / convertido)
- Export CSV
- Stack: HTML/JS puro + Supabase REST

---

## 🔴 Pra frente — depois quando o lançamento estiver mais perto

### #3 — Campanha Meta Ads (criativos com Mandala VTSD)
**Status:** pra frente
**Quando ativar:** 14 dias antes da abertura do carrinho

**Entregáveis:**
- 12 copies de anúncio (Mandala VTSD aplicada)
  - Tipos: depoimento · problema-solução · ataque ao concorrente · autoridade · prova · escassez · contraste · etc
- 3 hooks visuais diferentes pra mesmo conjunto
- Estrutura de campanha (Advantage+ vs ABO)
- Orçamento sugerido fase descoberta
- Públicos personalizados pra retargeting (visitantes da LP que não cadastraram)

### #5 — Quiz de qualificação opcional · `quiz-aurora.html`
**Status:** pra frente
**Quando ativar:** próxima abertura (depois do v1 validado)

**Conteúdo:**
- 5–7 perguntas antes de cadastrar na lista
- Tempo de profissão · faturamento atual · ticket médio · principais dúvidas
- Benefícios:
  - Dados qualificados pro Supabase (segmentação)
  - Aumenta comprometimento (paradoxo: pedir mais info aumenta conversão final)
  - Identifica "10 primeiras potenciais" antes do lançamento
- Nas perguntas: linguagem do método (educa enquanto pergunta)

### #6 — Provas sociais visuais
**Status:** pra frente
**Quando ativar:** quando tiver autorizações + material gravado

**Entregáveis:**
- Mockups de prints reais de DM autorizados
- Antes/depois de paciente real (com TCLE assinado)
- 3 vídeos curtos (15–30s) de paciente falando — para LP, anúncios e Reels
- Componente "DM real" reutilizável na LP

### #7 — Funil de remarketing pós-LP
**Status:** pra frente
**Quando ativar:** simultâneo aos criativos Meta Ads (#3)

**Configuração:**
- Público customizado: visitantes do `/curso` que não cadastraram nos últimos 14 dias
- Criativo específico: *"Você esteve aqui — ainda dá tempo"*
- Frequência cap: 3× / semana
- Budget: 20% do total da campanha

### #8 — Versão "carrinho aberto" da LP
**Status:** pra frente
**Quando ativar:** dia da abertura do lançamento

**Mudanças necessárias:**
- Trocar todos os CTAs de "Lista de espera" → "Comprar agora" (link Hotmart)
- Substituir form de captura pelo botão de checkout
- Adicionar contador de vagas (10/50 primeiras) decrementando em tempo real
- Adicionar timer de fechamento do carrinho
- Pixel: trocar `Lead` por `InitiateCheckout` no clique do CTA principal
- Manter form de captura como fallback ("ainda na dúvida? entra na lista da próxima turma")

### #10 — Selo de garantia visual SVG
**Status:** ✅ JÁ ENTREGUE (foi adicionado na v1.1)

---

## ⚫ Fase futura — Thiago vai chamar quando for hora

### #11 — Webinar de pré-lançamento (1h ao vivo)
**Status:** chamar depois
**Função:** aula gratuita de 60min na semana antes do lançamento. Aumenta conversão lead→cliente em 2-3×.

### #12 — Programa de afiliados via Hotmart
**Status:** chamar depois
**Função:** ativar quando o curso já tiver 50+ alunas. Comissão 20-30%.

### #13 — Versão internacional da LP (EN ou PT-PT)
**Status:** chamar depois
**Função:** se houver demanda fora do Brasil — linha "ia-euro" do Thiago.

---

## 📋 Item a verificar mais pra frente (lembrete)

### Otimização UX/UI contínua
**Status:** pra revisar mais pra frente
**O que considerar:**
- Performance: Lighthouse score · LCP · CLS
- Animações em mobile (testar em iOS/Android low-end)
- Acessibilidade: contraste · keyboard nav · screen reader
- Dark mode (se fizer sentido pra audiência)
- Offline / PWA (cachear LP pra carregamento instantâneo)
- A/B test do hero (texto + visual)

---

## 🗂️ Arquivos do projeto (referência)

| Arquivo | Função |
|---|---|
| `curso.html` | Landing page do Curso (lista de espera) |
| `index.html` | Site principal · com link "Curso Aurora" no nav |
| `blog.html` | Blog institucional |
| `BRAND-KIT.md` | Manual de Identidade Visual oficial |
| `VSL-METODO-AURORA.md` | Roteiro completo da VSL v3 |
| `EMAILS-AQUECIMENTO.md` | Sequência de 8 e-mails de pré-lançamento |
| `ROADMAP-CURSO-AURORA.md` | Este arquivo |
| `SUPABASE-SETUP.md` | Setup Supabase · captura de leads |

---

## ⚠️ Pendências críticas pré-lançamento (do v1)

Pendências que precisam ser resolvidas antes do carrinho abrir:

1. **Colar `SUPABASE_ANON_KEY`** em `index.html` e `curso.html`
2. **Adicionar coluna `profissao`** na tabela `clau_leads` (`ALTER TABLE`)
3. **Substituir WhatsApp** placeholder `5562999999999` pelo número real (várias ocorrências)
4. **Substituir foto da Clau** na LP por foto profissional dedicada
5. **Confirmar números reais** da prova social numérica (hoje são mocks: +1.200 / +8 anos / +30 / +200)
6. **Configurar pixel Conversions API** server-side via Supabase Edge Function
7. **Definir data exata de abertura do carrinho** (afeta calendário dos e-mails)
8. **Cadastrar produto no Hotmart** + obter link do checkout
9. **Gravar VSL** seguindo roteiro v3
10. **Hospedar VSL** (Vimeo Pro recomendado) e atualizar embed na LP
11. **Configurar plataforma de e-mail** (Resend/Brevo) + automação dos 8 e-mails
12. **Testar fluxo end-to-end** antes do D-day
