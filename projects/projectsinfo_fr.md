# Projets

## 1. "Tameo" - Vision par Ordinateur (En cours)
**Technologies :** Python, PyTorch, YOLO, ZED, DWA, apprentissage supervisé, détection/segmentation

Développement du système de vision par ordinateur d'un bateau de classe IA dans le cadre du Monaco Energy Boat Challenge 2026. Pipeline de vision pour la détection et la décision de mouvement ; fine-tuning sur datasets spécialisés, data augmentation et comparaison de modèles, avec amélioration des métriques mAP, F1, précision/rappel d'environ 80 % à 90 %.

## 2. Slow - Application de Bureau pour l'Analyse Vidéo du Trafic
**Technologies :** Python, Tkinter, OpenCV, MySQL, PyMySQL, Matplotlib, PIL/Pillow, Programmation Orientée Objet

- **Vision par Ordinateur et Suivi de Véhicules :** Conception d'une application desktop permettant d'analyser des vidéos de circulation, de suivre des véhicules en mouvement et d'estimer leur vitesse à partir d'un pipeline de traitement vidéo avec OpenCV.
- **Interface, Données et Reporting :** Développement d'une interface graphique avec authentification, gestion des utilisateurs, voies, véhicules et historiques de vidéos, avec stockage MySQL et visualisation des vitesses détectées via Matplotlib.

**Dépôt :** https://github.com/JavierTarazona06/slow

## 3. Segmentation de Peau par Apprentissage Statistique - Vision par Ordinateur
**Technologies :** Python, OpenCV, NumPy, scikit-learn, Matplotlib, K-Means, Gaussian Naive Bayes, QDA, RGB/HSV/YCrCb

- **Traitement d'Images et Extraction de Caractéristiques :** Développement d'un pipeline de segmentation pixel à pixel pour analyser des images de visages à partir d'espaces colorimétriques RGB, HSV, YCrCb et de descripteurs Cb-Cr enrichis par le gradient de luminance.
- **Apprentissage Supervisé et Non Supervisé :** Comparaison de classificateurs bayésiens supervisés (Gaussian Naive Bayes et QDA) avec une approche K-Means non supervisée afin d'extraire des masques de peau et visualiser les résultats sur des images de test.

**Dépôt :** https://github.com/JavierTarazona06/Vision_LocalFeatures_BayesianClassification_KMeans/blob/main/docs/rappport/rap.pdf

## 4. ORIUN - Plateforme Web de Gestion des Candidatures à la Mobilité Internationale
**Technologies :** Python, Django REST Framework, PostgreSQL, Next.js, React, TailwindCSS, Docker, Vercel, Google Cloud APIs, SCRUM

- **Développement Full-Stack :** Conception d'une plateforme web centralisée permettant aux étudiants de consulter les appels à candidatures, soumettre leurs dossiers, suivre l'état de leur candidature et recevoir des notifications liées au processus.
- **Back-end et Gestion des Données :** Implémentation d'une API REST avec Django, authentification JWT, modules CRUD pour les appels, candidatures, étudiants et employés, ainsi que génération de rapports et statistiques pour l'aide à la décision administrative.
- **Déploiement et Intégration :** Front-end développé avec Next.js/React et déployé sur Vercel ; back-end conteneurisé avec Docker et intégré à des services Google Cloud pour la gestion de ressources.

**Dépôt :** https://github.com/JavierTarazona06/ORIUN_back

## 5. "Sharp Sight" - Comparateur d'Offres Technologiques
**Technologies :** Python, FastAPI, Selenium, pandas, API REST, web scraping, Vercel

Développement d'un backend de comparaison de prix pour dispositifs technologiques, intégrant un pipeline de collecte automatisée d'offres depuis plusieurs sites e-commerce colombiens. Mise en place de modules de scraping, nettoyage et structuration des données, filtrage déterministe par correspondance de chaînes, catégorisation des produits, endpoints REST avec FastAPI et configuration de déploiement web.

**Dépôt :** https://github.com/JavierTarazona06/SharpSight
