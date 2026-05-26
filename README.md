# Instructions for future story-card generation

This repository contains a static GitHub Pages site with illustrated HTML story cards.

## Project structure

```text
index.html
start-server.bat
stories/
  <story-slug>/
    index.html
```

The root `index.html` is the title page with links to all story cards.
Each story lives in its own folder under `stories/` and has its own `index.html`.

## Core rules

- Do not extract shared CSS, JS, SVG, or particle effects into common assets unless explicitly requested.
- Make every story card self-contained: keep its HTML, CSS, JS, and inline SVG inside that story's `index.html`.
- Do not modify existing story cards when adding a new story, except when the user explicitly asks to update one.
- When adding a new story, create `stories/<story-slug>/index.html` and add a link to it in the root `index.html`.
- Use mobile-first layout and test-friendly static HTML suitable for GitHub Pages.
- Prefer inline SVG and CSS animations for character art and motion.
- Avoid external dependencies, build steps, CDNs, tracking scripts, and remote assets unless the user explicitly asks.

## Continuations of existing stories

If the user asks for a continuation of an existing story, inspect the previous story's `index.html` and reuse its visual language where appropriate.
Characters may stay recognizable, but their pose, scene, expressions, and animation can change to match the new episode.

## Root index link format

Use this structure when adding a story to the title page:

```html
<a class="story-link" href="./stories/<story-slug>/">
  <span class="story-link-title">Story title</span>
  <span class="story-link-meta">Short scene description</span>
</a>
```

## Local development

Use `start-server.bat` from the project root. It should start `python -m http.server 8000` and open `http://localhost:8000/`.
If the browser says that localhost refused to connect, the Python server did not start or exited immediately. Check the server window for the error.
