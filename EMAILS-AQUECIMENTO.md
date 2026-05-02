# Sequência de E-mails — Lista de Espera Curso Método Aurora

> **Objetivo:** aquecer leads da lista de espera entre o cadastro e a abertura do carrinho.
> **Formato:** Light Copy (Leandro Ladeira) + VTSD aplicados.
> **Cadência:** 8 e-mails distribuídos ao longo de ~14 dias.
> **Tom:** Como Clau fala no Direct — não como newsletter corporativa.
> **Plataforma:** Resend, Brevo, Mailchimp ou ActiveCampaign — qualquer uma serve. O importante é a automação por gatilho.
> **Gatilho de entrada:** cadastro no formulário do `curso.html` (campo `source: 'curso-aurora-lista-espera'`).

---

## 📐 Cadência sugerida

| # | Envio | Dia | Função |
|---|---|---|---|
| 01 | Imediato | D+0 | Bem-vinda + confirma vaga + entrega Big Idea |
| 02 | Manhã | **D+2** | Storytelling — origem do método |
| 03 | Manhã | **D+5** | Conteúdo de valor (não-venda) |
| 04 | Manhã | **D+8** | Caso real desidentificado |
| 05 | Manhã | **D+11** | Erro mais comum (bate na dor) |
| 06 | Manhã | **5 dias antes do carrinho abrir** | Aviso de abertura + reforço de bônus |
| 07 | Manhã | **Dia da abertura (D-day)** | Carrinho aberto · CTA pra Hotmart |
| 08 | Tarde | **24h antes do fim do carrinho** | Última chance · escassez real |

**Atenção:** o envio entre #6 e #8 depende da data exata do lançamento. Os 5 primeiros e-mails rodam automaticamente após o cadastro.

---

## 📧 E-mail 01 — Bem-vinda · D+0 (imediato)

**Função:** confirma a vaga + reforça os bônus + entrega 1 frase de valor que ela queira screenshotar.

### Cabeçalho
- **Assunto:** *Você tá na lista. (Agora deixa eu te contar uma coisa.)*
- **Pré-header:** Bônus pioneiros confirmados. E uma frase pra você guardar.
- **De:** Clau Carvalho <clau@claucarvalho.com>

### Corpo

> Oi, [primeiro nome] — tudo bem?
>
> Confirmadinho. Você tá na lista de espera do **Curso Método Aurora.** ✦
>
> Quando o carrinho abrir, você é uma das primeiras a saber. E os **bônus que prometi continuam reservados**:
>
> ✓ **50 primeiras a fechar** → encontro mensal ao vivo no Zoom comigo, durante 6 meses
> ✓ **10 primeiras a fechar** → atendimento 1 a 1 pelo meu WhatsApp por 30 dias
>
> Esses bônus saem da oferta quando o curso entrar em venda aberta. Quem chegou aqui — chegou primeiro.
>
> Mas eu não te chamei pra falar de bônus.
>
> Te chamei pra te falar uma coisa que vai mudar a sua carreira **antes mesmo do curso começar.** Vai aí:
>
> ---
>
> **Pós-operatório não é técnica. É leitura.**
>
> A maioria dos cursos por aí ensina manobra. *Faz assim, depois assim, depois assim.* Receita de bolo. Só que cada paciente é um caso. Tipo de pele, fase, cirurgia, sensibilidade, estado emocional. Tudo muda. E quando você aplica protocolo igual em corpo diferente, **o resultado fica medíocre.**
>
> Aí o paciente não vê diferença. E quando ele não vê diferença, qualquer outra fisio mais barata serve.
>
> A diferença entre cobrar R$100 e cobrar R$500 a sessão **não está na sua manobra.** Está no que vem antes dela. **No raciocínio clínico que ninguém te ensinou.**
>
> Guarda essa frase. Vou voltar nela várias vezes nas próximas semanas.
>
> ---
>
> Por enquanto, é isso.
>
> Te aviso aqui assim que o carrinho abrir.
>
> Beijo,
> **Clau**
>
> *PS: me responde esse e-mail com o que você espera do curso. Eu leio uma por uma.*

