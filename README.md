# FitCore Gym - HTML5 Practical Project

This is a comprehensive HTML5 website for FitCore Gym, demonstrating modern semantic elements, multimedia integration, accessibility features, and responsive design principles. The site is built using pure HTML5 and CSS without JavaScript.

## Pages Overview

- **index.html** — Semantic home page with skip links, microcontent elements (time, mark, abbr, code, kbd, samp), and blockquote citations
- **about.html** — Company history with unordered/ordered lists, definition lists, and internal navigation links  
- **media.html** — Responsive images using `<picture>`, audio controls, and video with WebVTT captions
- **extras.html** — Data tables with proper structure, `<details>` FAQs, `<dialog open>`, `<progress>` and `<meter>` elements



## CSS3 Features (NEW)
* Design Tokens - CSS variables for colors, spacing, typography
* Responsive Layout - Flexbox navigation + CSS Grid main layout
* Mobile-First - Breakpoints at 768px, 1024px
* Components - Cards, tables, interactive elements
* Dark Mode - Automatic via prefers-color-scheme
* Animations - Hover effects with reduced-motion support
* Utilities - .text-center, .mt-2, .visually-hidden


## File Structure
```
html5-practical/
├─ index.html
├─ about.html
├─ media.html
├─ extras.html
├─ assets/
│ ├─ css/
│ │ └─ styles.css
│ ├─ images/ … (existing)
│ ├─ audio/ … (existing)
│ ├─ video/ … (existing)
│ └─ captions/ … (existing)
├─ Dockerfile
├─ .dockerignore
└─ README.md (update with CSS & Docker sections)
```
## CSS3 Features & Design System

### Design Tokens (CSS Variables)
- **Colors**: `--bg`, `--fg`, `--muted`, `--brand`, `--brand-contrast`
- **Typography**: `--font-sans`, `--font-mono`, `--h1`, `--h2`, `--body`
- **Spacing**: `--space-1` through `--space-5` for consistent spacing scale
- **Dark Mode**: Automatic theme switching via `prefers-color-scheme`

### Layout & Responsiveness
- **Flexbox Navigation**: Responsive header with mobile-friendly collapsing
- **CSS Grid**: Main content layout with sidebar pattern for large screens
- **Mobile-First**: Breakpoints at 480px, 768px, and 1024px
- **Single Column**: Mobile layout stacks content vertically

### Components
- **Cards**: Consistent padding, border-radius, and subtle shadows
- **Tables**: Striped rows with responsive overflow handling
- **Media**: Responsive images and videos with styled captions
- **Interactive Elements**: Enhanced focus states for details/summary and dialog

### Utilities
- Custom utility classes: `.mt-2`, `.mb-3`, `.text-center`, `.visually-hidden`
- Reusable spacing and alignment utilities across all pages

### Animations & Interactions
- Hover effects and focus states on all interactive elements
- Subtle CSS transitions for enhanced user experience
- Reduced motion support: `@media (prefers-reduced-motion: reduce)`

## Accessibility Features

**WCAG AA Compliance** - Color contrast ratios meet accessibility standards  
**Skip Navigation** - Visible on focus for keyboard users  
**Focus Indicators** - Clear focus states on all interactive elements  
**Semantic Structure** - Proper heading hierarchy and landmark roles  
**Screen Reader Support** - ARIA labels and descriptive alt text  
**Reduced Motion** - Respects user motion preferences

## Docker Deployment

### Building the Image
```bash
# Build the Docker image
docker build -t <your-dockerhub-username>/html5-css3-site:lab2 .
```

### Running Locally
```bash
# Run container mapped to localhost:8080
docker run --rm -p 8080:80 <your-dockerhub-username>/html5-css3-site:lab2

# Open http://localhost:8080 to view the site
```

### Publishing to Registry
```bash
# Login to Docker Hub
docker login

# Push the image
docker push <your-dockerhub-username>/html5-css3-site:lab2

# Optional: Tag as latest
docker tag <your-dockerhub-username>/html5-css3-site:lab2 <your-dockerhub-username>/html5-css3-site:latest
docker push <your-dockerhub-username>/html5-css3-site:latest
```

## Performance Considerations

- **CSS Size**: Optimized stylesheet under 50KB
- **Image Optimization**: Modern formats with fallbacks in `<picture>` elements
- **Font Loading**: System font stack to avoid FOUT/FOIT issues
- **Health Check**: Docker container includes HTTP health monitorin

## HTML5 Features Demonstrated

 * Semantic Structure** - Complete semantic layout on all pages  
 * Media Integration** - Responsive images, audio, video with captions  
 * Accessibility** - Skip links, ARIA labels, proper alt text  
 * Interactive Elements** - Details/summary, dialog, progress, meter  
 * Microcontent** - Time, mark, abbr, code, kbd, samp elements  
 * Data Tables** - Proper table structure with caption, thead, tbody, tfoot

**Live site:** https://andrewombati.github.io/HTML5-Practical/