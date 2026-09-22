# Audit ATS — `fr/Javier_TARAZONA_CV_fr.pdf`

Date de l'audit : 22/09/2026 · Fichier analysé : `fr/Javier_TARAZONA_CV_fr.pdf` (1 page, 292 951 octets, PDF 1.5)

## Méthode

Le PDF a été passé dans les trois modes d'extraction que les moteurs ATS utilisent réellement,
puis les coordonnées de chaque ligne ont été relevées pour reproduire la logique de détection de colonnes :

| Test | Outil | Ce que ça simule |
|---|---|---|
| Ordre du flux de texte | `pdftotext -raw` | Taleo, Greenhouse, Lever (lecture du content stream) |
| Détection de colonnes | `pdftotext -layout` / `-simple` | Workday, iCIMS, SuccessFactors (reconstruction spatiale) |
| Tables | `pdftotext -table` | parseurs récents tolérants aux tableaux |
| Boîtes englobantes | `pdfminer.six` | vérification des chevauchements et des paires ligne/colonne |
| Polices, métadonnées, images | `pdffonts`, `pdfinfo`, `pdfimages` | indexation et contrôle OCR |

## Verdict global

**Le CV passe la barrière ATS, mais avec des pertes réelles et évitables.**

Les bonnes nouvelles d'abord : le PDF est **nativement textuel** (aucun OCR requis), les 8 polices sont
**intégrées avec une table ToUnicode valide** (`uni=yes`), et **aucun caractère de remplacement U+FFFD**
n'apparaît à l'extraction. Tous les accents français ressortent proprement. C'est la base, et elle est saine —
beaucoup de CV LaTeX échouent déjà ici.

Les problèmes se situent à deux niveaux : **la mise en page à deux colonnes désaligne les dates**
dans certains parseurs, et **la typographie LaTeX par défaut détruit quelques mots-clés**.

Ci-dessous, chaque point est classé par gravité, avec la preuve extraite et le correctif exact.

---

# 🔴 Critique — à corriger avant tout envoi

## 1. Le titre du poste contient encore un placeholder `XXXXXX`

**Preuve** — ligne 5 du texte extrait :

```
STAGE DE FIN D'ÉTUDE EN XXXXXX
```

C'est la ligne la plus lourdement pondérée par un ATS après le nom : la plupart des moteurs
l'utilisent comme *job title* du candidat et la comparent directement à l'intitulé de l'offre.
Un recruteur humain qui voit `XXXXXX` écarte le dossier immédiatement.

**Correctif** — `fr/Javier_TARAZONA_CV_fr.tex`, ligne ~197 :

```latex
% AVANT
{\large\bfseries STAGE DE FIN D'ÉTUDE EN XXXXXX}\\[1pt]

% APRÈS — reprendre mot pour mot l'intitulé de l'offre
{\large\bfseries STAGE DE FIN D'ÉTUDE EN DATA SCIENCE / MACHINE LEARNING}\\[1pt]
```

> Le fichier `tools/cv_builder.md` décrit déjà un workflow d'adaptation par offre.
> **Ajoutez-y une règle explicite : « remplacer le placeholder du titre par l'intitulé exact de l'offre »**,
> sinon l'oubli se reproduira à chaque déclinaison.

## 2. Le nom et l'e-mail fusionnent sur une seule ligne

- Solved

**Preuve** — première ligne du flux de texte (`-raw`, `-table` et `-simple` donnent le même résultat) :

```
Javier Andres TARAZONA JIMENEZ javitar06@gmail.com
```

La quasi-totalité des ATS prennent **la première ligne non vide comme nom du candidat**.
Le champ `Nom` sera donc rempli avec `Javier Andres TARAZONA JIMENEZ javitar06@gmail.com`,
ou bien le parseur échouera et laissera le champ vide — les deux cas obligent le recruteur
à ressaisir manuellement, ce qui est exactement le frottement que l'ATS cherche à éviter.

Le même défaut frappe la 4ᵉ ligne, où l'URL GitHub et l'adresse postale se collent :

```
https://github.com/JavierTarazona06 Massy, Île de France, France (91300)
```