### Notas técnicas
- Salvar a tag `lead-aurora-bem-vinda` no contato pra evitar reenvio
- Remover do segmento "abandonou cadastro" se ele existir em outras automações
- Disparar Pixel Meta `Lead` confirmado nesse momento (server-side via Conversions API se possível)

---

## 📧 E-mail 02 — Storytelling: a origem · D+2 (manhã)

**Função:** humanizar a Clau · contar a virada · criar conexão.

### Cabeçalho
- **Assunto:** *A história que eu nunca contei em público (até hoje)*
- **Pré-header:** Por que eu parei de seguir receita — e construí o Aurora.

### Corpo

> Oi, [primeiro nome].
>
> Vou te contar uma coisa que eu nunca contei completa — nem em entrevista, nem em mentoria.
>
> Eu comecei como qualquer outra fisio.
>
> Aparelho. Creme. Drenagem padrão. Estudei tudo. Pagava cursos caros. Tentava aplicar receita que aprendia. **E mesmo assim, paciente reclamava.**
>
> Fibrose. Seroma. Demora pra desinchar. Indicava pra outra fisio depois. Não voltava.
>
> E eu me culpava.
>
> Achava que era a minha técnica. Que precisava de mais um curso. Mais um aparelho. Mais uma fórmula.
>
> Até o dia que eu tava atendendo uma paciente — abdominoplastia, 5º dia de pós — e percebi que o protocolo que tinha funcionado com a anterior **não tava funcionando com ela.** Mesma cirurgia. Mesmo cirurgião. Resultado completamente diferente.
>
> E foi ali, no meio da sessão, que eu **parei.** Olhei pra paciente. E pensei:
>
> *"Cada caso é um caso. E eu tô tratando todo mundo igual."*
>
> Naquele dia, eu **parei de seguir receita** e comecei a observar.
>
> Cada pele. Cada fase. Cada cirurgia. Cada estado emocional.
>
> E fui construindo o que hoje virou método. **Um método feito de raciocínio, não de protocolo.**
>
> Hoje, **mais de mil e duzentas pacientes** já passaram pela minha clínica. Cirurgião manda paciente direto pra mim antes de sair do bloco cirúrgico. Já formei mais de duzentas profissionais.
>
> Não porque eu sou a fisio mais barata. **É porque eu sou a única que faz exatamente isso.**
>
> Esse método tem nome. Aurora.
>
> E ele virou curso pra você não precisar levar 8 anos pra descobrir o que eu descobri.
>
> Beijo,
> **Clau**
>
> *PS: se você se identificou, me responde. Eu quero saber em que ponto da sua jornada você tá.*

### Notas técnicas
- Pode ter foto da Clau no topo do e-mail (uma das do MIV — terra/creme)
- CTA discreto no rodapé: *"Curiosa pra ver o que vai ter no curso? Olha aqui →"* (link pra LP)

---

## 📧 E-mail 03 — A grande sacada · D+5 (manhã)

**Função:** entregar conteúdo de valor (não-venda) · reforçar Big Idea · posicionar autoridade.

### Cabeçalho
- **Assunto:** *Por que aparelho de R$15 mil pode estar arruinando seu resultado*
- **Pré-header:** Tem uma coisa que ninguém te falou sobre eletroterapia.

### Corpo

> Oi, [primeiro nome].
>
> Vou ser direta com você.
>
> Se você usa aparelho com calor na região operada — radiofrequência, ultrassom térmico, qualquer coisa que aqueça — **pode estar arruinando o resultado da sua paciente.**
>
> E não é teoria.
>
> Calor na região operada acelera fibroblasto **de forma desordenada.** O corpo, em vez de cicatrizar de forma alinhada, gera fibrose. **A fibrose aparente.** Aquela que aparece como nodulação, retração, irregularidade visível.
>
> Aí a paciente:
>
> — Vê que tem caroço.
> — Volta no cirurgião.
> — Cirurgião diz "isso é fibrose, é normal".
> — Mas não é normal. É consequência.
>
> E o pior — você não tem como saber que foi o aparelho. Porque ninguém te falou.
>
> Ninguém te falou porque **a indústria de aparelhos vende a você que aparelho ajuda.** E os cursos que você fez foram patrocinados, direta ou indiretamente, por essa mesma indústria.
>
> O Método Aurora é **100% manual.** Sem eletroterapia na região operada. Não é frescura. **É consequência de oito anos atendendo paciente que veio com fibrose causada por aparelho.**
>
> Você não precisa parar de usar aparelho. Mas precisa saber **onde, quando e por quê.** E principalmente, **quando NÃO usar.**
>
> Isso é raciocínio clínico. Isso é o que separa fisio que cobra R$100 de fisio que cobra R$500.
>
> Vou voltar com mais.
>
> Beijo,
> **Clau**
>
> *PS: se essa informação fez sentido pra você, salva esse e-mail. Você vai querer voltar nele.*

