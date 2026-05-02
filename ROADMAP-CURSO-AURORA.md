# Roadmap — Curso Método Aurora

> Lista de itens do ecossistema do curso · status atualizado.
> Última atualização: 2026-05-02 (v3 — após sessão "pode seguir com tudo")

---

## 🟢 Já entregue

### Páginas web
- [x] **`index.html`** — site principal · com link "Curso Aurora" no nav
- [x] **`curso.html`** — LP do curso (lista de espera) · 17 seções com MIV completo · otimizações UX/UI (scroll progress, counter, tilt 3D, parallax, stagger, selo SVG, DMs reais)
- [x] **`curso-vendas.html`** — versão "carrinho aberto" da LP · CTAs trocados pra checkout Hotmart · countdown de bônus · contador de vagas pioneiras · pixel `InitiateCheckout`
- [x] **`obrigado.html`** — página de obrigado pós-cadastro · check animado · vídeo placeholder Clau · 3 próximos passos · upsell soft pra mentoria · pixel `CompleteRegistration`
- [x] **`quiz-aurora.html`** — quiz de qualificação (5 perguntas) · 3 perfis possíveis (Construindo Bases / Pronta pra Saltar / Já é Referência) · captura na lista
- [x] **`admin/leads.html`** — painel interno de leads · stats · filtros · busca · export CSV · auth básico

