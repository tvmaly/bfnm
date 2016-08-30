# Best Food Near Me

## Setup

1. Get the code:

  ```
  git clone https://github.com/tysongach/best-food-near-me.git
  ```

1. Set up your machine:

  ```
  bin/setup
  ```

1. Run the app:

  ```
  bundle exec middleman
  ```

  ```
  open http://localhost:4567
  ```

## Front-end Architecture

This project uses:

- Sass, with Bourbon
- [BEM]-style CSS class names, with [namespaces]
  - `library/`: Global variables, mixins and functions; all non-rendering Sass
  - `base/`: Unclassed HTML elements (e.g. `a {}`, `input {}`)
  - `patterns/`: Abstractions, highly reusable pieces of style that are used in
    any number of unrelated contexts (e.g. `.p-media {}`)
  - `components/`: Discrete, implementation-specific piece of UI
    (e.g. `.c-site-nav {}`)
  - `utilities/`: High-specificity, very explicit selectors. Overrides and
    helper classes (e.g. `.u-flex {}`).
- Autoprefixer
- SCSS-Lint, with Hound ([configuration](.scss-lint.yml))
- A variety of CSS units:
  - `em` for typographical-related elements
  - `rem` for lengths related to components
  - `px` for borders, text shadows, etc.
  - `vw`/`vh` for lengths that should be relational to the viewport
- `modular-scale()` (which outputs `em` values) for font sizes

[BEM]: http://csswizardry.com/2013/01/mindbemding-getting-your-head-round-bem-syntax/
[namespaces]: http://csswizardry.com/2015/03/more-transparent-ui-code-with-namespaces/