### Notas técnicas
- Esse e-mail tem viral potential — pode pedir pra encaminhar
- CTA: *"Curso oficialmente abre em poucos dias. Quem tá na lista, garante condição especial →"*

---

## 📧 E-mail 04 — Caso real · D+8 (manhã)

**Função:** prova de que o método funciona · sem revelar identidade da paciente.

### Cabeçalho
- **Assunto:** *Caso real: ela chegou com fibrose. Saiu sem.*
- **Pré-header:** A virada de uma paciente em 28 dias — sem aparelho.

### Corpo

> Oi, [primeiro nome].
>
> Hoje eu quero te contar um caso real. **Sem nome, sem foto** — porque paciente é paciente, e respeito é respeito.
>
> Mas o caso é real. E recente.
>
> ---
>
> Cliente nova. Abdominoplastia há 45 dias. **Veio de outra fisio.**
>
> Chegou na clínica com fibrose visível na região do supra-umbilical. Já tinha feito 18 sessões com aparelho. Drenagem com creme. Ultrassom térmico. Tudo que se vende como "alta tecnologia".
>
> **Resultado:** abdome com nodulação. Sensibilidade dolorida ao toque. Frustração emocional.
>
> Cirurgião dela já tinha falado: *"Vou ter que fazer cirurgia de retoque."*
>
> Quando ela chegou, eu fiz três coisas:
>
> 1. **Avaliei o tipo de fibrose.** Não é "fibrose" genérica. Tem tipos. Cada um responde a uma abordagem.
> 2. **Suspendi tudo que tava sendo feito antes.** Aparelho zerado. Creme zerado.
> 3. **Construí um plano individualizado** com manobras específicas, dosagem ajustada por sessão e tape contensivo.
>
> Em **28 dias** — 12 sessões — a fibrose tinha **desaparecido.**
>
> O cirurgião cancelou a cirurgia de retoque.
>
> A paciente postou no Stories agradecendo. **A clínica dela virou agenda lotada de fisio que tinha feito o trabalho ruim.**
>
> ---
>
> O que eu tô te falando aqui não é sobre a manobra. **É sobre o raciocínio.**
>
> Eu li o caso antes de tocar. Suspendi o que tava errado. Apliquei o método.
>
> E o que eu vou te ensinar no Curso Método Aurora **é exatamente isso.**
>
> Não como decorar manobra. **Como ler caso.**
>
> Beijo,
> **Clau**
>
> *PS: o curso abre em poucos dias. Quem tá na lista é a primeira a saber.*

### Notas técnicas
- Esse e-mail é o que mais converte historicamente em sequências assim — caso real bate em 3 gatilhos: prova social, identificação e desejo
- Pode ter foto da Clau na clínica (sem paciente)

---

## 📧 E-mail 05 — O erro mais comum · D+11 (manhã)

**Função:** bater forte na dor + posicionar o curso como solução · prepara o lançamento.

### Cabeçalho
- **Assunto:** *O erro que toda fisio comete (e que custa R$10 mil/mês a ela)*
- **Pré-header:** Não é técnica. É outra coisa. E você precisa parar agora.

### Corpo