**Cause** — l'en-tête est un `tabular*` à deux colonnes (lignes 186-196). Le très large écart
horizontal (le nom finit à x=373 pt, l'e-mail commence à x=500 pt) fait que le parseur
lit les deux cellules comme un seul segment de ligne.

**Correctif** — remplacer le bloc `minipage`/`tabular*` de l'en-tête par un empilement linéaire.
Le nom doit être **seul sur sa ligne**, les coordonnées **une par ligne** :

```latex
\noindent
\showHeaderPhoto%
\hspace*{\headerPhotoSpace}%
\begin{minipage}[c]{\dimexpr\textwidth-\headerPhotoSpace\relax}
  \raggedright
  {\Large\bfseries\textcolor{mydarkgreen}{Javier Andres TARAZONA JIMENEZ}}\\[2pt]
  {\footnotesize Ingenieur Grande Ecole en Intelligence Artificielle}\\[2pt]
  {\footnotesize javitar06@gmail.com \textbullet{} +33 7 46 36 97 75
   \textbullet{} Massy, Ile-de-France, France (91300)}\\[2pt]
  {\footnotesize\href{https://www.linkedin.com/in/javier-andres-tarazona-jimenez-84b489222/}%
    {linkedin.com/in/javier-andres-tarazona-jimenez-84b489222}
   \textbullet{} \href{https://github.com/JavierTarazona06}{github.com/JavierTarazona06}}
\end{minipage}
```

Le séparateur `\textbullet{}` est extrait comme `•`, un délimiteur que les ATS reconnaissent —
contrairement à un simple espace, qui fusionne les champs.

## 3. Le numéro de téléphone est dans un format invalide

- Solved

**Preuve** : `+33 07 46 36 97 75`

L'indicatif pays `+33` **ne peut pas** être suivi du `0` national. Le numéro correct est
`+33 7 46 36 97 75` (ou `07 46 36 97 75` en format purement national).
Les validateurs de téléphone des ATS (et des CRM de recrutement) rejettent ou tronquent
cette chaîne, ce qui peut coûter un rappel.

**Correctif** — utiliser `+33 7 46 36 97 75`.

---

# 🟠 Important — perte de mots-clés et de dates

## 4. La mise en page à deux colonnes désaligne les dates d'une ligne

- Solved

C'est le défaut le plus insidieux, parce qu'il est **invisible à l'œil** : le PDF est parfait à l'écran.

**Preuve** — sortie `pdftotext -layout` de la section FORMATION (les colonnes ont été
re-tissées indépendamment et décalées d'un cran vers le haut) :

```
FORMATION                                                    Paris, France
Institut Polytechnique de Paris (IPP) - ENSTA         Septembre 2025 – Présent
Diplôme d'Ingénieur - Master of Science in Engineering       Bogotá, Colombie     ← FAUX
Machine Learning, Statistique, Reconnaissance d'images
                                                        Janvier 2021 – Juillet 2025
Universidad Nacional de Colombia (UNAL)
                                                             Saskatoon, Canada
12e université en Amérique latine (QS Latin America 2026)
Ingénierie des Systèmes et Informatique              Septembre 2024 – Décembre 2024  ← FAUX
```

Résultat pour un ATS à reconstruction spatiale : **`Bogotá, Colombie` est rattaché au diplôme
de l'IPP-ENSTA**, et `Septembre 2024 – Décembre 2024` (l'échange au Canada) est rattaché à
`Ingénierie des Systèmes` (UNAL). La ville `Paris, France` remonte jusqu'à l'intitulé `FORMATION`.

La vérification par coordonnées confirme que la cause est le **fossé horizontal** :
l'institution se termine vers x=280 pt, la ville commence vers x=525 pt — 245 pt de blanc.
Au-delà d'environ 100 pt, les heuristiques de détection de colonnes basculent en mode multi-colonnes.

> À noter, honnêtement : les modes `-raw` et `-table` lisent cette section **correctement**.
> Le défaut ne touche donc qu'une partie des ATS, pas tous. Mais il touche Workday et iCIMS,
> qui sont très répandus en France — et le coût du correctif est faible.

**Correctif** — mettre lieu et dates **sur la même ligne de texte que l'entité**, séparés par un
délimiteur, plutôt que rejetés à l'opposé de la page. Pour FORMATION :

```latex
\section{\textcolor{mydarkgreen}{\textbf{FORMATION}}}
{\raggedright
\textbf{Institut Polytechnique de Paris (IPP) - ENSTA} \textbullet{} Paris, France
\textbullet{} \textit{Septembre 2025 - Present}\\
{\footnotesize Diplome d'Ingenieur - Master of Science in Engineering.
Machine Learning, Statistique, Reconnaissance d'images}\\[3pt]

\textbf{Universidad Nacional de Colombia (UNAL)} \textbullet{} Bogota, Colombie
\textbullet{} \textit{Janvier 2021 - Juillet 2025}\\
{\footnotesize Ingenierie des Systemes et Informatique. Systemes multi-agents,
Modeles stochastiques, Optimisation. 12e universite en Amerique latine (QS Latin America 2026)}\\[3pt]

\textbf{University of Saskatchewan} \textbullet{} Saskatoon, Canada
\textbullet{} \textit{Septembre 2024 - Decembre 2024}\\
{\footnotesize Echange academique. Ingenierie logicielle, Algorithmes,
Systemes d'exploitation et Francais des Affaires}\par}
```

Appliquer la même transformation aux sections **EXPÉRIENCE PROFESSIONNELLE** (les blocs
`tabularx` lignes 246-330) et **LANGUES** (qui souffre du même symptôme : en mode `-layout`,
`Anglais (C1 – IELTS 2024)` remonte sur la ligne du titre `LANGUES` tandis que
`Français (B2 – DELF 2024)` reste en dessous).

## 5. La césure LaTeX détruit le mot-clé « luminance »

- Solved

**Preuve** — projet de segmentation de peau, le mot est coupé en fin de ligne :

```
... extraction de caractéristiques RGB/HSV/YCrCb et Cb-Cr avec gradient de lumi-
nance, puis comparaison de Gaussian Naive Bayes, QDA et K-Means ...
```

Une recherche ATS sur `luminance` **ne trouve rien** : la chaîne stockée est `lumi-` + `nance`.
C'est vérifié — le terme est absent du texte extrait.

Dans le même esprit, `curriculum learning` est scindé par un saut de ligne entre les deux mots.
Ce cas-là est moins grave (la plupart des ATS normalisent les espaces avant recherche), mais il
illustre le risque : **toute césure future frappera un mot-clé au hasard**, y compris `PyTorch`
ou `Transformers` si le texte bouge d'un caractère.

**Correctif — vérifié, compile proprement et tient toujours sur 1 page** :

```latex
\usepackage[none]{hyphenat}
\sloppy
```

Après correction : **0 mot coupé** (contre 1 avant), et `luminance` redevient trouvable.
`\sloppy` évite les débordements de marge que la désactivation de la césure pourrait créer.

## 6. L'apostrophe typographique casse 11 mots-clés français

- Solved

**Preuve** — inventaire des caractères non-ASCII du texte extrait :

```
U+2019 RIGHT SINGLE QUOTATION MARK  ×11
```

LaTeX convertit automatiquement l'apostrophe ASCII `'` en apostrophe courbe `’` (U+2019).
Conséquence mesurée sur le PDF actuel :

| Recherche ATS (apostrophe ASCII) | Résultat |
|---|---|
| `d'Ingénieur` | ❌ introuvable |
| `d'IA` | ❌ introuvable |
| `CENTRES D'INTERET` | ❌ introuvable |

Les moteurs qui normalisent U+2019 s'en sortent ; les moteurs à correspondance stricte
— et les recherches booléennes tapées à la main par les recruteurs — échouent.
En français, où l'apostrophe est omniprésente (`d'Ingénieur`, `d'exploitation`, `l'analyse`),
c'est un angle mort coûteux.

**Correctif — vérifié, ramène U+2019 à 0 occurrence** :

```latex
\usepackage{textcomp}
\catcode`\'=\active
\def'{\textquotesingle}
```

À placer après `\usepackage[T1]{fontenc}`. Les accents `\'e` continuent de fonctionner
(TeX forme les *control symbols* indépendamment du catcode), et il n'y a pas de mode
mathématique dans ce document — le correctif est sans effet de bord ici. Testé : compilation
sans erreur, `d'Ingénieur`, `d'IA` et `CENTRES D'INTERET` redeviennent tous trouvables.

## 7. Les plages de dates ne sont pas exploitables par un parseur

- Solved

Trois problèmes distincts se cumulent :

**a) Le tiret demi-cadratin** — 9 occurrences de `–` (U+2013) comme séparateur :
`Septembre 2025 – Présent`. Beaucoup de regex de plages de dates n'acceptent que
`-`, `to` ou `à`. Utiliser le trait d'union ASCII `-`.

