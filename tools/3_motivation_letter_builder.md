# VARIABLES — EDIT ONLY THIS SECTION

COMPANY: BNP Paribas

LANGUAGE = French

OUTPUT_FOLDER = fr\bnp_paribas\1-bnp-ai-research-intern

CV_FILE = OUTPUT_FOLDER\Javier_TARAZONA_CV_fr.tex

JOB_OFFER_FILE = OUTPUT_FOLDER\offer.md

ADDITIONAL_CONTEXT_FILES = [
    COURSES: /cours/,
    LEGACY_FILES: /legacy/,
    PROJECTS: /projects/
    "[Optional additional file: company information, etc.]",
]

WHY_THIS_COMPANY = 
Bueno, en principio BNP Paribas me interesa mucho porque no es solo una institución financiera cualquiera. De base es una institución que trabaja con tres componentes. lo que es la banca institucional, lo que ya es el lado personal y empresarial, y los seguros. Eso me parece muy interesante porque es mucho con lo que se puede trabajar.Sobre todo me interesa lo que se podría trabajar con temas como las finanzas, el mercado de capitales, los assets y los seguros, porque esos son muchos datos que requieren mucho análisis y toma de decisiones.También me interesa mucho su orientación hacia la IA porque han reportado que tienen más de 800 casos de uso en IA en producción y tienen muchos especialistas y científicos de datos, analistas de negocios de inteligencia artificial, que me... por eso creo que hay un buen entorno de desarrollo en inteligencia artificial, lo que yo estudio. Así como los convenios que tienen con Telecom París y muchas universidades, investigadores de NeurIPS, o ICSE. Asi como sus partnership con Mistral AI y gemini muestran un garn compromiso con la IA que valoro.
"""
[Optional notes about why I am specifically interested in this company.
Leave blank if this should be inferred from the job offer and available context.]
"""

WHAT_I_CAN_BRING_TO_THE_COMPANY = 
Y sobre lo que yo puedo traer a la compañía es ya tener una experiencia en investigación en lo que tiene que ver con modelos fundacionales, supervisión supervisada, aplicación de investigación de IA, crear pipelines de datos de investigación reproducibles, ya haber usado Mistral para un proyecto y modelos de lenguaje, que conexión también con el RAG y confiabilidad de la IA, que la IA se cierne a cosas, a reglas específicas como con apedis, machine learning aplicado a engineering AI, evaluación científica y evaluar estándares de modelos como en Tameo. e intereses ya en otras áreas como IA confiable, RAG, finanzas cuantitativas. Entonces creo que tengo un buen conocimiento de lo que es aprendizaje de representaciones, lo cual sería muy útil para BNP Paribas, así como venir de un contexto internacional donde BNP Paribas tiene influencia como en Colombia, pero también haber estudiado en Canadá y también estar en el ecosistema de París, que es un fuerte aliado de BNP Paribas.
"""
[Optional notes about what I believe I can contribute.
Leave blank if this should be inferred by matching my CV, experience, projects, skills, and academic background with the job offer.]
"""

WHAT_THE_COMPANY_CAN_BRING_ME = 
Sobre el plano técnico. Me gusta que la postulación se enfoque en investigación, en una parte, porque hay que analizar la literatura y realizar hipótesis. Pero yo soy un perfil que no quiere quedarse solo en la investigación, sino que quiero algo más industrial. Entonces el paso a la exposición de producción que ustedes plantean para que hayan sistemas que sean escalables y pasen los requerimientos industriales es interesante. Así como la mentoría que yo podría recibir y ecosistema científico. También me interesa mucho la idea que exista la posibilidad de hacer una tesis CIFRE, C-I-F-R-E. Porque este trabajo de la ciencia aplicada realmente es muy interesante. Entonces, si logramos hacer un buen trabajo, estaría muy interesado en esa opción. Además, proyectos como FIN AI Lab, FIN AI Lab, donde se estudian aprendizaje en tiempo real usando redes masivas de datos que evolucionan en el tiempo, con operaciones de aprendizaje continuo, es el tipo de actividades donde yo quisiera participar. O de ese estilo es lo que a mí me gustaría contribuir. Por ejemplo, también están las investigaciones con tecnologías de modelos fundacionales para series de tiempo financieras de gran escala. y un paper que tiene relacionado de los puentes de Schrödinger para modelamiento generativo en tiempos de series suena muy interesante. No conozco mucho aún del tema, pero está dentro de mis intereses. y demás cosas que se le puedan dar a los lenguajes de LLMs o la co-desarrollo que tienen con Mistral, por ejemplo. Entonces puede ser el paso de algo más industrial de la práctica que realicé en el laboratorio de U2IS, algo más de producto, como lo que hacía en Engine AI y en Apedis. También me gusta la cuestión de que sea una compañía europea que esté en un ecosistema de IA.
"""
[Optional notes about what I expect to learn, develop, or gain from this company and position.
Leave blank if this should be inferred from the job offer and available context.]
"""

