# calcular-boleta

Calcula el **sueldo bruto** a partir del **sueldo líquido** considerando la retención de boleta de honorarios (Chile).

Este script es una herramienta simple de línea de comando para realizar el cálculo rápido sin tener que recordar la fórmula.

---

## 🚀 Instalación (macOS, sin sudo)

Ejecuta:

```bash
curl -fsSL https://raw.githubusercontent.com/bastianibanez/calcular-boleta/main/install.sh | bash
````

## 🧾 Uso

```bash
calcular-boleta <sueldo_liquido> [-r <retencion>]
```

### Parámetros

| Parámetro           | Descripción                                  | Ejemplo            | Default |
| ------------------- | -------------------------------------------- | ------------------ | ------- |
| `sueldo_liquido`    | Sueldo líquido que deseas recibir            | `500000`           | —       |
| `-r`, `--retencion` | Porcentaje de retención expresado en decimal | `0.145` para 14.5% | `0.145` |

---

## 💡 Ejemplos

```bash
# Cálculo estándar con 14.5% de retención (valor por defecto)
calcular-boleta 500000

# Con un porcentaje de retención distinto
calcular-boleta 500000 -r 0.12
```

Salida típica:

```
$585.000
```

---

## 📦 Desinstalar

```bash
rm ~/.local/bin/calcular-boleta
```

Si agregaste `~/.local/bin` al `PATH`, puedes editar `~/.zprofile` para remover la línea correspondiente (opcional).

---

## Licencia

MIT — libre para usar y modificar.
