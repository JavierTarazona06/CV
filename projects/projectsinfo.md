# Proyectos

## 1. "Tameo" - Vision por Ordenador (En curso)
**Tecnologías:** Python, PyTorch, YOLO, ZED, DWA, aprendizaje supervisado, detección/segmentación

Desarrollo del sistema de visión por ordenador de un barco de clase IA en el marco del Monaco Energy Boat Challenge 2026. Pipeline de visión para la detección y la decisión de movimiento; fine-tuning en datasets especializados, data augmentation y comparación de modelos, con mejora de las métricas mAP, F1, precisión/recall de aproximadamente 80% a 90%.

## 2. Slow - Aplicación de Escritorio para el Análisis de Tráfico
**Tecnologías:** Python, Tkinter, OpenCV, MySQL, PyMySQL, Matplotlib, PIL/Pillow, Programación Orientada a Objetos

- **Visión por Ordenador y Seguimiento de Vehículos:** Diseño de una aplicación desktop para analizar videos de circulación, seguir vehículos en movimiento y estimar su velocidad a partir de un pipeline de procesamiento de video con OpenCV.
- **Interfaz, Datos y Reporting:** Desarrollo de una interfaz gráfica con autenticación, gestión de usuarios, carriles, vehículos e históricos de videos, con almacenamiento MySQL y visualización de velocidades detectadas mediante Matplotlib.

**Repositorio:** https://github.com/JavierTarazona06/slow

## 3. Segmentación de Piel por Aprendizaje Estadístico - Visión por Ordenador
**Tecnologías:** Python, OpenCV, NumPy, scikit-learn, Matplotlib, K-Means, Gaussian Naive Bayes, QDA, RGB/HSV/YCrCb

- **Procesamiento de Imágenes y Extracción de Características:** Desarrollo de un pipeline de segmentación píxel a píxel para analizar imágenes de rostros a partir de espacios de color RGB, HSV, YCrCb y descriptores Cb-Cr enriquecidos por el gradiente de luminancia.
- **Aprendizaje Supervisado y No Supervisado:** Comparación de clasificadores bayesianos supervisados (Gaussian Naive Bayes y QDA) con enfoque K-Means no supervisado para extraer máscaras de piel y visualizar resultados en imágenes de prueba.

**Repositorio:** https://github.com/JavierTarazona06/Vision_LocalFeatures_BayesianClassification_KMeans/blob/main/docs/rappport/rap.pdf

## 4. ORIUN - Plataforma Web de Gestión de Candidaturas a Movilidad Internacional
**Tecnologías:** Python, Django REST Framework, PostgreSQL, Next.js, React, TailwindCSS, Docker, Vercel, Google Cloud APIs, SCRUM

- **Desarrollo Full-Stack:** Diseño de una plataforma web centralizada que permite a los estudiantes consultar convocatorias de candidaturas, enviar sus expedientes, hacer seguimiento del estado de su candidatura y recibir notificaciones relacionadas con el proceso.
- **Back-end y Gestión de Datos:** Implementación de una API REST con Django, autenticación JWT, módulos CRUD para convocatorias, candidaturas, estudiantes y empleados, además de generación de reportes y estadísticas para la ayuda en la decisión administrativa.
- **Despliegue e Integración:** Front-end desarrollado con Next.js/React y desplegado en Vercel; back-end containerizado con Docker e integrado a servicios Google Cloud para la gestión de recursos.

**Repositorio:** https://github.com/JavierTarazona06/ORIUN_back

## 5. "Sharp Sight" - Comparador de Ofertas Tecnológicas
**Tecnologías:** Python, FastAPI, Selenium, pandas, API REST, web scraping, Vercel

Desarrollo de un backend de comparación de precios para dispositivos tecnológicos, integrando un pipeline de recopilación automatizada de ofertas desde varios sitios de e-commerce colombianos. Implementación de módulos de scraping, limpieza y estructuración de datos, filtrado determinista por coincidencia de cadenas, categorización de productos, endpoints REST con FastAPI y configuración de despliegue web.

**Repositorio:** https://github.com/JavierTarazona06/SharpSight