ADDITIONAL_INSTRUCTIONS = """
[Optional instructions specific to this application.
Examples: emphasize computer vision experience; mention a particular project; avoid discussing a specific experience; use a more technical tone; address a particular recruiter, etc.]
"""


# TASK

Using the variables and files defined above, write a tailored motivation/cover letter for the position described in JOB_OFFER_FILE as a .tex file at OUTPUT_FOLDER.

The objective is to produce a professional, specific, convincing, and natural application letter suitable primarily for an internship ("stage") application in France.

## 1. General requirements

Write the complete letter in LANGUAGE.

The entire letter must be concise enough to fit approximately on one page and must contain no more than 660 words.

The letter must include:

- the recipient's correspondence information, based on JOB_OFFER_FILE whenever available;
- the company name;
- the recipient's name and position if they are provided or can be reliably identified from the supplied material;
- the relevant company/address information if provided;
- a clear subject line identifying the application and position;
- an appropriate greeting;
- the four-part body described below;
- an appropriate professional closing.

Do not invent names, addresses, titles, projects, technologies, achievements, experience, academic results, or company information.

If some recipient information is unavailable, use an appropriate generic formulation rather than fabricating it.

The resulting letter should read as a coherent letter, not as four disconnected answers. Do not use headings such as "Part 1", "Why the company", or "What I bring" unless ADDITIONAL_INSTRUCTIONS explicitly asks for them.

Avoid generic phrases that could apply to any company. Prefer concrete connections between my background, the position, the company, and its activities.

Do not simply summarize my CV. Select only the information that strengthens the application.

Mention a project, experience, organization, or achievement of mine only if it appears in CV_FILE or is actually introduced and explained in the letter itself. Do not name-drop anything the reader cannot place: if an item from this prompt (for example SharpSight or ORIUN in Part 1) is absent from CV_FILE and the letter has no room to explain it, delete it rather than mention it in passing.

---

## 2. Structure of the body

The body must follow exactly this logical progression:

### PART 1 — Who I am and what motivates my career

Introduce me naturally using the following ideas. Rewrite them into polished professional prose rather than reproducing them mechanically.

I am a Colombian engineering student pursuing a double degree between Universidad Nacional de Colombia and ENSTA, a member school of Institut Polytechnique de Paris.

My interest in computer science came from a combination of curiosity about complex technological systems and the desire to understand how they work: systems such as the Internet, financial infrastructures, cameras, and other technologies whose apparent simplicity hides considerable complexity.

At the same time, I was attracted by the possibility of transforming abstract ideas into concrete systems and products. The search for technical autonomy, the ability to understand and build things myself, and both academic and competitive ambition naturally led me toward computer science because of its flexibility and its capacity to connect theory with practical creation.

During my studies, artificial intelligence emerged as another important paradigm. Instead of explicitly programming every possible behaviour of a system, AI makes it possible to build systems capable of extracting information from data, understanding specific contexts, modelling aspects of reality, and supporting better decisions.

This perspective progressively drew me toward applied AI and industrial applications, particularly computer vision and data analysis: combining mathematics, data, algorithms, and software to give systems a reliable perception and interpretation of the real world.

I am especially interested in this approach because AI is a transversal technology whose applications can create visible effects across many sectors of society and the economy.

This combination of pragmatism, technical curiosity, and scientific interest contributed to my decision to continue my education in France. At ENSTA, I am pursuing an engineering curriculum focused on artificial intelligence, where I have strengthened my academic foundations while also developing professionally through real projects, technical work, and competitions involving applied AI, computer vision, and data analysis.

In practice, this work has taken shape along three complementary axes. The first is data analysis, which I applied during my research internship at ENSTA Paris - U2IS and in decision-oriented work for the "Tameo" autonomous boat project. The second is computer vision and the processing of signals conveyed through text: the detection and motion-decision vision pipeline I develop for Tameo, the computer vision work on lane and road-marking analysis I carried out at Engin A.I, and the natural language processing application I built at APEDYS91 to support children with dyslexia. The third is software development, since artificial intelligence only creates value once it is deployed and connected into a working service, as shown by SharpSight, ORIUN, and again by my work at Engin A.I.

Of the projects and experiences named above, keep only those that appear in CV_FILE (see the name-dropping rule in section 1).