**b) L'incohérence** — `Octobre 2025 - Février 2026` (APEDYS91) utilise déjà un trait ASCII,
alors que toutes les autres lignes utilisent `–`. Uniformiser.

**c) La plage composite d'Engin A.I est illisible pour une machine** :

```
12 mois : Jan. - Juil. 2024 et Fév. - Juin 2025
```

Aucun ATS ne saura calculer l'ancienneté, ni même rattacher une date de début et de fin.
Le champ `durée` restera vide, ce qui pénalise les filtres du type « ≥ 12 mois d'expérience ».

**Correctif** — déclarer deux entrées distinctes sous le même employeur, chacune avec une
plage canonique `Mois AAAA - Mois AAAA`, et garder le total en texte :

```latex
\textbf{Engin A.I} \textbullet{} Colombie - Etats-Unis
\textbullet{} \textit{Janvier 2024 - Juillet 2024}\\
\textbf{Engin A.I} \textbullet{} Colombie - Etats-Unis
\textbullet{} \textit{Fevrier 2025 - Juin 2025}\\
{\footnotesize Ingenieur Logiciel et Vision par Ordinateur (12 mois cumules)}
```

---

# 🟡 Moyen — gains faciles

## 8. Les métadonnées du PDF sont entièrement vides

- Solved

