![image](https://github.com/user-attachments/assets/dd55e169-cb3e-4b78-b666-63bd3092f4f6)

---


# Curso:
Engenharia Informática

# Elementos do Grupo:
Inês Domingos - 20231458

Repositório no GitHub:

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
- **Programação de Dispositivos Móveis:** Desenvolvimento nativo da aplicação móvel (interface e lógica client-side) recorrendo ao **Android Studio**. <br>

- **Interfaces e Usabilidade:** Desenho, prototipagem e validação da experiência do utilizador (UX/UI) no **Figma**, garantindo uma navegação fluida, minimalista e a aplicação de texturas visuais (como o efeito de papel e glassmorphism).<br>

- **Redes e Comunicação de Dados:** Implementação da arquitetura de comunicação entre a aplicação móvel (frontend) e o servidor (backend), assegurando a transmissão segura e eficiente dos dados (como o envio e recolha dos barcos no mapa global).<br>

- **Bases de Dados:** Estruturação e armazenamento seguro das informações essenciais, tais como as credenciais anonimizadas dos utilizadores, o registo de humor diário e o histórico das mensagens (barcos) partilhadas e guardadas.<br>

- **Matemática Discreta:** Aplicação de lógica matemática e teoria dos grafos/conjuntos para otimizar o algoritmo de distribuição dos barcos de papel no mapa global. Esta lógica garantirá que a visualização das mensagens seja dispersa, pseudoaleatória e eficiente, evitando sobreposição de barcos no ecrã.<br>

**3. Requisitos Técnicos:**

- **Linguagens de Programação:** Kotlin (Frontend) e Java (Backend).<br>

- **Plataforma de Desenvolvimento:** Android Studio.<br>

- **Design e Prototipagem:** Figma.<br>

- **Base de Dados:** MySQL (via MySQL Workbench).<br>

- **API:** Spring Boot.<br>

**4. Arquitetura da Solução:**<br>

• **Frontend:** Desenvolvimento da interface gráfica e interatividade da aplicação no Android Studio, consumindo os serviços da API.<br>

• **Backend:** Utilização da framework Spring Boot para gerir a lógica de negócio, a autenticação anonimizada e a comunicação fluida entre a aplicação móvel e a base de dados.<br>

• **Base de Dados:** Utilização de MySQL para modelação e persistência dos dados (utilizadores, barcos e registos de humor).<br>

**5. Tecnologias a utilizar:**<br>

• **Frontend:** Kotlin.<br>

• **Backend:** Java.<br>

• **Base de Dados:** MySQL.<br>

# Project Charter
**1. General Project Information**
- Charter Date: 19 September 2026

- Project Name: Origami

- Project Managers: Inês Domingos

- Expected Start Date: 1 October 2026

- Expected Completion Date: 11 December 2026

**2. Project Details**
- Origami is a mobile application designed to promote mental health and facilitate emotional expression by providing an anonymous, immersive, and comforting digital space. The main reason behind this project is to create an alternative to conventional social networks, mitigating isolation and the difficulty in sharing feelings. By replacing the anxiety of likes and direct messaging with a contemplative environment where users can release their thoughts as paper boats on a global map, we aim to offer a digital refuge and a true virtual safe haven.

**3. Key Requirements**

  - **Database:** MySQL for data storage, connected to the backend via REST API.
  - 
  - **UI/UX Design:** User interface designed in Figma, following a minimalist aesthetic with analog-inspired textures (crumpled paper, glassmorphism) for a relaxing experience.
  - 
  - **Mobile Programming:** Developed in Kotlin using the Android SDK, ensuring a smooth native experience.
  - 
  - **Backend Programming:** Backend developed in Java using Spring Boot, with RESTful APIs to manage data and communicate securely with the database.
  - 
  - **Platform:** Native Android app, compatible with modern Android devices.


**4. Expected Benefits**

- Improved Mental Well-being: The application offers a therapeutic space for journaling and self-reflection, helping users manage daily stress and anxiety.
- Anonymous Support Network: The ability to discover and save empathetic messages (paper boats) left by random users fosters a sense of indirect global community and mutual support without the pressure of direct communication.
- Emotional Monitoring: A non-intrusive emotional tracking mechanism, mediated by a "Spirit Guide," helps users monitor their daily mood over time.
- Reduced Cognitive Load: The minimalist and soothing UX/UI design ensures a frictionless and relaxing user experience, countering the overwhelm typical of modern social media.

**5. Estimated Costs & Resources**

- Estimated Costs: [Ajustar o valor conforme planeado, ex: $3000]
- Resources: [Ajustar o valor conforme planeado, ex: $450]


**6. Estimated Milestones**

