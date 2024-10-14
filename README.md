# OCR con MATLAB para Identificaciones Oficiales

Este proyecto implementa un sistema OCR (Reconocimiento Óptico de Caracteres) en MATLAB, especializado en extraer información relevante de imágenes de identificaciones oficiales. El sistema aplica preprocesamiento de imágenes y técnicas de visión por computadora para mejorar la precisión de la extracción de texto.

## Descripción del Proyecto

El OCR toma como entrada imágenes de identificaciones oficiales, las procesa mediante tres métodos según la calidad de la imagen y extrae información utilizando técnicas de procesamiento de imágenes. El sistema es capaz de manejar imágenes de baja calidad mediante preprocesamiento adaptativo, lo que garantiza que se extraiga la mayor cantidad de información posible.

### Funcionalidades

1. **Preprocesamiento de la Imagen**:
   - *Escala de Grises*: Convierte la imagen a escala de grises para mejorar el rendimiento del OCR.
   - *Selección de Sectores*: Recorta áreas específicas de la imagen que contienen información clave (nombre, CURP, etc.).
   - *Mapa de Calor de Blanco y Negro*: Resalta áreas oscuras que contienen texto usando un mapa de calor.

2. **Extracción de Información**:
   - Usa la herramienta OCR integrada de MATLAB para extraer texto de las áreas procesadas de la imagen.
   - Procesa las imágenes con filtros y técnicas de mejora antes de la extracción de texto para aumentar la precisión.

3. **Análisis de Calidad de la Imagen**:
   - La calidad de la imagen se clasifica en **Buena**, **Regular** o **Mala**, y se ajustan los métodos de preprocesamiento en función de esta clasificación.

### Estructura del Proyecto

