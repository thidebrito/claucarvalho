# Clau Carvalho — Manual de Identidade Visual (MIV) 2026

> Documento de referência baseado no Brand Kit oficial enviado pela cliente em abril/2026.
> Toda alteração visual no site `claucarvalho.vercel.app` deve respeitar este manual.

---

## 1. Conceito da Marca

**Posicionamento:** Executivo Sofisticado e Minimalista
**Tom:** Naturalidade, elegância madura, autoridade técnica e cuidado humano
**Público:** Mulheres em pré e pós-operatório de cirurgia plástica + profissionais (mentoria)

---

## 2. Paleta de Cores Oficial

| Token CSS | Hex | Nome | Uso |
|---|---|---|---|
| `--cream-pale` | `#F6E9D8` | Creme pálido | Background principal, contraste em fundos escuros |
| `--cream` | `#DBC1A9` | Bege médio | Fundos secundários, blocos suaves |
| `--terracotta-light` | `#BA8565` | Bronze claro | Hover, gradientes, detalhes |
| `--terracotta` | `#8D5B3A` | Bronze escuro | Cor principal de marca, CTAs |
| `--deep-brown` | `#2B1710` | Marrom rico (chocolate) | Texto principal, fundo do hero |
| `--burgundy` | `#8E230B` | Ferrugem/Terracota | Destaques, alertas, cor de energia |
| `--gray` | `#D9D9D9` | Cinza claro | Bordas e divisores |
| `--white` | `#FFFFFF` | Branco puro | Contraste e respiro |

**Princípios da paleta:**
- **Ferrugem/Terracota** — energia e modernidade (uso pontual, não dominar)
- **Marrom Rico (Chocolate)** — base de poder, estabilidade, sofisticação
- **Creme/Off-white** — luminosidade, suaviza a paleta geral
- **Branco Puro** — contraste nítido e limpo
- **Nude/Bege** — neutro que alonga e unifica

---

## 3. Tipografia

### Fonte Principal — **Ginger** (Sudtipos)
- Display elegante, contemporânea, com personalidade (mistura sans + traços modulares)
- Usar em: logo, títulos H1, H2, headlines de impacto
- **Status:** licença premium da Sudtipos. Não está em Google Fonts.
- **Fallback no site (em uso):** `Italiana` (display alongada elegante, mais próxima da Ginger) → `Marcellus` (display fina) → `Cormorant Garamond` (corpo serif)
- **Para substituir pela Ginger original:** colocar arquivo `.woff2` em `/assets/fonts/` e adicionar `@font-face` no CSS, depois trocar `var(--font-display)` para `'Ginger'` no início da pilha.

### Fonte Secundária — **Archivo** (Google Fonts) ✅
- Sans-serif geométrica, leitura confortável
- Usar em: corpo de texto, parágrafos, navegação, botões, menus
- **Status:** disponível gratuitamente no Google Fonts (já carregada no site)
- Pesos em uso: 300, 400, 500, 600, 700

---

## 4. Logo

### Aplicações
- **Horizontal** — "Clau Carvalho" + tagline "Especialista em Pós-Operatório" lado a lado
- **Vertical** — nome empilhado em duas linhas com tagline embaixo
- **Mentoria** — variação "Clau Mentoria Carvalho" (palavra "Mentoria" entre as linhas, em peso menor) — usar em peças voltadas a profissionais

### Cores de aplicação
- Em fundo creme `#F6E9D8` → logo em `#2B1710` ou `#8D5B3A`
- Em fundo terracotta `#BA8565` → logo em `#F6E9D8`
- Em fundo marrom escuro `#2B1710` → logo em `#F6E9D8` ou `#BA8565`

---

## 5. Elementos Gráficos da Marca

### Sunburst (selo circular)
Selo redondo com raios de sol em terracotta `#BA8565`, com microtexto orbital:
> `* Clau Carvalho * Especialista em pós *`

**Onde usar:** seções premium do site, badge de autoridade, footer, seção "sobre", e como ícone de prova de marca.

### Formas geométricas
- Quadrados com cantos arredondados em apenas um lado (lembram pétalas/molduras)
- Combinação de blocos em creme + marrom + terracotta
- Sempre alinhados em grid 2x2 ou compondo molduras de fotos

### Padrão de raios (sunburst pattern)
- Linhas finas radiais saindo de um ponto, em tom levemente mais escuro que o fundo
- Uso decorativo discreto em fundos de seções

---

## 6. Estilo de Imagens (referência das fotos da Clau)

- **Tons:** terrosos e neutros quentes (mesma paleta)
- **Cenário:** poltronas e fundos em camadas de bege/marrom
- **Vestuário:** blazer chocolate ou off-white, calças brancas/cremes, blusa terracotta, paleta totalmente integrada
- **Acessórios — Statement Gold:**
  - Braceletes largos (cuffs) e anéis grossos, esculturais
  - Acabamento polido (liso e brilhante)
  - Stacking (múltiplos anéis e pulseiras)
- **Pose:** sentada, executiva, mãos em destaque (mostra trabalho manual + acessórios)

---

## 7. Tokens CSS no site (referência rápida)

```css
:root {
  /* Cores */
  --cream-pale: #F6E9D8;
  --cream: #DBC1A9;
  --terracotta-light: #BA8565;
  --terracotta: #8D5B3A;
  --deep-brown: #2B1710;
  --burgundy: #8E230B;
  --gray: #D9D9D9;
  --white: #FFFFFF;

  /* Fontes */
  --font-display: 'Italiana', 'Marcellus', 'Cormorant Garamond', Georgia, serif; /* fallback Ginger */
  --font-serif:   'Marcellus', 'Cormorant Garamond', 'Italiana', Georgia, serif; /* corpo serif */
  --font-sans:    'Archivo', -apple-system, BlinkMacSystemFont, sans-serif;
}
```

---

## 8. Don'ts (o que NÃO fazer)

- ❌ Usar fontes serif clássicas como Playfair Display ou Times — destoam do MIV
- ❌ Misturar a paleta com cores fora do conjunto (rosa, dourado vivo, azul)
- ❌ Usar emojis como ícones em peças premium (substituir por SVG line icons)
- ❌ Aplicar dourado vivo: o "gold" do MIV é o **terracotta-light** + **bronze**, não amarelo
- ❌ Achatar o logo ou alterar proporções
- ❌ Usar texto branco puro sobre fundo creme (sem contraste suficiente)

---

## 9. Para substituir fonte Ginger no futuro

Quando a Clau enviar o arquivo da fonte Ginger:

1. Salvar em `/assets/fonts/Ginger.woff2`
2. Adicionar no CSS de `index.html` e `blog.html`:
   ```css
   @font-face {
     font-family: 'Ginger';
     src: url('/assets/fonts/Ginger.woff2') format('woff2');
     font-display: swap;
   }
   ```
3. Trocar a variável `--font-display` para:
   ```css
   --font-display: 'Ginger', 'Cormorant Garamond', Georgia, serif;
   ```

---

**Última atualização:** 2026-04-30
**Fonte do MIV:** Brand Kit oficial Clau Carvalho 2026 (8 pranchas)
