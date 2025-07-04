# AWS Troubleshooting Demo

Este proyecto es una demostración práctica de cómo identificar y solucionar errores comunes en entornos de AWS.

## 📌 Objetivo

Mostrar un enfoque paso a paso para detectar, diagnosticar y resolver problemas frecuentes en servicios como EC2, IAM, Billing, etc.

## 🗂️ Estructura del Proyecto

aws-troubleshooting-demo/
│
├── README.md
├── deploy_script.sh # Script para desplegar recursos
├── fix_logs.md # Explicación de errores y soluciones
├── troubleshooting.md # Guía de pasos de troubleshooting
├── terraform/
│   └── main.tf # Infraestructura como código (Terraform)
└── screenshots/
    └── billing-alert.png # Captura de pantalla del error o solución (ej. alerta de presupuesto)
    └── iam-policy-error.png # Captura de error común con IAM
    └── architecture-diagram.png # Diagrama de arquitectura


## 🛠️ Herramientas Utilizadas

- AWS CLI
- Terraform
- Bash
- IAM Policies
- CloudWatch

## 🖼️ Diagrama de Arquitectura

![Architecture Diagram](screenshots/architecture-diagram.png)

## 🚀 Cómo usar este proyecto

1. Cloná el repositorio.
2. Ejecutá `deploy_script.sh` para desplegar el entorno (si aplica).
3. Reproducí los errores descritos y seguí los pasos de solución.
4. Consultá los logs y capturas en la carpeta `/screenshots`.

## 🧠 Conocimientos demostrados

- Detección de errores comunes en AWS
- Automatización de despliegue con Bash y Terraform
- Buenas prácticas de troubleshooting

---



