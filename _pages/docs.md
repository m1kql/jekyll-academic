---
layout: default
usehighlight: true
usemathjax: true
---

<h1 style="color: #cc0000;">Docs</h1> 

## What's on this page
- <a href="#configyml" class="primary"><span class="bi bi-link-45deg"></span></a> Configuring the `_config.yml`
- <a href="#othconfig" class="primary"><span class="bi bi-link-45deg"></span></a> Other configurations
- <a href="#writingcontent" class="primary"><span class="bi bi-link-45deg"></span></a> Writing content 
  - <a href="#blog" class="primary"><span class="bi bi-link-45deg"></span></a> Blog
  - <a href="#projects" class="primary"><span class="bi bi-link-45deg"></span></a> Projects
- <a href="#examples" class="primary"><span class="bi bi-link-45deg"></span></a> Examples
  - <a href="#typography" class="primary"><span class="bi bi-link-45deg"></span></a> Typography
    - <a href="#mathjax" class="primary"><span class="bi bi-link-45deg"></span></a> MathJax
  - <a href="#icons" class="primary"><span class="bi bi-link-45deg"></span></a> Icons

<hr>

If you would like to view the site structure for this theme, head over to [github/yak-fumblepack/jekyll-academic/tree/docs-pages](https://github.com/yak-fumblepack/jekyll-academic/tree/docs-pages) to see it.

<hr>
<h2 id="configyml"><a href="#top" class="primary"><span class="bi bi-link-45deg"></span></a> Configuring the <code>_config.yml</code></h2> 

Here are the list of global variables that you can edit in the `_config.yml` file:

| name | default value | how to use |
| --- | --- | --- |
| `title` | Jekyll Academic | The title of your site, put whatever name you want there |
| `navbar_title` | Jekyll Academic | The heading on the sidebar, put the same or different name as your site title |
| `author.name` | jekyll-academic | Put your name |
| `author.email` |  | Put your email here |
| `description` | repo description | Put your site description here |
| `url` | [jekyll-academic.netlify.app](https://jekyll-academic.netlify.app) | Put your base hostname & protocol for your site. |
| `baseurl` |  | You can put your baseurl for this site here. If you don't have one, it's fine to leave it blank |

<br />

Here are the list of Jekyll Academic variables that you can edit in the `_config.yml` file (these variables can be found under the "`jekyllacademic:`" key value):

| name | default value | how to use |
| --- | --- | --- |
| `homepage_title` | Hello World! | The title of your index.md/home page |
| `disqusname` |  | If you choose to have comments, put your disqus site shortname here. |
| `footer` | Jekyll Academic, 2021 | Put your name here and the copyright date |
| `contentlicense` | MIT | Choose between the list of licenses provided in the comment in the `_config.yml file` |
| `socials.twitter` |  | Put your twitter username here |
| `socials.github` |  | Put your github username here, or you can put a link to a specific repo (e.g `github: yak-fumblepack/jekyll-academic`) |
| `socials.linkedin` |  | Put your specific linkedin username |
| `socials.keybase` |  | Put your keybase username here |

<br/>

If you choose to not have projects or you want to make a new collection, edit this part of the `_config.yml` file:

```yaml
collections:
  pages: # don't edit this, used for regular page display
    output: true
    permalink: /:name
  posts: # used for blog posts, can be configured differently if you want to
    output: true
    permalink: /:year/:month/:day/:slug
  projects: # edit this or remove this whole section and the directory "_projects" if you don't want it
    output: true
    permalink: /:collection/:title
  
  # add your new collection here
```

If you would like to add more plugins, simple add a new plugin to your `Gemfile` and then add it to the `plugins:` section:

```yaml
plugins:
  - jekyll-sitemap
  - jekyll-seo-tag
  
# your plugins
```

<hr>

<h2 id="othconfig"><a href="#top" class="primary"><span class="bi bi-link-45deg"></span></a> Other configurations</h2> 

To configure your navigation sidebar, go to the `_data/` directory and create a YAML file named `nav.yml`.

It is presented in this format:

```yaml
links:
  - title: overview
    url: /overview
  - title: docs
    url: /docs
  - title: blog
    url: /blog

  # etc.
```

When you create a new page and would like to link it to the navigation bar, simple add a new entry with your page title, and the url you want. 

Depending on your use case, the basic `_config.yml` configuration might not be enough.

In the `_includes/` directory, you will find the following:
  - `footer.html`
  - `head.html`
  - `licenses.html`
  - `nav.html`
  - `socials.html`

Should you need to add more things to the navbar, you can add it in using HTML. Please only do this if you have a basic understanding of how to write HTML.

If you need more libraries, add it to the `head.html`, if you need more social links, use the Liquid format in `socials.html` and add it in, as well as adding the social to `_config.yml`. 

In the case that you do not see your license choice, or need a hardcoded entry in the navbar or footer, add it into the respective files. 

<hr>

<h2 id="writingcontent"><a href="#top" class="primary"><span class="bi bi-link-45deg"></span></a> Writing Content</h2> 

The regular pages are stored in a collection, namely `pages:` and are stored in the `_pages/` folder. 

To create a new page, create and name your markdown file inside the `_pages/` folder.

The default frontmatter for such pages is:

```yaml
---
layout: default
---
```

Add the page name to `_data/nav.yml` in order to have it show up on the sidebar. 

There are configurable options for Pages, Blog and Projects. Use this in the frontmatter.

| name | type | what it does |
| --- | --- | --- |
| `usehighlight:` | boolean | enables highlightjs syntax highlighting | 
| `comments:` | boolean | enables disqus comments |
| `usemathjax:` | boolean | enables mathjax support |
| `usechartjs` | boolean | enables chartjs support |

<h3 id="blog"><a href="#top" class="primary"><span class="bi bi-link-45deg"></span></a> Blog</h3>

When writing blog posts, place the file in `_posts/` folder and use the following format: `yyyy-mm-dd-post-title.md`

The default frontmatter for blog posts is:

```yaml
---
layout: post
title: "A sample blog post, use quotations if you have - hyphens or '' singular quotes"
tags: [Tag 1, Separated by commas, tag 3]
---
```

| name | type | what it does |
| --- | --- | --- |
| `comments:` | boolean | enables disqus comments |

<h3 id="projects"><a href="#top" class="primary"><span class="bi bi-link-45deg"></span></a> Projects</h3> 

When writing project posts, put your file in the `_projects/` folder and also use the following format: `yyyy-mm-dd-project-title.md`

The default frontmatter for projects is:

```yaml
---
layout: default
title: "Sample pinned project"
stack: "HTML, SCSS, YAML, Liquid tags,"
snippet: "A snippet to show on the project card"
---
```

There are also some other configurable options:

| name | type | what it does |
| --- | --- | --- |
| `order:` | integer | determines the ordering of your post, 1 being first |
| `pinned:` | boolean | highlights and pins the project |

<hr>

<h2 id="examples"><a href="#top" class="primary"><span class="bi bi-link-45deg"></span></a> Examples</h2> 
<h3 id="typography"><a href="#top" class="primary"><span class="bi bi-link-45deg"></span></a> Typography</h3>

This theme uses bootstrap, so many of the typography here use the classes provided by Bootstrap v5.0. You can write them in HTML or markdown syntax.

<h4 id="mathjax"><a href="#top" class="primary"><span class="bi bi-link-45deg"></span></a> MathJax</h4>

The delimiters for MathJax is \$\$`1+1`\$\$. 

To change the configuration for MathJax, go to `_includes/head.html` and change the configuration there.

Examples:

```md
$$
\begin{align*}
  f(x) &= \int^a_b \frac{1}{3}x^3
\end{align*}
$$
```

$$\begin{align*}f(x) &= \int^a_b \frac{1}{3}x^3\end{align*}$$

```md
$$
M=\begin{bmatrix} 
  1 & 2 & 1 \\ 
  3 & 0 & 1 \\ 
  0 & 2 & 4 
\end{bmatrix}
$$
```

$$M=\begin{bmatrix} 1 & 2 & 1 \\ 3 & 0 & 1 \\ 0 & 2 & 4 \end{bmatrix}$$

```md
Sometimes, if you want to display inline math, you can just do this: $$\sum_{n=1}^{\infty} 2^{-n} = 1$$
```
Sometimes, if you want to display inline math, you can just do this: $$\sum_{n=1}^{\infty} 2^{-n} = 1$$


<h3 id="icons"><a href="#top" class="primary"><span class="bi bi-link-45deg"></span></a> Icons</h3>

To use Bootstrap icons, simply declare it in an element class attribute. They follow the format of `bi bi-icon-name`

For example, `<i class="bi bi-github"></i>` yields <i class="bi bi-github"></i>

To use Font Awesome icons, simply declare it as well in an element class attribute. They follow the format of `fa fa-icon-name` or `fas fa-icon-name`.

For example, `<i class="fa fa-linux fa-lg"></i>` yields a large icon: <i class="fa fa-linux fa-lg"></i>

<hr>
<a href="https://github.com/yak-fumblepack/jekyll-academic/tree/docs-pages/_pages/docs.md" target="_blank" class="btn shadow-sm" style="color: #000;">
  <i class="fa fa-code-fork fa-lg"></i>
  <span class="h6">Improve this page</span>
</a>
