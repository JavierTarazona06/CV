CV FILE: fr\base\Javier_TARAZONA_CV_fr.tex

OUTPUT_FOLDER: en\google\europe\switzerl-sft-eng\

OFFER: OUTPUT_FOLDER\offer.md

LANGUAGE: English

LEGACY FILE: \legacy\

COURSES: \cours\

PROJECTS: \projects\

Adapt **CV FILE** to the job/internship offer provided in **OFFER**, and write the final CV in **LANGUAGE** at **OUTPUT_FOLDER** in a new .tex file.

The goal is to maximize the CV's relevance to the offer while remaining completely truthful.

Replace the XXXXXX placeholder of the title with the suitable for this **OFFER**.

Use **CV FILE** as the main source of information. You may also use **LEGACY FILE** and **PROJECTS** to identify relevant skills, technologies, responsibilities, achievements, and experience that are not explicitly highlighted in the current CV but can reasonably and truthfully be inferred from my previous experience.

Do **not invent or fabricate** any experience, skill, achievement, responsibility, technology, or result that is not supported by the provided information. However, you may rephrase, reorganize, and emphasize existing experience to better match the terminology and requirements of the offer.

The complete list of my courses from **ENSTA Paris and UNAL** is available in **COURSES**. Select only the courses that are most relevant to the specific offer and include them when they strengthen my application.

When adapting the CV:

* Analyze the offer and identify its main technical skills, responsibilities, keywords, domain knowledge, and candidate requirements.
* Prioritize the experiences, projects, skills, and courses that best match those requirements.
* Rephrase bullet points when appropriate so they clearly demonstrate the relevant skills, without changing the underlying facts.
* Incorporate important keywords from the offer naturally, especially when they accurately describe experience or skills I already have.
* Remove or shorten less relevant information when necessary to make room for more relevant content.
* Keep strong quantitative results and measurable achievements whenever available.
* Preserve a professional, concise, technical style suitable for engineering, AI, software, computer vision, machine learning, data science, or related positions.
* Do not add generic soft skills unless they are supported by concrete experience.
* Avoid keyword stuffing and unnecessary repetition.
* When the offer asks for a skill, technology, or area of knowledge that I do not have, do not put it in the skills section or in any bullet. Instead, list the most relevant ones in a **CENTRES D'INTÉRÊT** section (English: INTERESTS), worded as an interest (for example "Intérêt pour l'IA multimodale et les Vision-Language Models"), never as a skill I master.

**ATS compatibility:** the final CV must read well for a recruiter **and** parse correctly in the Applicant Tracking Systems (ATS) most used in France. Every piece of information must be extractable as plain text, in the right order, and attached to the right section and entry.

*Target ATS.* Design for **Workday**, the strictest parser and the dominant ATS in large French groups (Renault applies through `myworkdayjobs.com`). A CV that parses well in Workday also parses in the other common French ATS: **SAP SuccessFactors** (Textkernel parser, supports French), **Oracle Taleo**, and the tools used by SMEs and scale-ups (**Welcome to the Jungle**, **Flatchr**, **Taleez**, **Teamtailor**, **Beetween**, **Cegid Talentsoft**, **SmartRecruiters**). Identify the ATS from the application URL in **OFFER** when possible (`myworkdayjobs.com`, `successfactors`, `taleo.net`, `welcometothejungle.com`, `flatchr.io`, `taleez.com`, `teamtailor.com`, `talent-soft.com`, `smartrecruiters.com`) and report it at the end.

*Layout and structure*

* Use a single-column layout that reads naturally from top to bottom. Do not place content side by side with `tabular`, `tabularx`, `minipage`, `multicol`, text boxes, or positioned elements (`\put`, shipout hooks). If the base CV uses them for content (for example the projects section), rewrite those entries as plain paragraphs formatted like the education/experience entries.
* Put the full name alone on the first line, followed by contact details (email, phone, `City, France`, LinkedIn, GitHub) as plain text in the document body. Never put them in a header/footer (Workday and Taleo often drop them), an image, or an icon.
* Every hyperlink, including project links, must show the readable URL (for example `github.com/JavierTarazona06/slow`), not a label like "GitHub", because the ATS only keeps the visible text.
* Do not convey information only through images, icons, symbols, logos, skill bars, ratings, or color. Keep the photo and QR code disabled even though photos are common on French CVs: in Workday a photo breaks the parsing of the text around it.
* Use standard section headings that an ATS recognizes, each on its own, written in **LANGUAGE**. French: FORMATION, EXPÉRIENCE PROFESSIONNELLE, PROJETS, COMPÉTENCES TECHNIQUES, LANGUES, CERTIFICATIONS, DISTINCTIONS, CENTRES D'INTÉRÊT. English: EDUCATION, PROFESSIONAL EXPERIENCE, PROJECTS, TECHNICAL SKILLS, LANGUAGES, CERTIFICATIONS, AWARDS, INTERESTS. Do not use creative headings or merged ones such as "COMPÉTENCES & LANGUES".

*Entries and dates (Workday autofill)*

Workday autofills its "Expérience professionnelle" and "Formation" forms from the CV, so each entry must provide its fields unambiguously.