> Oi, [primeiro nome].
>
> Vou te falar o **erro número 1** que faz fisio boa cobrar mal.
>
> Não é falta de técnica. Não é Instagram fraco. Não é a crise.
>
> É isso aqui:
>
> **Cobrar por sessão, não por resultado.**
>
> Quando você cobra R$120 a sessão de drenagem, você se posicionou — **na mente da paciente** — como prestador de serviço por hora. Tipo manicure, cabeleireira, esteticista de beleza.
>
> Aí qualquer outra fisio que cobra R$80 serve. Não tem motivo pra ela escolher você. **Você não criou diferença na cabeça dela.**
>
> Cirurgião pensa o mesmo. Quando ele te indica como "fisio que cobra R$120", **ele te coloca no balaio das genéricas.** Próxima cirurgia, ele indica outra. Próxima, outra. Você é descartável.
>
> Agora — quando você cobra **R$5.000 pelo pacote completo de pós-op de abdominoplastia**, com plano individualizado, assistência 24h e protocolo do dia 0 ao dia 60 — você muda de categoria.
>
> Você vira **especialista.**
>
> Cirurgião indica antes de a paciente sair do bloco. Paciente paga sem reclamar — porque entende que tá comprando **resultado**, não tempo. E a sua agenda fecha com 30 dias de antecedência.
>
> Mas pra cobrar por resultado, você precisa **garantir o resultado.**
>
> E pra garantir resultado, você precisa de **método.**
>
> ---
>
> Cobrar por hora é trabalho de quem segue receita.
> Cobrar por resultado é trabalho de quem domina raciocínio clínico.
>
> O Curso Método Aurora te leva de uma pra outra.
>
> Carrinho abre nos próximos dias. Você é a primeira a saber.
>
> Beijo,
> **Clau**
>
> *PS: pensa nisso até amanhã. Quanto você cobra por sessão hoje? E quanto você poderia cobrar se posicionasse o serviço como pacote? A matemática vai te chocar.*

### Notas técnicas
- Esse e-mail prepara emocionalmente pra abertura do carrinho — é o último de aquecimento
- CTA mais explícito: *"Curso abre dia X. Já garanti seu lugar →"* (link pra LP)

---

## 📧 E-mail 06 — Aviso de abertura · 5 dias antes do D-day

**Função:** marcar a data · reforçar bônus · criar contagem regressiva mental.

### Cabeçalho
- **Assunto:** *5 dias. (E você é uma das primeiras a saber.)*
- **Pré-header:** Marcou na agenda? Curso abre dia [DIA] às [HORA].

### Corpo

> Oi, [primeiro nome].
>
> Anota essa data:
>
> **[DIA] de [MÊS], [HORA].**
>
> O Curso Método Aurora abre oficialmente. E quem tá na lista de espera — você — é uma das primeiras a saber.
>
> ---
>
> Vou recapitular pra você ter na cabeça:
>
> ✓ **49 aulas. 9 módulos. ~18 horas de conteúdo.**
> ✓ **14 aulas com paciente real** — 8 cirurgias diferentes filmadas
> ✓ **Acesso vitalício** + **Comunidade fechada** + **Atualizações inclusas**
> ✓ **Garantia de 7 dias** — se não for pra você, devolve 100%
>
> E os bônus que **só quem tá na lista garante:**
>
> ✦ **Pras 50 primeiras** — encontro mensal no Zoom comigo, em grupo, durante 6 meses
> ✦ **Pras 10 primeiras** — mentoria 1 a 1 pelo meu WhatsApp por 30 dias
>
> Esses bônus **saem da oferta** quando o carrinho abrir pra venda pública.
>
> ---
>
> Investimento de pré-lançamento: **R$ 2.000** (em até 12× no cartão).
>
> Plataforma: Hotmart. Pagamento seguro. Acesso liberado na hora.
>
> ---
>
> Em 5 dias eu te mando o link.
>
> Vai chegar primeiro pra você.
>
> Beijo,
> **Clau**
>
> *PS: se você quer ser uma das 10 primeiras (e ganhar a mentoria 1 a 1 comigo), prepara o cartão. Quando o link sair, abre num navegador rápido. As 10 fecham em horas.*

### Notas técnicas
- Substituir [DIA] / [MÊS] / [HORA] na automação — depende da data definida
- Pode ter contador visual no e-mail (HTML countdown timer)

---