Keep this section concise. Its purpose is to establish my profile, intellectual motivation, and career direction—not to dominate the entire letter.

### PART 2 — Why I chose this company and position

Explain specifically why I am applying to this company and this position.

Use, in order of priority:

1. WHY_THIS_COMPANY;
2. JOB_OFFER_FILE;
3. ADDITIONAL_CONTEXT_FILES.

Identify concrete elements that make the company, team, sector, technical environment, mission, products, research topics, or industrial challenges particularly relevant to my interests.

Show that the application is intentional rather than generic.

Do not flatter the company excessively and do not make unsupported claims about its prestige, culture, technological leadership, or values.

### PART 3 — What I can bring to the company

Determine why my profile matches the position by carefully comparing CV_FILE with JOB_OFFER_FILE.

Use, in order of priority:

1. WHAT_I_CAN_BRING_TO_THE_COMPANY;
2. evidence from CV_FILE;
3. requirements and missions from JOB_OFFER_FILE;
4. relevant evidence from ADDITIONAL_CONTEXT_FILES.

Identify the strongest points of correspondence between the position and my profile.

Focus only on relevant evidence, such as:

- technical skills;
- computer vision, machine learning, deep learning, data analysis, or software engineering experience when applicable;
- relevant programming languages, libraries, or tools;
- academic projects;
- research or professional experience;
- experience solving concrete engineering problems;
- teamwork;
- competitions;
- ability to learn unfamiliar technical subjects;
- international academic experience;
- autonomy and technical rigor.

Do not merely list skills.

For each important strength, connect it to a need, responsibility, technology, or challenge described in JOB_OFFER_FILE.

Prioritize two or three strong matches over a long list of weak connections.

If the offer requests something that is not demonstrated in my CV or context, do not pretend that I have it. Instead, when appropriate, highlight transferable knowledge and my capacity to learn it.

This section should naturally prepare the transition toward what this internship or position would allow me to develop in return.

### PART 4 — What the company and position can bring to me

Explain what this internship or position would allow me to develop professionally, technically, or academically.

Use, in order of priority:

1. WHAT_THE_COMPANY_CAN_BRING_ME;
2. JOB_OFFER_FILE;
3. CV_FILE;
4. ADDITIONAL_CONTEXT_FILES.

Connect the opportunity with the logical next step in my development.

Focus on concrete elements such as:

- technical expertise I could deepen;
- exposure to industrial-scale systems or real-world constraints;
- methodologies or technologies I could learn;
- interaction with experienced engineering or research teams;
- understanding of a particular industry;
- progression from academic/applied projects toward professional engineering practice.

Avoid presenting the company merely as something that benefits me; frame it as the natural continuation of the contribution described in the previous section.

End this section with a concise sentence expressing interest in discussing the position further.

---

## 3. Writing style

The letter should sound like it was written by an ambitious engineering student, not by a marketing department or a generic AI assistant.

Use a professional, confident, technically literate, and natural tone.

The style should be:

- precise;
- concise;
- intellectually curious;
- pragmatic;
- modest but confident;
- specific to the application.

Avoid excessive adjectives and exaggerated claims such as:

- "perfect candidate";
- "dream company";
- "world-renowned leader";
- "unique opportunity";
- "exceptional skills";
- "passionate about technology since childhood";

unless such wording is explicitly justified and appropriate.

Avoid repeating the same ideas using different wording.

Prefer evidence over self-description.

Instead of saying that I am "highly motivated", demonstrate motivation through the reasoning behind my academic choices, technical interests, experiences, and the specific connection with the position.

Adapt conventions, vocabulary, greeting, closing formula, and level of formality to LANGUAGE and to professional applications in the corresponding cultural context. If LANGUAGE is French, follow standard French conventions for a "lettre de motivation" for a stage.

---

## 4. Final verification before producing the answer

Before writing the final letter, silently verify that:

- every factual statement about me is supported by CV_FILE, the information contained in this prompt, or ADDITIONAL_CONTEXT_FILES;
- every factual statement about the position or company is supported by JOB_OFFER_FILE or ADDITIONAL_CONTEXT_FILES;
- no qualifications or experience have been invented;
- every project, experience, or organization of mine that the letter names appears in CV_FILE or is explained in the letter itself; anything else has been removed;
- the company-specific paragraph could not simply be copied into an application to another company;
- the section on what I can bring to the company explicitly connects my experience with the actual requirements of the position;
- all four required parts are present;
- the letter is coherent and does not feel like four independent paragraphs;
- the total length does not exceed 660 words;
- the final output is entirely in LANGUAGE.

Return only the finished cover letter, ready to send. Do not include an analysis, explanation, match score, notes, placeholders, or commentary outside the letter.