# Funil de Remarketing — Curso Método Aurora

> Especificação completa do funil de retargeting Meta Ads pós-LP.
> **Objetivo:** recuperar quem visitou e não converteu · maximizar conversão na fase de vendas · reduzir CPL.
> **Pré-requisito:** Pixel Meta + Conversions API configurados.

---

## 📐 Lógica do funil

```
TOPO (descoberta)
   │
   │  → Conjuntos 1, 2, 3 (interesses, lookalike, engajados)
   │  → Visitor anônimo cai na LP
   │
   ▼
LP curso.html
   │  ├── Cadastrou na lista → entra em LISTA QUENTE (e-mails)
   │  └── Não cadastrou → cai em REMARKETING TOPO
   │
   ▼
REMARKETING TOPO (3-7 dias)
   │  → Criativos com novos ângulos da Mandala
   │  → Volta pra LP com UTM diferente
   │
   ▼
   ├── Cadastrou (entrou na lista) → para o retargeting topo
   ├── Visitou de novo, ainda não cadastrou → REMARKETING MÉDIO
   └── Sumiu por 14+ dias → REMARKETING FRIO (reativação)
```

---

## 🎯 Públicos personalizados a criar

### 1. Visitantes da LP (Custom Audience baseado em Pixel)

| Nome do público | Filtro | Janela | Uso |
|---|---|---|---|
| `Aurora · Visitou /curso (7d)` | URL contém `/curso` | 7 dias | Retargeting quente (alta intenção recente) |
| `Aurora · Visitou /curso (30d)` | URL contém `/curso` | 30 dias | Retargeting médio |
| `Aurora · Visitou /curso (90d)` | URL contém `/curso` | 90 dias | Retargeting frio · reativação |
| `Aurora · Visitou /quiz-aurora` | URL contém `/quiz-aurora` | 30 dias | Não terminou o quiz · alta dor identificada |
| `Aurora · Viu VSL ≥50%` | Evento `ViewContent` + tempo | 30 dias | Retargeting de quem engajou no vídeo |

### 2. Cadastrados (Lead) — pra EXCLUIR

| Nome do público | Filtro | Janela | Uso |
|---|---|---|---|
| `Aurora · Lead (180d)` | Evento `Lead` | 180 dias | **Excluir** dos públicos de descoberta · não rejogar oferta de cadastro |

### 3. Compradores — pra EXCLUIR e LOOKALIKE

| Nome do público | Filtro | Janela | Uso |
|---|---|---|---|
| `Aurora · Comprador` | Evento `Purchase` | 365 dias | **Excluir** de toda campanha · base pra LAL 1% |
| `Aurora · LAL 1% comprador` | Lookalike sobre o anterior | — | Conjunto premium pra descoberta |

### 4. Engajados orgânicos

| Nome do público | Filtro | Janela | Uso |
|---|---|---|---|
| `Engajou @clinicaclau` | Engajamento Instagram | 90 dias | Aquece pra cadastrar |
| `Engajou @claucarvalho03` | Engajamento Instagram | 90 dias | Idem · perfil pessoal |

---

## 🪟 Estratégia por janela

### Janela 0–3 dias (intenção quente)
- **Público:** `Visitou /curso (7d)` MENOS `Lead (180d)`
- **Mensagem:** "Você esteve aqui — ainda dá tempo"
- **Frequência cap:** 3-4 impressões / dia (alta intenção, baixa fadiga)
- **Budget:** 30% do total de remarketing

### Janela 3–14 dias (esfriou um pouco)
- **Público:** `Visitou /curso (30d)` MENOS `Lead (180d)` MENOS `Visitou /curso (7d)`
- **Mensagem:** novo ângulo (caso real, prova social, ataque ao concorrente)
- **Frequência cap:** 2 impressões / dia
- **Budget:** 50% do total

### Janela 14–90 dias (reativação)
- **Público:** `Visitou /curso (90d)` MENOS `Lead (180d)` MENOS `Visitou /curso (30d)`
- **Mensagem:** reset · "abrindo nova turma" ou "última chance"
- **Frequência cap:** 1 impressão / dia (não saturar)
- **Budget:** 20% do total

---

## 🎨 Criativos específicos pra remarketing

### Criativo R1 — "Você esteve aqui"
**Quando usar:** janela 0–3 dias

**Headline:** *Você quase entrou. Falta um clique.*

**Texto:**
> Você visitou a página do Curso Método Aurora há poucos dias e saiu sem se cadastrar. **Tudo bem.** Mas a vaga ainda é sua — e os bônus pioneiros continuam reservados pra quem entra agora. ✦

**CTA:** *Cadastre-se*
**Imagem:** Foto da Clau + texto "Sua vaga ainda está aqui."

---

### Criativo R2 — Resposta a objeção (preço)
**Quando usar:** janela 3–14 dias · pra quem hesitou

**Headline:** *R$ 2.000 parece caro? Calcula 2 sessões.*

**Texto:**
> Cobrando R$ 200 por sessão, **10 atendimentos** pagam o curso inteiro. Em pacote, 1 cliente paga. **A pergunta certa não é se vale R$ 2.000.** É quanto você vai deixar de ganhar nos próximos 5 anos sem o método. ✦

**CTA:** *Saiba mais*
**Imagem:** Cálculo visual mostrando 10 sessões × R$ 200 = R$ 2.000

---

### Criativo R3 — Resposta a objeção (medo de não funcionar)
**Quando usar:** janela 3–14 dias

**Headline:** *7 dias de garantia. Total. Incondicional.*

**Texto:**
> Compra. Acessa o curso. Em 7 dias, se não for pra você, **devolvemos 100%.** Sem perguntas, sem burocracia. Você só tem o que ganhar. ✦