## 📧 E-mail 07 — Carrinho aberto · Dia D (D-day)

**Função:** anunciar abertura · conduzir ao checkout · criar urgência inicial.

### Cabeçalho
- **Assunto:** *Tá no ar. (Os bônus saem em 48h.)*
- **Pré-header:** Curso Método Aurora aberto. Sua condição especial está garantida.

### Corpo

> Oi, [primeiro nome].
>
> **Tá no ar.**
>
> O Curso Método Aurora oficialmente abriu. E você — que tá na lista desde o começo — tem prioridade.
>
> 👉 **[LINK DO HOTMART AQUI]**
>
> Quando você clicar, vai cair direto na página de checkout com a **condição especial de pré-lançamento**:
>
> ✓ R$ 2.000 (em até 12×)
> ✓ Acesso vitalício
> ✓ Garantia 7 dias
> ✓ Todos os materiais e bônus inclusos
>
> ---
>
> **Bônus pioneiros — atenção:**
>
> ✦ Pras **10 primeiras** que fecharem → mentoria 1 a 1 comigo no WhatsApp por 30 dias
> ✦ Pras **50 primeiras** que fecharem → encontro mensal no Zoom comigo por 6 meses
>
> Os 10 primeiros lugares costumam fechar **em horas.** Os 50 primeiros, em **menos de 24h.** Depois disso, esses bônus saem da oferta.
>
> ---
>
> Em 48 horas, os bônus pioneiros encerram.
>
> Em 7 dias, o carrinho fecha.
>
> Não é urgência fabricada. É como o lançamento foi planejado — e tá igual pra todo mundo da lista.
>
> Te vejo lá dentro.
>
> Beijo,
> **Clau**
>
> *PS: dúvida? Responde esse e-mail. Eu leio e respondo pessoalmente nas próximas 48h.*

### Notas técnicas
- Substituir [LINK DO HOTMART AQUI] pelo link real do checkout
- Disparar Pixel `InitiateCheckout` quando ela clicar no link
- Pode ter botão de WhatsApp pra dúvida ("Falar com a Clau")

---

## 📧 E-mail 08 — Última chance · 24h antes do fim

**Função:** escassez real · puxar quem ainda está em cima do muro.

### Cabeçalho
- **Assunto:** *Faltam 24h. (Depois disso, é R$ 2.500 e sem os bônus.)*
- **Pré-header:** Última chance da condição de pré-lançamento.

### Corpo

> Oi, [primeiro nome].
>
> Vou ser bem direta porque tempo é curto.
>
> O Curso Método Aurora **fecha o carrinho amanhã às [HORA].**
>
> A partir de [DIA + 1], o curso continua disponível — mas:
>
> ✕ Preço sobe pra R$ 2.500
> ✕ Bônus pioneiros (Zoom mensal · WhatsApp 1:1) **saem da oferta**
> ✕ Próxima abertura é só em [PRÓXIMA DATA / "no segundo semestre"]
>
> ---
>
> Se você chegou até aqui na lista, é porque alguma coisa do que eu falei nesses dias bateu.
>
> Pode ter sido a frase **"pós-op não é técnica, é leitura"**.
> Pode ter sido o caso real da paciente que teve fibrose desfeita em 28 dias.
> Pode ter sido o e-mail sobre o erro de cobrar por hora.
>
> Tudo isso é parte do método. **E é uma fração mínima do que tem dentro do curso.**
>
> ---
>
> 👉 **[LINK DO HOTMART]**
>
> Garante seu acesso. Garante seus bônus. Garante a condição.
>
> Em 7 dias, se não for pra você, devolvo 100%.
>
> Em 7 anos, você vai olhar pra trás e saber que essa foi uma das melhores decisões de carreira que você tomou.
>
> Te espero lá dentro.
>
> Beijo,
> **Clau**
>
> *PS: dúvida específica? Me chama no WhatsApp [LINK]. Eu respondo nas próximas 24h, pessoalmente.*

### Notas técnicas
- Substituir [HORA] / [DIA + 1] / [PRÓXIMA DATA] e os links do Hotmart
- Esse e-mail pode ser enviado às 9h ou às 14h — testar
- Quem clica e não converte deve cair em retargeting Meta com criativo específico de "última chance"