**Preuve** — `pdfinfo` :

```
Title:      (vide)
Author:     (vide)
Subject:    (vide)
Keywords:   (vide)
Creator:    LaTeX with hyperref
```

Plusieurs ATS et la plupart des moteurs de recherche documentaire indexent `Title` et `Author`.
Laisser ces champs vides, c'est renoncer gratuitement à un signal.

**Correctif — vérifié** (ajouter au préambule, `hyperref` est déjà chargé) :

```latex
\hypersetup{
  pdftitle={Javier Andres TARAZONA JIMENEZ - CV - Data Science / Machine Learning / Software Engineering},
  pdfauthor={Javier Andres TARAZONA JIMENEZ},
  pdfsubject={Stage de fin d'etude - Intelligence Artificielle},
  pdfkeywords={Machine Learning, Deep Learning, Computer Vision, NLP, Python,
               PyTorch, OpenCV, Data Science, LLM, Vision Transformers}
}
```

Après application, `pdfinfo` renvoie bien `Title`, `Author` et `Keywords` renseignés.

## 9. 81,5 % du texte est sous 9 pt

- Solved

**Preuve** — distribution mesurée des tailles de glyphes :

| Taille | Glyphes | Part |
|---|---|---|
| 7,0 pt | 347 | 9,1 % |
| **8,0 pt** | **2 757** | **72,4 %** |
| 10,0 pt | 554 | 14,6 % |
| 12,0 pt | 122 | 3,2 % |
| 14,3 pt | 27 | 0,7 % |

**Glyphes sous 9 pt : 3 104, soit 81,5 % du document.**

