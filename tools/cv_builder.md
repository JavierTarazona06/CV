CV FILE: fr\base\Javier_TARAZONA_CV_fr.tex

OUTPUT-FOLDER: fr\1-renault-video-manufacture

OFFER: OUTPUT-FOLDER/offer.md

LANGUAGE: French

LEGACY FILE: \legacy\

COURSES: \cours\

PROJECTS: \projects\

Adapt **CV FILE** to the job/internship offer provided in **OFFER**, and write the final CV in **LANGUAGE** at **OUTPUT-FOLDER** in a new .tex file.

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

**ATS compatibility:** the final CV must read well for a recruiter **and** parse correctly in Applicant Tracking Systems (Workday, Taleo, SmartRecruiters, Greenhouse, etc.). Every piece of information must be extractable as plain text, in the right order, and linked to the right section and entry.

*Layout and structure*

* Use a single-column layout that reads naturally from top to bottom. Do not place content side by side with `tabular`, `tabularx`, `minipage`, `multicol`, text boxes, or positioned elements (`\put`, shipout hooks). If the base CV uses them for content (for example the projects section), rewrite those entries as plain paragraphs formatted like the education/experience entries.
* Put contact details (full name, email, phone, city, LinkedIn, GitHub) as plain text at the very top of the document body, never in a header/footer, an image, or an icon. Hyperlinks must show the readable URL (for example `github.com/JavierTarazona06`), not a label like "GitHub".
* Do not convey information only through images, icons, symbols, logos, skill bars, ratings, or color. Keep the photo and QR code disabled unless the offer explicitly asks for a photo.
* Use standard section headings that an ATS recognizes, written in **LANGUAGE** (French: FORMATION, EXPÉRIENCE PROFESSIONNELLE, PROJETS, COMPÉTENCES TECHNIQUES, LANGUES, DISTINCTIONS; English: EDUCATION, PROFESSIONAL EXPERIENCE, PROJECTS, TECHNICAL SKILLS, LANGUAGES, AWARDS). Do not use creative or merged headings.

*Entries and dates*

* Give every entry the same fields in the same order: organization • location • dates on one line, the job title/degree on the next line, then the bullets.
* Attach every date range directly to a job title. When the same employer has several periods (for example Engin A.I), put them on one line of a single entry (`Janvier 2024 - Juillet 2024, Février 2025 - Juin 2025`) instead of stacking two header lines that look like two jobs without a title.
* Write dates in one consistent, parseable format: full month + 4-digit year (`Mai 2026 - Août 2026`, `Septembre 2025 - Présent` / `May 2026 - August 2026`, `Present`). Do not use seasons, numeric-only dates, or 2-digit years.

*Keywords and wording*

* Replace XXXXXX with the offer's job title, worded as close to the offer as is truthful, since ATS rank on title match.
* Spell tools, technologies, and skills exactly as the offer does (for example "PyTorch", "C++", "CI/CD", "Computer Vision").
* Each important keyword should appear in the skills section **and** in context in an experience or project bullet that proves it.
* Write key acronyms in full once next to the acronym (for example "Natural Language Processing (NLP)", "Large Language Models (LLM)"), then use the short form.
* For a French CV, keep the English technical terms recruiters search for (Machine Learning, Deep Learning, Computer Vision, etc.) when the offer uses them, and add the French equivalent where it helps.
* List skills as plain comma-separated text grouped by category, with no tables, graphics, or graphic proficiency levels.

*LaTeX/PDF requirements*

* Keep the ATS fixes already in the preamble (`hyphenat[none]`, `\sloppy`, ASCII apostrophe, `\hypersetup` metadata). Add `\input{glyphtounicode}` and `\pdfgentounicode=1` if they are missing, so that every glyph maps to real Unicode text.
* Update `\hypersetup` for the offer: set `pdftitle` to the adapted title (no XXXXXX left), and set `pdfsubject` and `pdfkeywords` to the offer's main keywords that actually appear in the CV.
* Do not split keywords with manual spacing, `~`, `\mbox` tricks, or math-mode symbols (`$\circ$`, `$\rightarrow$`). Use plain text, `-`, `,`, or `\textbullet` as separators.
* Do not shrink text below `\footnotesize` to fit the page. Cut content instead.

**Critical constraint:** the final CV must fit on **exactly one page or less**. Prioritize relevance and information density rather than trying to preserve every element of the original CV. If fitting on one page conflicts with the ATS rules above, shorten content rather than break the ATS rules.

Maintain the general structure and professional quality of the CV, but you may reorder sections, experiences, projects, skills, or courses when this improves alignment with the offer.

The final output should be the **fully adapted CV**, ready to use for the application.

At the end, compile the PDF and verify it:

1. **Page count:** exactly one page.
2. **ATS parsing check:** extract the text as an ATS would, with `pdftotext -enc UTF-8 <cv>.pdf <cv>.txt` (plain mode, not `-layout`). Read the `.txt` file itself: the Windows console can show accents as `�` even when the extraction is correct. Check that:
   * the contact information comes first;
   * sections appear in order under their standard headings;
   * each entry keeps its organization, title, and dates together, with no merged columns or orphaned date lines;
   * no characters are missing or garbled (accents, bullets, `+`, `%`, `/`);
   * no keywords are split across lines, and no XXXXXX placeholder remains;
   * the offer's main keywords appear in the extracted text.

   Fix any problem in the `.tex` file, recompile, and check again.
3. **White space:** if the page still has white space that can be used to space out content or add valuable information, use it. Priority: space out information that is so dense it could confuse an ATS checker or the recruiter reading it.