---

## 🎯 Princípios aplicados nessa sequência

1. **Não vende em todos os e-mails.** 5 dos 8 são storytelling/conteúdo — só os últimos 3 são vendas explícitas.
2. **Cada e-mail entrega 1 coisa.** Não tenta resolver tudo. Foco.
3. **PS sempre presente.** Light Copy ama PS — costuma ser a parte mais lida do e-mail.
4. **CTA claro mas não invasivo nos 5 primeiros.** Conteúdo primeiro. Venda depois.
5. **Específico bate genérico.** "Mais de 1.200 pacientes", "12 sessões em 28 dias", "R$ 5.000 pacote completo". Tudo concreto.
6. **Tom de Direct.** *"Beijo, Clau"* · *"Vou ser direta"* · *"Olha"* — como ela fala, não como copywriter genérico fala.

---

## 🔧 Setup técnico

### Plataformas recomendadas
| Plataforma | Quando usar | Custo |
|---|---|---|
| **Resend** | Quem tem dev + Supabase rolando | ~$20/mês até 100k |
| **Brevo** (ex-Sendinblue) | Plug-and-play, automação visual | Grátis até 300/dia |
| **ActiveCampaign** | Quando lista passa de 5k contatos | $15+/mês |
| **Mailchimp** | Familiaridade · interface simples | Grátis até 500 |

### Integração com Supabase (recomendado)
- **Trigger:** novo INSERT em `clau_leads` com `source = 'curso-aurora-lista-espera'`
- **Edge Function:** dispara webhook pra plataforma de e-mail (Resend/Brevo)
- **Tag:** contato entra com tag `lead-aurora-pre-lancamento`
- **Automação:** sequência de 8 e-mails roda automaticamente

### Métricas pra acompanhar
| Métrica | Meta | O que indica se cair |
|---|---|---|
| Open rate (abertura) | 35–55% | Assunto fraco · reescrever |
| CTR (clique) | 8–15% | CTA fraco ou conteúdo desconectado |
| Conversão lead → comprador | 5–8% | Sequência precisa de mais aquecimento |
| Unsubscribe | < 0.8% | Frequência alta ou tom errado |

### A/B test a fazer
- **Assuntos** (e-mails 1, 6, 7) — testar 2 variações com 50/50 split
- **Horário de envio** — manhã (8–9h) vs tarde (14–15h)
- **Subject line emoji** — com ✦ vs sem · medir abertura

---

## 📋 Checklist de implementação

- [ ] Definir plataforma de e-mail (Resend/Brevo/etc)
- [ ] Configurar SPF, DKIM e DMARC no domínio (pra não cair em spam)
- [ ] Criar template visual base (header com logo · assinatura com foto da Clau · footer com unsubscribe)
- [ ] Criar automação de gatilho a partir do Supabase
- [ ] Inserir os 8 e-mails na automação
- [ ] Definir delays (D+0 imediato · D+2 · D+5 · D+8 · D+11 · D-5 · D-day · D-1 do fim)
- [ ] Adicionar variáveis dinâmicas: [primeiro nome], [LINK HOTMART], [DIA], [HORA]
- [ ] Testar fluxo com e-mail próprio antes de ativar
- [ ] Configurar Pixel/CAPI pra disparar `Lead` no e-mail #1 e `InitiateCheckout` no clique do #7
- [ ] Documentar segmento "abriu mas não comprou" pra retargeting

---

## 💡 Variações pra tribuir entre e-mails

Se o lead **abriu** mas **não converteu** depois do e-mail 8, criar segmento:
- `lead-aurora-abriu-nao-comprou`

Pra esse segmento, criar 2 e-mails extras:
1. **D+1 do fim:** *"Carrinho fechou. Mas tem uma coisa..."* — abre lista de espera pra próxima turma
2. **D+7:** *"Pesquisa rápida"* — pergunta o motivo de não comprar (resposta livre · vira insight pra próximo lançamento)

Esses 2 e-mails extras **não são vendas** — são captura de informação. O insight ganho aqui muda o próximo lançamento.
