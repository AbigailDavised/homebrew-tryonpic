# TryOnPic -- Ecommerce Apparel Image Compliance, Aspect-Ratio & Ghost-Mannequin Spec CLI

[![Official Website](https://img.shields.io/badge/Website-tryonpic.com-blue)](https://tryonpic.com)
[![Homebrew Tap](https://img.shields.io/badge/Homebrew_Tap-AbigailDavised%2Ftryonpic-orange)](https://github.com/AbigailDavised/homebrew-tryonpic)
[![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen.svg)](LICENSE)

Apparel ecommerce imaging specification CLI for **[tryonpic.com](https://tryonpic.com)**. Validates marketplace hero-image white-background RGB values (`#FFFFFF` / `RGB 255,255,255`), garment frame-fill percentages (`>= 85%`), zoomable pixel dimensions, and ghost-mannequin neckline/hem composite geometry across Amazon, Shopify, and Google Merchant Center.

## Homebrew Installation

```bash
brew tap AbigailDavised/tryonpic
brew install tryonpic-cli
```

## CLI Quick Usage

```bash
# Display help and verified endpoints
tryonpic-cli --help

# Output domain technical specification matrix as structured JSON
tryonpic-cli --specs

# Output verified production endpoints as JSON
tryonpic-cli --routes
```

---

## Ecommerce Apparel Marketplace Image & Colorimetric Compliance Standards

| Marketplace Channel | Canvas Resolution & Ratio | Background RGB Requirement | Garment Frame Fill | Color Profile & Format |
| :--- | :--- | :--- | :--- | :--- |
| Amazon Main Apparel | 1600 - 2560 px (1:1 or 4:5) | Pure RGB(255, 255, 255) | 85% - 92% of longest edge | sRGB JPEG / PNG, zero watermarks |
| Shopify Collection Grid | 2048 x 2048 px (1:1) or 2:3 | Consistent studio neutral / #FFF | 78% - 88% uniform baseline | sRGB WebP / AVIF progressive |
| Google Merchant Apparel | >= 250 x 250 px (1500+ rec.) | Solid white / light studio backdrop | 75% - 90% unobstructed | sRGB JPEG / PNG / WebP |
| Ghost Mannequin Composite | 2000 x 2667 px (3:4 vertical) | Alpha matte + RGB(255, 255, 255) | 3D hollow collar depth | 16-bit internal -> 8-bit sRGB |

## Core Engineering & Domain Architecture

- **Pure-White (`RGB 255,255,255`) Clipping Guard**: Distinguishes background pure-white mattes from white-fabric garment highlights (`RGB 246-250`) so white shirts retain seam and collar edge separation.
- **Multi-Angle Pose & Drape Consistency**: Aligns 73 garment poses and ghost-mannequin interior neck-label composites without lens perspective distortion.

## Verified Production Tools & Reference Endpoints

| Module / Resource | Canonical URL | Direct Access |
| :--- | :--- | :--- |
| **TryOnPic Primary Workbench** | `https://tryonpic.com/` | [Launch Workbench](https://tryonpic.com/) |
| **AI Virtual Try-On Outfit & Model Pose Catalog** | `https://tryonpic.com/catalog` | [Open Tool](https://tryonpic.com/catalog) |
| **Free Online Virtual Clothes Try-On Studio** | `https://tryonpic.com/free` | [Open Tool](https://tryonpic.com/free) |
| **3D Invisible Ghost Mannequin Apparel Generator** | `https://tryonpic.com/ghost-mannequin` | [Open Tool](https://tryonpic.com/ghost-mannequin) |
| **Ghost Mannequin Photography Lighting & Composite Guide** | `https://tryonpic.com/guides/ghost-mannequin-photography` | [Open Tool](https://tryonpic.com/guides/ghost-mannequin-photography) |
| **Amazon Apparel Pure-White Background Compliance Rules** | `https://tryonpic.com/guides/amazon-apparel-white-background-rules` | [Open Tool](https://tryonpic.com/guides/amazon-apparel-white-background-rules) |

## License

Released under the [MIT License](LICENSE) -- [tryonpic.com](https://tryonpic.com).