La section COMPÉTENCES TECHNIQUES est en `\scriptsize` (7 pt) — c'est-à-dire que la section
que le recruteur scanne en premier est la plus petite de la page. L'extraction fonctionne
(le PDF est textuel, pas d'OCR), donc l'impact ATS direct est faible ; **l'impact humain, lui,
est réel**, et un ATS en repli OCR (CV réimprimé/scanné) dégrade nettement sous 9 pt.

**Correctif** — passer le corps en 9 pt minimum. Remplacer `\scriptsize` par `\footnotesize`
dans la section compétences (ligne ~398), et envisager `\documentclass[a4paper,11pt]`.
Si la place manque, gagnez-la en supprimant la photo (point 11) plutôt qu'en réduisant le corps. (Dans ce cas commentez les lignes de la photo du latex code)

## 10. Accents manquants dans deux titres de section

- Solved

`COMPETENCES TECHNIQUES` → `COMPÉTENCES TECHNIQUES`
`CENTRES D'INTERET` → `CENTRES D'INTÉRÊT`

Les ATS localisés pour le marché français identifient les sections via un dictionnaire de
libellés canoniques. `COMPÉTENCES` (accentué) est la forme de référence ; la variante sans
accent peut ne pas déclencher la reconnaissance de section, auquel cas les compétences
sont versées dans un bloc « divers » non pondéré.

Les autres titres — `FORMATION`, `EXPÉRIENCE PROFESSIONNELLE`, `PROJETS`, `LANGUES` — sont
déjà canoniques. ✅

## 11. Photo intégrée dans l'en-tête

**Preuve** — `pdfimages` : une image JPEG 400×400 px, RGB, 36,6 Ko, ancrée dans l'en-tête.

En France la photo reste légale et courante, mais pour un pipeline ATS elle n'apporte
strictement rien et présente deux inconvénients : elle occupe la zone où le parseur cherche
les coordonnées, et elle disqualifie le CV auprès des entreprises pratiquant le recrutement
anonymisé (fréquent dans les grands groupes et l'ESN).

**Recommandation** — maintenir **deux variantes** depuis la même source. La ligne 184 est déjà
prévue pour ça (`\showHeaderPhoto% Commenter cette ligne pour retirer la photo`) :
commentez-la pour produire la version ATS, gardez-la pour les candidatures spontanées et
les envois directs à un recruteur.

## 12. Les distinctions se lisent comme une seule chaîne

**Preuve** — le `\quad` séparateur disparaît à l'extraction :

```
Bourse Eiffel Excellence ENSTA - Master 2025–2027
Excellence académique UNAL - Exonération des frais de scolarité
```

`Bourse Eiffel Excellence ENSTA` se lit comme un nom de prix unique. Ajouter un délimiteur
visible — `\textbullet{}` ou ` -- ` — pour séparer le prix de l'organisme émetteur.

## 13. Format de page Letter au lieu d'A4

**Preuve** — `pdfinfo` : `Page size: 612 x 792 pts (letter)`.

Sans impact ATS, mais c'est le format nord-américain sur un CV destiné au marché français.
Corriger en `\documentclass[a4paper,...]` ; l'impression et les aperçus RH seront propres.

---

# 🟢 Ce qui fonctionne déjà bien

À conserver tel quel — ce sont des points où beaucoup de CV LaTeX échouent :

- **PDF nativement textuel**, 1 page, non chiffré, sans formulaire ni JavaScript.
- **8 polices intégrées avec ToUnicode valide** (`uni=yes` partout) → extraction fiable, zéro U+FFFD.
- **Tous les accents français sortent correctement** (é, è, à, ç, ô, î, Î, É, á).
- **Aucune ligature parasite** : `fine-tuning`, `spaCy`, `C++` ressortent intacts.
- **Titres de section standards** en majuscules, sur une ligne isolée.
- **Puces en trait d'union littéral** (`- Vision 3D...`) — bien plus sûr qu'un glyphe exotique.
- **URLs en texte brut visible** (LinkedIn, GitHub) plutôt que masquées derrière un lien.
- **Résultats quantifiés** (`+50 % vitesse`, `+60 % précision`, `mAP, F1`, `70 %`) — excellent pour
  la lecture humaine, et intact à l'extraction.

---

# Plan d'action

## Étape 1 — bloc de préambule (testé, compile, reste sur 1 page)

À insérer juste avant `\pagestyle{empty}` dans `fr/Javier_TARAZONA_CV_fr.tex` :

```latex
% ===== CORRECTIFS ATS =====
\usepackage[none]{hyphenat}   % point 5 : plus aucun mot-cle coupe
\sloppy                       %           evite les debordements de marge
\usepackage{textcomp}         % point 6 : apostrophe ASCII au lieu de U+2019
\catcode`\'=\active
\def'{\textquotesingle}
\hypersetup{                  % point 8 : metadonnees indexables
  pdftitle={Javier Andres TARAZONA JIMENEZ - CV - Data Science / Machine Learning},
  pdfauthor={Javier Andres TARAZONA JIMENEZ},
  pdfsubject={Stage de fin d'etude - Intelligence Artificielle},
  pdfkeywords={Machine Learning, Deep Learning, Computer Vision, NLP, Python,
               PyTorch, OpenCV, Data Science, LLM, Vision Transformers}
}
% ==========================
```

**Résultat mesuré après application :**

| Métrique | Avant | Après |
|---|---|---|
| Apostrophes courbes U+2019 | 11 | **0** |
| Mots coupés par césure | 1 | **0** |
| `d'Ingénieur` trouvable | ❌ | **✅** |
| `luminance` trouvable | ❌ | **✅** |
| `CENTRES D'INTERET` trouvable | ❌ | **✅** |
| Métadonnées `Title`/`Author` | vides | **renseignées** |
| Nombre de pages | 1 | **1** |

## Étape 2 — corrections de contenu (5 minutes)

- [ ] Remplacer `XXXXXX` par l'intitulé exact de l'offre *(point 1)*
- [ ] Téléphone : `+33 07 ...` → `+33 7 46 36 97 75` *(point 3)*
- [ ] Remplacer les 9 `–` (U+2013) par `-` dans toutes les plages de dates *(point 7a/7b)*
- [ ] Scinder la ligne Engin A.I en deux plages canoniques *(point 7c)*
- [ ] Accentuer `COMPÉTENCES TECHNIQUES` et `CENTRES D'INTÉRÊT` *(point 10)*
- [ ] Ajouter un délimiteur dans les distinctions *(point 12)*

## Étape 3 — restructuration de la mise en page (30 minutes)

- [ ] En-tête linéaire, nom seul sur sa ligne *(point 2)*
- [ ] FORMATION en flux simple colonne *(point 4)*
- [ ] EXPÉRIENCE PROFESSIONNELLE en flux simple colonne *(point 4)*
- [ ] LANGUES sur une seule ligne continue *(point 4)*
- [ ] `\scriptsize` → `\footnotesize` dans les compétences *(point 9)*
- [ ] `letterpaper` → `a4paper` *(point 13)*
- [ ] Produire une variante sans photo pour les dépôts ATS *(point 11)*

## Étape 4 — enrichissement des mots-clés (recommandé)

La section COMPÉTENCES TECHNIQUES est celle que les ATS pondèrent le plus. Or plusieurs
compétences réelles n'y figurent **que** dans les puces d'expérience, où elles pèsent moins :
`Deep Learning`, `NLP`, `Vision par ordinateur / Computer Vision`, `LLM`, `Fine-tuning`,
`Data augmentation`, `Curriculum learning`, `Blender`, `Tkinter`, `MySQL`, `Matplotlib`.

Ajouter une ligne dédiée — **sans rien inventer**, tout est déjà attesté dans le CV :

```latex
\hangindent=1.4em\hangafter=1 \textbf{Domaines :} Deep Learning, Computer Vision
(Vision par ordinateur), NLP, LLM \& fine-tuning, data augmentation, segmentation
et detection d'objets, apprentissage auto-supervise\par
```

## Étape 5 — revérifier

Après recompilation, relancer les trois extractions et confirmer que la première ligne
contient le nom **seul**, et que chaque date est adjacente au bon employeur :

```bash
pdftotext -raw    -enc UTF-8 fr/Javier_TARAZONA_CV_fr.pdf - | head -8
pdftotext -layout -enc UTF-8 fr/Javier_TARAZONA_CV_fr.pdf - | sed -n '1,25p'
pdfinfo fr/Javier_TARAZONA_CV_fr.pdf | grep -E "Title|Author|Pages"
```

---

## Récapitulatif par priorité

| # | Problème | Gravité | Effort |
|---|---|---|---|
| 1 | Placeholder `XXXXXX` dans le titre | 🔴 Critique | 1 min |
| 2 | Nom + e-mail fusionnés sur la 1ʳᵉ ligne | 🔴 Critique | 10 min |
| 3 | Téléphone `+33 07...` invalide | 🔴 Critique | 1 min |
| 4 | Deux colonnes → dates désalignées d'une ligne | 🟠 Important | 30 min |
| 5 | Césure : `luminance` détruit | 🟠 Important | 1 min ✅ testé |
| 6 | Apostrophe U+2019 → 11 mots-clés cassés | 🟠 Important | 1 min ✅ testé |
| 7 | Plages de dates non parsables | 🟠 Important | 5 min |
| 8 | Métadonnées PDF vides | 🟡 Moyen | 1 min ✅ testé |
| 9 | 81,5 % du texte sous 9 pt | 🟡 Moyen | 5 min |
| 10 | Accents manquants dans 2 titres | 🟡 Moyen | 1 min |
| 11 | Photo dans l'en-tête | 🟡 Moyen | 1 min |
| 12 | Distinctions en chaîne continue | 🟡 Moyen | 2 min |
| 13 | Format Letter au lieu d'A4 | 🟡 Moyen | 1 min |