### Documentos estratégicos
- [x] **`BRAND-KIT.md`** — Manual de Identidade Visual (existia)
- [x] **`SUPABASE-SETUP.md`** — Setup do banco (existia)
- [x] **`VSL-METODO-AURORA.md`** — VSL v3 (9 blocos · ~7'15" · 3 hooks A/B · pausas marcadas · diagnóstico por métrica)
- [x] **`EMAILS-AQUECIMENTO.md`** — sequência de 8 e-mails de pré-lançamento (D+0/D+2/D+5/D+8/D+11/D-5/D-day/D-1)
- [x] **`CRIATIVOS-META-ADS.md`** — 12 copies de anúncios com Mandala VTSD + estrutura de campanha + plano A/B
- [x] **`REMARKETING.md`** — funil de retargeting completo · públicos personalizados · janelas · 6 criativos específicos
- [x] **`CONTEUDO-ORGANICO-30DIAS.md`** — calendário editorial dos 30 dias antes do carrinho · 5 pilares · banco de copy

### Componentes adicionados na v1.x
- [x] Schema.org Course completo + meta tags + Pixel Meta
- [x] Form de captura (Supabase + fallback localStorage + Pixel Lead)
- [x] Selo de garantia SVG sunburst (MIV)
- [x] Componente "DMs reais" (provas sociais visuais) na LP

---

## 🟡 Próximo — chamar quando for hora

### #11 — Webinar de pré-lançamento (1h ao vivo)
**Status:** chamar quando definir data
**Função:** aula gratuita de 60min na semana antes do lançamento. Aumenta conversão lead→cliente em 2-3×.
**Dependências:** data definida, plataforma (Zoom/StreamYard), tema da aula

### #12 — Programa de afiliados via Hotmart
**Status:** chamar depois das primeiras 50 alunas
**Função:** ativar quando o curso já tiver alunas pra indicar. Comissão 20-30%.
**Dependências:** produto cadastrado no Hotmart, comissão definida, regras claras

### #13 — Versão internacional da LP (EN ou PT-PT)
**Status:** chamar se houver demanda fora do Brasil
**Função:** linha do `ia-euro` do Thiago.

---

## 📋 Pendências críticas pré-lançamento

Pendências do v1 que precisam ser resolvidas antes do carrinho abrir:

### Configuração técnica
1. **Colar `SUPABASE_ANON_KEY`** em todos os arquivos JS:
   - [ ] `index.html`
   - [ ] `curso.html`
   - [ ] `quiz-aurora.html`
   - [ ] `admin/leads.html`
2. **Adicionar coluna `profissao`** na tabela `clau_leads` (`ALTER TABLE`)
3. **Considerar adicionar coluna `meta jsonb`** pra guardar respostas do quiz (quiz_tempo, quiz_faturamento, quiz_ticket, quiz_dor)
4. **Configurar Conversions API** server-side via Supabase Edge Function pra restaurar tracking iOS 14.5+
5. **Trocar a `ADMIN_KEY`** em `admin/leads.html` (default: `aurora-2026`)

### Conteúdo
6. **Substituir WhatsApp** placeholder `5562999999999` pelo número real (várias ocorrências em vários arquivos)
7. **Substituir foto da Clau** na LP por foto profissional dedicada
8. **Confirmar números reais** da prova social numérica:
   - hoje: `+1.200 / +8 anos / +30 / +200`
   - precisa do número real validado pela Clau
9. **Trocar `HOTMART_URL`** em `curso-vendas.html` pelo link real do checkout Hotmart
10. **Definir data exata de abertura do carrinho** (afeta calendário dos e-mails e do conteúdo orgânico)
11. **Trocar `BONUS_DEADLINE`** em `curso-vendas.html` pra data real (atualmente é "48h a partir do load da página")

### Produto e mídia
12. **Cadastrar produto no Hotmart** + obter link do checkout
13. **Gravar VSL** seguindo roteiro v3
14. **Hospedar VSL** (Vimeo Pro recomendado) e atualizar embed na LP (substituir `.hero-vsl-placeholder` por `<iframe>` real)
15. **Gravar vídeo de boas-vindas** (60s) pra `obrigado.html`
16. **Configurar plataforma de e-mail** (Resend/Brevo) + automação dos 8 e-mails

### Validação
17. **Testar fluxo end-to-end** antes do D-day:
    - Cadastro na LP → e-mail de boas-vindas → 8 e-mails na sequência
    - Quiz → captura no Supabase → resultado → entrada na lista
    - Checkout Hotmart → webhook → e-mail de confirmação → painel atualizado

---

## 🗂️ Estrutura completa de arquivos

```
claucarvalho/
├── index.html                       # Site principal
├── curso.html                       # LP (lista de espera) · v1.2
├── curso-vendas.html                # LP (carrinho aberto) · ativar no D-day
├── quiz-aurora.html                 # Quiz qualificação
├── obrigado.html                    # Pós-cadastro
├── blog.html                        # Blog
├── favicon.svg
├── manifest.webmanifest
├── robots.txt
├── sitemap.xml
│
├── admin/
│   └── leads.html                   # Painel interno
│
├── assets/
│   └── instagram/                   # Fotos reais @clinicaclau
│
├── supabase/
│   └── migrations/                  # SQL migrations
│
├── BRAND-KIT.md                     # MIV oficial
├── SUPABASE-SETUP.md                # Setup do banco
├── VSL-METODO-AURORA.md             # Roteiro VSL v3
├── EMAILS-AQUECIMENTO.md            # 8 e-mails de aquecimento
├── CRIATIVOS-META-ADS.md            # 12 anúncios + estrutura campanha
├── REMARKETING.md                   # Funil de retargeting
├── CONTEUDO-ORGANICO-30DIAS.md      # Calendário 30 dias
└── ROADMAP-CURSO-AURORA.md          # Este arquivo
```

---

## 🎯 Sequência sugerida de ativação (passo a passo)

### D-30 → D-15 (preparação)
1. ✅ LP `curso.html` no ar (já está)
2. ⏳ Resolver pendências críticas técnicas (#1 a #5)
3. ⏳ Gravar VSL v3 + hospedar
4. ⏳ Configurar plataforma de e-mail + automação
5. ⏳ Iniciar conteúdo orgânico semana 1

### D-14 (ativação de tráfego pago)
6. ⏳ Criar campanhas Meta Ads com 6 criativos iniciais (CRIATIVOS-META-ADS.md)
7. ⏳ Configurar públicos personalizados (REMARKETING.md)
8. ⏳ Conteúdo orgânico semana 2

### D-7 (pré-abertura)
9. ⏳ E-mail #6 (aviso de abertura) disparado
10. ⏳ Conteúdo orgânico semana 4 (countdown)
11. ⏳ Página `obrigado.html` ajustada com vídeo final da Clau

### D-day (abertura)
12. ⏳ Trocar URL na campanha Meta Ads de `curso.html` → `curso-vendas.html`
13. ⏳ Trocar criativos pra versão "vendas abertas"
14. ⏳ E-mail #7 (carrinho aberto) disparado
15. ⏳ Stories all day no @clinicaclau

### D+7 (fim do carrinho)
16. ⏳ E-mail #8 (última chance) disparado
17. ⏳ Carrinho fecha
18. ⏳ Análise de métricas + insights pra próximo lançamento
19. ⏳ Painel `/admin/leads.html` atualizado com dados finais

---

## 📊 Métricas-target (síntese)

| Fase | KPI | Meta |
|---|---|---|
| **Pré-lançamento (orgânico)** | Leads orgânicos pra lista | 30% do total |
| **Pré-lançamento (pago)** | CPL na lista de espera | R$ 3-5 |
| **Pré-lançamento (pago)** | Hook rate (3s) | > 30% |
| **Pré-lançamento (pago)** | Hold rate (75%) | > 18% |
| **Lançamento** | Conversão lead → comprador | 5-8% |
| **Lançamento (retargeting)** | Conversão remarketing | 8-15% |
| **Lançamento** | Refund rate (7 dias) | < 5% |

---

## ⏰ Itens pra revisar mais pra frente (lembrete)

### Otimização contínua de UX/UI
**Status:** monitorar pós-lançamento
**O que olhar:**
- Performance: Lighthouse score · LCP · CLS · INP
- Animações em mobile (testar em iOS/Android low-end)
- Acessibilidade: contraste · keyboard nav · screen reader · alt text
- Dark mode (avaliar se faz sentido pra audiência)
- PWA / offline (cachear LP pra carregamento instantâneo)
- A/B test do hero (texto + visual)

### Conteúdos derivados pós-curso
**Status:** quando o curso estiver vendendo bem
**Possibilidades:**
- E-book de bônus aprofundado
- Mini-curso gratuito como front-end pra atrair lead frio
- Versão "Atelier Aurora" do curso (formato 1:1 high-ticket)
- Certificação de profissionais formadas (revenue stream extra)

### Atualização contínua do material
- A cada 6 meses, revisar VSL e criativos com base em performance
- Adicionar novos depoimentos / DMs reais conforme aparecem
- Atualizar números da prova social com dados reais
- Refazer foto da Clau a cada lançamento grande (manter atualidade)