* Experience entry: `Organisation • City, Country • AAAA/MM - AAAA/MM` on one line, the job title alone on the next line, then the bullets. Education entry: `School • City, Country • AAAA/MM - AAAA/MM`, then the degree name and field of study on the next line.
* One job title and one date range per entry. When the same employer has several periods or titles (for example Engin A.I, 2024/01 - 2024/07 and 2025/02 - 2025/06), write a separate entry for each, each with its own title line, and put each bullet under the period it belongs to. If the bullets cannot be split, put them under the most recent period. Never write ranges like `Janvier - Juillet 2024 et Février - Juin 2025`.
* Write every date as year then month, `AAAA/MM - AAAA/MM` (English: `YYYY/MM - YYYY/MM`), with a 4-digit year and a 2-digit month (`2025/09`, not `2025/9`). Write an ongoing period as `AAAA/MM - Présent` (English: `Present`) and a future end date with its expected month (`2025/09 - 2027/09`). Numeric dates parse the same in every language. French month names with accents (Février, Août, Décembre) are not guaranteed to parse in Workday. Do not use month names, seasons, years alone, 2-digit years, or mixed formats.
* Use `City, Country` for locations, with the country written in full (`Palaiseau, France`, `Bogotá, Colombie`).

*Keywords and wording*

* Replace XXXXXX with the offer's job title, worded as close to the offer as is truthful, because ATS rank candidates on title match. Keep the meaningful words and drop requisition codes and gender tags (`CS27`, `(H/F)`).
* Include the French qualification keywords that screeners filter on when they are true and the offer uses them: `Bac+5`, `Diplôme d'Ingénieur`, `école d'ingénieur`, `Grande École`, `stage de fin d'études`, and the availability (start month, duration).
* Spell tools, technologies, and skills exactly as the offer does (for example "PyTorch", "C++", "CI/CD", "IA générative"). French offers mix French and English terms, so match each term in the language the offer uses, and add the other language in parentheses when the term is central (for example "Vision par ordinateur (Computer Vision)").
* Each important keyword should appear in the skills section **and** in context in an experience or project bullet that proves it.
* Write key acronyms in full once next to the acronym (for example "Natural Language Processing (NLP)", "Large Language Models (LLM)"), then use the short form.
* List skills as plain comma-separated text grouped by category, with no tables, graphics, or graphic proficiency levels.
* List languages in their own section, each immediately followed by its level in text: `Anglais : courant (C1 - IELTS 2024)`.

*LaTeX/PDF requirements*

* Keep the ATS fixes already in the preamble (`hyphenat[none]`, `\sloppy`, ASCII apostrophe, `\hypersetup` metadata). Add `\input{glyphtounicode}` and `\pdfgentounicode=1` if they are missing, so that every glyph maps to real Unicode text.
* Update `\hypersetup` for the offer: set `pdftitle` to the adapted title (no XXXXXX left), and set `pdfsubject` and `pdfkeywords` to the offer's main keywords that actually appear in the CV.
* Do not split keywords with manual spacing, `~`, `\mbox` tricks, or math-mode symbols (`$\circ$`, `$\rightarrow$`). Use plain text, `-`, `,`, `:`, or `\textbullet` as separators.
* Do not shrink text below `\footnotesize` to fit the page. Cut content instead.
* Keep the output file name in the form `Prenom_NOM_CV_<lang>.pdf` (for example `Javier_TARAZONA_CV_fr.pdf`), with no spaces or accents.

**Critical constraint:** the final CV must fit on **exactly one page or less**. Prioritize relevance and information density rather than trying to preserve every element of the original CV. If fitting on one page conflicts with the ATS rules above, shorten content rather than break the ATS rules.

Maintain the general structure and professional quality of the CV, but you may reorder sections, experiences, projects, skills, or courses when this improves alignment with the offer.

The final output should be the **fully adapted CV**, ready to use for the application.

At the end, compile the PDF and verify it:

1. **Page count:** exactly one page.
2. **ATS text extraction:** extract the text in two ways, as different ATS parsers do, and save each as a UTF-8 `.txt` file: `pdftotext -enc UTF-8 <cv>.pdf <cv>.txt` (plain mode, not `-layout`), and Python `pdfminer.six` (`from pdfminer.high_level import extract_text`). Read the `.txt` files themselves: the Windows console can show accents as `�` even when the extraction is correct. In both extractions, check that:
   * the name comes first, followed by the contact information;
   * sections appear in order under their standard headings;
   * each entry keeps its organization, location, dates, and title together, with no merged columns or orphaned date lines;
   * no characters are missing or garbled (accents, bullets, `+`, `%`, `/`), and there are no ligature characters (`ﬁ`, `ﬂ`, `ﬀ`);
   * no keywords are split across lines, every link shows its URL, and no XXXXXX placeholder remains.
3. **Workday autofill simulation:** using only the extracted text, fill in the fields Workday would autofill:
   * each experience: title, company, location, start `AAAA/MM`, end `AAAA/MM` or "current";
   * each education entry: school, degree, field of study, start, end.

   If any field is missing, ambiguous, or attached to the wrong entry, fix the `.tex` file.
4. **Keyword coverage:** list the offer's 10-15 main keywords and qualifications (including `Bac+5`, degree type, and the job title terms) and confirm that each one appears in the extracted text with the offer's spelling, or state that it is absent from the skills because it is not truthful for me (and whether it was added to CENTRES D'INTÉRÊT).

Fix any problem found in steps 2-4, recompile, and check again.

5. **White space:** if the page still has white space that can be used to space out content or add valuable information, use it. Priority: space out information that is so dense it could confuse an ATS checker or the recruiter reading it.

Finally, give me a short **ATS report**:
* the detected ATS;
* the Workday autofill table from step 3, so I can compare it with what the application form fills in;
* a plain-text list of skills and of languages with their levels, ready to copy into the application form, since Workday does not autofill the Skills and Languages fields.