**CTA:** *Conhecer a garantia*
**Imagem:** Selo de garantia (sunburst MIV) em destaque

---

### Criativo R4 — Caso real
**Quando usar:** janela 3–14 dias

**Headline:** *"Em 6 meses dobrei o ticket."*

(Mesmo criativo 4 da campanha principal — **DM real**.)

---

### Criativo R5 — Reativação (janela longa)
**Quando usar:** janela 14–90 dias

**Headline:** *Faz tempo que você não passa por aqui.*

**Texto:**
> Mas tem uma novidade: o Curso Método Aurora abre nova turma na semana que vem. Bônus pioneiros voltam pra quem entrar na lista agora. ✦

**CTA:** *Cadastre-se*
**Imagem:** Foto Clau + texto: *"A volta da turma pioneira."*

---

### Criativo R6 — Quem fez o quiz mas não cadastrou
**Quando usar:** público `Visitou /quiz-aurora` MENOS `Lead`

**Headline:** *Você abriu o quiz e saiu na metade. Posso te entregar o resultado mesmo assim?*

**Texto:**
> Em 30 segundos você termina e recebe o seu perfil profissional + o caminho pra dar o próximo passo. **Sem cobrança, sem compromisso.** ✦

**CTA:** *Terminar o quiz*
**Imagem:** Tela do quiz com progresso 60% + texto "Faltam 2 perguntas."

---

## 🛑 Exclusões obrigatórias

Em **todos** os anúncios de descoberta e remarketing, sempre excluir:

- `Aurora · Lead (180d)` — quem já está na lista (não rejogar cadastro)
- `Aurora · Comprador` — quem já comprou (não rejogar oferta)

Em campanhas de **upsell** (depois do lançamento, pra alunas atuais):
- Incluir `Aurora · Comprador` como público positivo
- Excluir todos os outros

---

## 📊 Métricas de remarketing

| Métrica | Meta inicial | Por que importa |
|---|---|---|
| **CPL retargeting (0-3d)** | R$ 1,50 a R$ 3,00 | Pessoas com alta intenção · CPL baixo |
| **CPL retargeting (3-14d)** | R$ 3,00 a R$ 5,00 | Esfriou um pouco |
| **CPL retargeting (14-90d)** | R$ 6,00 a R$ 10,00 | Reativação · custo aceitável |
| **Frequência cumulativa** | 3-7× / 14 dias | Acima disso, fadiga |
| **CTR retargeting** | > 2.5% | Mais alto que o topo de funil |
| **Lead → comprador (do retargeting)** | 8-15% | Bem maior que do topo (5-8%) |

---

## 🔧 Configuração técnica no Meta

### Pixel events necessários

```js
// Já configurados na LP (curso.html, quiz-aurora.html, curso-vendas.html)
fbq('track', 'PageView');
fbq('track', 'ViewContent', { content_name: 'Curso Método Aurora — ...' });
fbq('track', 'Lead', { content_name: 'Curso Método Aurora — ...' });

// Adicionar no botão de checkout (curso-vendas.html — já tem)
fbq('track', 'InitiateCheckout', {
  content_name: 'Curso Método Aurora',
  content_type: 'product',
  value: 2000.00,
  currency: 'BRL'
});

// No Hotmart (postback ou via Conversions API):
fbq('track', 'Purchase', {
  content_name: 'Curso Método Aurora',
  value: 2000.00,
  currency: 'BRL'
});
```

### Conversions API (server-side)
**Por que importa:** iOS 14.5+ bloqueia ~50% dos eventos client-side. CAPI server-side restaura tudo.

**Setup recomendado:**
1. Criar Edge Function no Supabase que dispara eventos pra Meta CAPI
2. Trigger no INSERT em `clau_leads` → manda evento `Lead` pra CAPI
3. Webhook do Hotmart (postback de venda) → manda `Purchase` pra CAPI
4. Hash de e-mail/telefone com SHA256 antes de enviar (LGPD-compliant)

**Documentação:**
- Meta CAPI: https://developers.facebook.com/docs/marketing-api/conversions-api
- Hotmart postback: https://developers.hotmart.com/docs/pt-BR/

---

## 📋 Checklist antes de ativar remarketing

- [ ] Pixel Meta validado em todas as páginas (`curso.html`, `quiz-aurora.html`, `curso-vendas.html`, `obrigado.html`)
- [ ] Eventos disparando: `PageView` · `ViewContent` · `Lead` · `InitiateCheckout`
- [ ] Públicos personalizados criados (visitantes 7d/30d/90d, leads, quiz, etc)
- [ ] Públicos de exclusão configurados (`Lead 180d` e `Comprador`)
- [ ] LAL 1% de compradores criada (se já tiver base · senão LAL 1% de leads)
- [ ] UTMs configuradas pra rastrear performance por criativo
- [ ] Frequency cap configurado (3-4/dia janela quente · 1/dia janela fria)
- [ ] CAPI server-side rodando (recomendado · não obrigatório pra começar)

---

## ⚠️ Erros comuns a evitar

1. **Não excluir `Lead` dos anúncios de descoberta** → você queima budget rejogando "cadastre-se" pra quem já cadastrou
2. **Frequência alta em janela longa** → fadiga · pessoa começa a ignorar você
3. **Mesmo criativo no remarketing e descoberta** → quem já viu na descoberta perde a novidade
4. **Não testar criativos novos no remarketing** → repete o mesmo ângulo que ela já viu e ignorou
5. **Esquecer iOS 14.5+** → sem CAPI server-side, o público de retargeting fica subdimensionado em ~50%
