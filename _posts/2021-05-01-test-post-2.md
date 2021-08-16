---
layout: post
usehighlight: true
tags: [Images, Jekyll-blog]
title: Test post with responsive images
---

<img style="display: block;" class="img-fluid" src="https://live.staticflickr.com/65535/48993906211_1534a8f85d_b.jpg" alt="Toronto skyline.">
<p class="small">"Toronto skyline." by Bernard Spragg is marked under CC0 1.0.</p>

The code for this page is:

```html
---
layout: post
usehighlight: true
tags: [Images, Jekyll-blog]
title: Test post with responsive images
---

<img style="display: block;" class="img-fluid" src="https://live.staticflickr.com/65535/48993906211_1534a8f85d_b.jpg" alt="Toronto skyline.">
<p class="small">"Toronto skyline." by Bernard Spragg is marked under CC0 1.0.</p>
```

To make images responsive in any post, use the HTML image element and add a class attribute of `img-fluid`.