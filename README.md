![image](https://github.com/user-attachments/assets/dd55e169-cb3e-4b78-b666-63bd3092f4f6)

---


# Curso:
Engenharia Informática

# Elementos do Grupo:
Inês Domingos - 20231458 <br>
Reginaldo António - 20251544 <br>
Evandra Biala - 20251550 <br>
Catarina Lourenço - 20251192

**Repositório no GitHub:** https://github.com/arinesu/Origami

# Professores
**Programação de Dispositivos Móveis**
<br>João Monge

**Redes e Comunicação de Dados**
<br>Pedro Rosa

**Bases de Dados**
<br>Miguel Boavida

**Interfaces e Usabilidade**
<br>Paula Neves

**Matemática Discreta**
<br>Ricardo Manuel de Sousa


# Relatório - Projeto Mobile - Origami
• Origami é uma aplicação móvel concebida com o intuito de promover a saúde mental e facilitar a expressão emocional, através do fornecimento de um espaço digital anónimo, imersivo e reconfortante. O seu objetivo é mitigar o isolamento e a dificuldade em partilhar sentimentos, oferecendo um mapa interativo onde os desabafos navegam como barcos de papel, um sistema de acompanhamento diário mediado por um "Espírito Guia", e a possibilidade de descobrir e guardar barcos de papel com desabafos anónimos, deixados à deriva no mapa por utilizadores aleatórios. Sem recorrer a mensagens diretas, estes textos são lançados para o globo sem um destinatário específico, promovendo uma rede orgânica de empatia e um verdadeiro porto seguro virtual.

# Palavras-Chave
• Aplicação Móvel, saúde mental, expressão emocional, anonimato, empatia, mapa interativo, barcos de papel, acompanhamento de humor.

# Objetivos e Motivação
## **Motivação:**
Com a dependência crescente das redes sociais convencionais, que frequentemente promovem a ansiedade e a constante necessidade de validação (através de likes ou seguidores), torna-se essencial conceber alternativas digitais dedicadas à serenidade. A idealização deste projeto surge da vontade de criar um escape à hiperconexão moderna, oferecendo um espaço de pausa. Pretendemos dar resposta à urgência de um ambiente onde a vulnerabilidade seja acolhida sem julgamentos ou pressões sociais, substituindo a comunicação imediata por uma interação contemplativa e livre de atritos.

## **Objetivos:**
• Fomentar a prática da escrita terapêutica (journaling) e da autorreflexão através de uma abordagem gamificada e isenta de métricas de popularidade.
• Proporcionar um sentimento de comunidade global indireta, permitindo que os utilizadores encontrem conforto e empatia nas vivências partilhadas por outras pessoas.
• Desenvolver um mecanismo de acompanhamento emocional não intrusivo, que auxilie o utilizador a monitorizar o seu estado de espírito diariamente.
• Entregar uma experiência de utilização (UX/UI) apaziguadora, pautada pelo minimalismo visual, uso de texturas orgânicas e navegação fluida, reduzindo ao máximo a carga cognitiva.

# Público-Alvo
• Jovens e Jovens Adultos (Geração Z e Millennials) que procuram um refúgio digital face à pressão, métricas e toxicidade das redes sociais convencionais;
• Indivíduos que lidam com stress, ansiedade ou isolamento, e que necessitam de um espaço seguro e totalmente anónimo para desabafar sem receio de julgamento;
• Pessoas introvertidas com dificuldade em verbalizar ou expressar os seus sentimentos diretamente a amigos e familiares;
• Praticantes de journaling e mindfulness interessados numa ferramenta poética e imersiva para monitorizar o seu estado de espírito diário;
• Utilizadores à procura de empatia e apoio mútuo, que encontram conforto na leitura e partilha de vulnerabilidades com uma comunidade global anónima.

# Aplicações Semelhantes
1. Bottled: Aplicação que permite lançar mensagens num "mar" virtual dentro de uma garrafa. Embora partilhe uma metáfora visual semelhante à do nosso projeto, o seu foco é puramente social, funcionando através da abertura obrigatória de canais de chat direto (1-para-1) sempre que uma garrafa é guardada por outro utilizador. O seu objetivo central é a criação de amizades globais ou ligações românticas, aproximando-se da dinâmica de uma rede social de correspondência ou aplicação de encontros.
2. Slowly: Focada na troca de cartas digitais com correspondentes globais, prioriza o anonimato e uma comunicação mais intencional e lenta, afastando-se da ansiedade e do imediatismo das redes sociais tradicionais.
3. Finch (ou Wysa): Aplicações de autocuidado e saúde mental que utilizam um "guia" ou mascote virtual (como um pássaro ou um pinguim) para ajudar o utilizador a monitorizar o seu humor diário e praticar a autorreflexão.

# Guiões de Teste
## Caso de Utilização Principal: Libertação de um Desabafo no Mapa (Core)
1. O utilizador faz o login ou cria uma conta;
2. É recebido pelo seu Espírito Guia (ex: Grou, Tartaruga ou Baleia) que lhe pergunta como se sente hoje;
3. O utilizador escreve o seu desabafo ou pensamento numa caixa de texto com textura de papel;
4. Ao concluir, seleciona a emoção predominante (ex: Ansiedade, Esperança) que ficará associada como uma tag ao seu barco;
5. Clica no botão para "Lançar", e visualiza uma animação do seu texto a dobrar-se num barco de papel;
6. O ecrã transita para o mapa global, onde o utilizador vê o seu barco a juntar-se a outros barcos a flutuar no "mar".

## Casos de Utilização Secundários:
**- Descoberta e Recolha de Barcos:**
1. O utilizador encontra-se no ecrã do mapa global interativo;
2. Navega pelo mapa e seleciona um barco de papel deixado à deriva por um utilizador anónimo;
3. O barco desdobra-se, revelando o texto do desabafo e a emoção associada;
4. O utilizador sente empatia pela mensagem e seleciona a opção "Guardar no meu Porto Seguro";
5. A mensagem é adicionada à sua coleção pessoal no ecrã de Perfil para leitura futura, promovendo uma rede de apoio indireta.

**- Consulta do Histórico Pessoal (Porto Seguro):**
1. O utilizador acede ao seu menu de Perfil (identificado pelo seu Avatar e Nickname anónimo);
2. Seleciona o separador "Os Meus Barcos" para rever os desabafos que já lançou ao mar no passado;
3. Alterna para o separador "Barcos Guardados";
4. Visualiza as mensagens empáticas de outros utilizadores que colecionou, organizadas num layout estilo "alvenaria" (como pequenos post-its de papel sobrepostos).

# Descrição da solução

**1. Descrição Genérica:**

- A solução consiste na criação de uma **aplicação móvel imersiva e focada na saúde mental**, que oferece uma experiência segura e anónima de expressão emocional. Inclui funcionalidades como um **mapa global interativo** onde navegam mensagens em forma de barcos de papel, um sistema de **acompanhamento diário de humor** mediado por um "Espírito Guia", e a possibilidade de recolher e colecionar mensagens de empatia deixadas por outros utilizadores num "Porto Seguro" (perfil pessoal).

**2. Enquadramento nas Unidades Curriculares:**

- **Programação de Dispositivos Móveis:** Desenvolvimento da aplicação móvel (interface e lógica client-side) recorrendo a **Flutter e Dart**. <br>
- **Interfaces e Usabilidade:** Desenho, prototipagem e validação da experiência do utilizador (UX/UI) no **Figma**, garantindo uma navegação fluida, minimalista e a aplicação de texturas visuais (como o efeito de papel e glassmorphism).<br>
- **Redes e Comunicação de Dados:** Implementação da arquitetura de comunicação entre a aplicação móvel (frontend) e o servidor (backend), assegurando a transmissão segura e eficiente dos dados (como o envio e recolha dos barcos no mapa global).<br>
- **Bases de Dados:** Estruturação e armazenamento seguro das informações essenciais, tais como as credenciais anonimizadas dos utilizadores, o registo de humor diário e o histórico das mensagens (barcos) partilhadas e guardadas.<br>
- **Matemática Discreta:** Aplicação do **Método de Monte Carlo** para otimizar o algoritmo de distribuição dos barcos de papel no mapa global. Esta lógica garantirá que a visualização das mensagens seja dispersa, pseudoaleatória e eficiente, simulando estatisticamente o seu posicionamento e evitando sobreposição de barcos no ecrã.<br>

**3. Requisitos Técnicos:**

- **Linguagens de Programação:** Dart (Frontend) e JavaScript/TypeScript (Backend).<br>
- **Plataforma de Desenvolvimento:** Flutter.<br>
- **Design e Prototipagem:** Figma.<br>
- **Base de Dados:** MySQL (via MySQL Workbench).<br>
- **API:** Node.js.<br>

**4. Arquitetura da Solução:** 

• **Frontend:** Desenvolvimento da interface gráfica e interatividade da aplicação em Flutter, consumindo os serviços da API.<br>
• **Backend:** Utilização de Node.js para gerir a lógica de negócio, a autenticação anonimizada e a comunicação fluida entre a aplicação móvel e a base de dados.<br>
• **Base de Dados:** Utilização de MySQL para modelação e persistência dos dados (utilizadores, barcos e registos de humor).<br>

**5. Tecnologias a utilizar:** 

• **Frontend:** Flutter.<br>
• **Backend:** Node.js.<br>
• **Base de Dados:** MySQL.<br>


# Project Charter

**1. General Project Information**

- Charter Date: 19 September 2026
- Project Name: Origami
- Project Managers: <br>
Inês Domingos <br>
Reginaldo António <br>
Evandra Biala <br>
Catarina Lourenço 

- Expected Start Date: 1 October 2026
- Expected Completion Date: 11 December 2026

**2. Project Details**

- Origami is a mobile application designed to promote mental health and facilitate emotional expression by providing an anonymous, immersive, and comforting digital space. The main reason behind this project is to create an alternative to conventional social networks, mitigating isolation and the difficulty in sharing feelings. By replacing the anxiety of likes and direct messaging with a contemplative environment where users can release their thoughts as paper boats on a global map, we aim to offer a digital refuge and a true virtual safe haven.

**3. Key Requirements**

  - **Database:** MySQL for data storage, connected to the backend via REST API.
  - **UI/UX Design:** User interface designed in Figma, following a minimalist aesthetic with analog-inspired textures (crumpled paper, glassmorphism) for a relaxing experience.
  - **Mobile Programming:** Developed in Flutter using Dart, ensuring a smooth native experience.
  - **Backend Programming:** Backend developed in Node.js, with RESTful APIs to manage data and communicate securely with the database.   
  - **Platform:** Native Android app, compatible with modern Android devices.

**4. Expected Benefits**

- Improved Mental Well-being: The application offers a therapeutic space for journaling and self-reflection, helping users manage daily stress and anxiety.
- Anonymous Support Network: The ability to discover and save empathetic messages (paper boats) left by random users fosters a sense of indirect global community and mutual support without the pressure of direct communication.
- Emotional Monitoring: A non-intrusive emotional tracking mechanism, mediated by a "Spirit Guide," helps users monitor their daily mood over time.
- Reduced Cognitive Load: The minimalist and soothing UX/UI design ensures a frictionless and relaxing user experience, countering the overwhelm typical of modern social media.

**5. Estimated Costs & Resources**

- Estimated Costs: $3000
- Resources: $450

**6. Estimated Milestones**

- UI/UX Design - September 28
- Database - December 13
- Mobile Programming - December 20
- Backend Programming - January 10

**7. Project Team**

Developers:
- Inês Domingos
- Reginaldo António
- Evandra Biala
- Catarina Lourenço

**8. Overall Project Risk**

Risks:
- Due to the limited time to complete the project, there is a risk that we will not be able to implement all the desired functionalities (such as the complex map visualization).
- The unconventional approach to social interaction (no direct messaging, anonymity) might result in a learning curve for users accustomed to traditional social media, potentially compromising initial adoption.

Mitigations:
- Conduct development and brainstorming sessions to prioritize essential features (the core loop of writing and releasing a boat) and ensure better project planning.
- Collect feedback from a group of beta users during the testing phase to identify areas for improvement in the onboarding process and promote acceptance of the app's unique mechanics.

**9. Project Success Criteria**

- If all core features are working and public acceptance is favorable, indicating that the app successfully provides a relaxing and safe environment for emotional expression, we could consider expanding the platform's reach or partnering with mental health awareness initiatives to promote the app to individuals dealing with anxiety or isolation.


# WBS - Work Breakdown Structure

**1. Iniciação e Planeamento**

- 1.1. Definição do Escopo e Ideia Inicial
- 1.2. Elaboração do Project Charter e WBS
- 1.3. Criação do Plano de Trabalhos e Gráfico de Gantt
- 1.4. Definição da Arquitetura e Stack Tecnológico

**2. Levantamento de Requisitos e Modelação**

- 2.1. Definição dos Requisitos Funcionais e Não Funcionais
- 2.2. Criação dos Guiões de Teste
- 2.3. Elaboração do Modelo de Domínio (Entidades e Relações)

**3. Design e Prototipagem (UI/UX - Figma)**

- 3.1. Exploração Visual (Texturas orgânicas, glassmorphism, paleta de cores)
- 3.2. Desenho de Mockups de Alta Fidelidade
 - 3.2.1. Ecrãs de Autenticação (Login e Sign Up)
 - 3.2.2. Ecrã de Check-in de Humor (Espírito Guia)
 - 3.2.3. Ecrã Principal (Mapa Global e Barcos Interativos)
 - 3.2.4. Ecrã de Perfil (Porto Seguro / Histórico em Masonry Layout)
- 3.3. Implementação do Protótipo Interativo (Animações e ligações)

**4. Desenvolvimento Backend (Node.js, REST API, MySQL)**

- 4.1. Configuração do Servidor Node.js e Ambiente de Desenvolvimento
- 4.2. Criação e Estruturação da Base de Dados
- 4.3. Desenvolvimento da REST API
- 4.4. Implementação da Lógica de Negócio (Gestão de anonimato, lançamento e recolha de barcos)

**5. Desenvolvimento Frontend (Flutter, Dart)**

- 5.1. Configuração do Projeto Mobile
- 5.2. Implementação das Interfaces Gráficas
- 5.3. Integração do Frontend com a REST API
- 5.4. Implementação da Lógica de Navegação e Sistema de Partilha de Emoções no Mapa

**6. Testes e Controlo de Qualidade**

- 6.1. Testes de Usabilidade da Interface
- 6.2. Testes de Integração (Conexão Frontend-Backend)
- 6.3. Execução dos Guiões de Teste (Validação do Caso "Core" e Secundários)

**7. Documentação e Entregáveis Finais**

- 7.1. Redação e Submissão do Relatório do Projeto (GitHub / PDF)
- 7.2. Design do Poster da Aplicação
- 7.3. Gravação e Edição do Vídeo Promocional (1 a 2 minutos)
- 7.4. Preparação da Apresentação Final (Pitch)

# Requisitos funcionais e não funcionais

**Requisitos Funcionais**

- O sistema deve permitir o registo e a autenticação anónima de utilizadores, sem recolha de dados pessoais identificáveis.
- O sistema deve apresentar um check-in diário de humor, onde o utilizador interage com o seu "Espírito Guia" para registar o seu estado emocional.
- O sistema deve disponibilizar uma área de edição de texto para a escrita de desabafos, permitindo a associação de uma tag de emoção primária à mensagem.
- O sistema deve converter o desabafo escrito num "barco de papel" e lançá-lo visualmente num mapa global interativo.
- O sistema deve permitir ao utilizador navegar pelo mapa global, descobrindo e abrindo barcos de papel deixados à deriva por outros utilizadores aleatórios.
- O sistema deve oferecer a opção de guardar as mensagens de outros utilizadores na secção "Porto Seguro" do perfil.
- O sistema deve apresentar o histórico pessoal do utilizador (barcos lançados e barcos guardados) através de uma interface organizada em grelha assimétrica (masonry layout).

**Requisitos Não Funcionais**

- Usabilidade (UX/UI): A interface deve adotar uma estética imersiva e minimalista, utilizando um modo noturno (tons índigo), texturas orgânicas (papel amachucado) e elementos em glassmorphism para induzir relaxamento e reduzir a carga cognitiva.
- Privacidade e Proteção: A aplicação deve bloquear qualquer possibilidade de troca de mensagens diretas (chat 1-para-1) ou de identificação de autores, assegurando que o foco permanece na empatia e na saúde mental.
- Desempenho (Algoritmo de Dispersão): O carregamento do mapa global deve ser fluido, utilizando o Método de Monte Carlo na distribuição espacial dos barcos de papel, evitando a sobreposição de elementos no ecrã e garantindo tempos de resposta rápidos na REST API.
- Tecnológicos (Frontend): A aplicação móvel (cliente) deve ser desenvolvida utilizando a linguagem Dart e a framework Flutter.
- Tecnológicos (Backend e Dados): A lógica de negócio e a interligação de dados devem ser geridas por uma API REST desenvolvida em Node.js, com armazenamento persistente e seguro numa base de dados relacional MySQL.


### Modelo do Domínio

O modelo de domínio da aplicação Origami é composto pelas seguintes entidades principais e respetivas relações:

#### 1. Utilizador (User)
Representa o indivíduo que utiliza a aplicação de forma anónima.
- **Atributos:**
  - `ID_Utilizador` (Identificador único)
  - `Nickname` (Nome anónimo gerado ou escolhido)
  - `Avatar_ID` (Ícone representativo do perfil)
  - `Data_Criacao` (Data de registo na plataforma)

#### 2. Barco (Desabafo / Message)
Representa a mensagem escrita pelo utilizador e lançada no mapa global.
- **Atributos:**
  - `ID_Barco` (Identificador único)
  - `Texto` (O conteúdo do desabafo)
  - `Tag_Emocao` (Emoção principal associada, ex: Esperança, Ansiedade)
  - `Data_Lancamento` (Data e hora em que o barco foi lançado)
  - `Coordenadas` (Latitude e Longitude simuladas para posicionamento no mapa)
  - `Autor_ID` (Chave estrangeira - Referência ao Utilizador que criou)

#### 3. Registo de Humor (Check-in Diário)
Representa a interação diária do utilizador com o Espírito Guia.
- **Atributos:**
  - `ID_Registo` (Identificador único)
  - `Estado_Espirito` (O humor selecionado no dia)
  - `Data_Registo` (Data do check-in)
  - `Utilizador_ID` (Chave estrangeira - Referência ao Utilizador)

#### 4. Porto Seguro (Barcos Guardados / Saved Boats)
Entidade de associação que regista quais os barcos de outros utilizadores que um determinado utilizador decidiu guardar e colecionar.
- **Atributos:**
  - `Utilizador_ID` (Chave estrangeira - Identificador do utilizador que guardou o barco)
  - `Barco_ID` (Chave estrangeira - Identificador do barco guardado)
  - `Data_Recolha` (Data em que o barco foi adicionado ao Porto Seguro)

#### Relações Principais:
- **1 para Muitos (1:N):** Um *Utilizador* pode criar e lançar vários *Barcos*, mas cada *Barco* é criado por um único autor.
- **1 para Muitos (1:N):** Um *Utilizador* pode ter vários *Registos de Humor* ao longo do tempo (um por dia).
- **Muitos para Muitos (N:M):** Um *Utilizador* pode guardar vários *Barcos* de outras pessoas no seu "Porto Seguro", e um *Barco* deixado à deriva no mapa pode ser guardado por vários *Utilizadores* diferentes ao mesmo tempo.


# MockUps:

A aplicação utilizada foi o Figma:
- 

# Planeamento (Gráfico de Gantt):

| Fase do Projeto | Tarefas Principais | Início Estimado | Fim Estimado | Responsável |
| :--- | :--- | :--- | :--- | :--- |
| **1. Iniciação e Planeamento** | Definição da ideia, Project Charter, WBS, Requisitos e Relatório Inicial | 16 Setembro 2026 | 02 Outubro 2026 | Inês Domingos |
| **2. Design e UX/UI** | Estudo de UI, texturas (papel/glassmorphism), Mockups no Figma e Protótipo | 03 Outubro 2026 | 20 Novembro 2026 | Inês Domingos |
| **3. Arquitetura e Dados** | Modelo de domínio, configuração do MySQL e estrutura da Base de Dados | 21 Novembro 2026 | 13 Dezembro 2026 | Inês Domingos |
| **4. Programação (Frontend/Backend)**| Código Mobile em Flutter/Dart, Backend em Node.js e integração via API REST | 14 Dezembro 2026 | 29 Dezembro 2026 | Inês Domingos |
| **5. Testes e Afinações** | Execução dos guiões de teste, correção de bugs e testes de usabilidade | 30 Dezembro 2026 | 05 Janeiro 2027 | Inês Domingos |
| **6. Entregáveis Finais** | Criação do vídeo promocional, edição do poster e preparação da apresentação | 06 Janeiro 2027 | 12 Janeiro 2027 | Inês Domingos |
