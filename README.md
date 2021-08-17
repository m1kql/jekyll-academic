# Jekyll Academic

![Gem](https://img.shields.io/gem/v/jekyll-academic?color=orange&style=plastic)
![Gem](https://img.shields.io/gem/dt/jekyll-academic?color=blue&style=plastic)

Jekyll Academic is a lightweight theme for any academic usecase. Perfect for portfolio websites, blogs, and academia. It is a simple no nonsense theme that offers many features.

[Live preview](https://jekyll-academic.netlify.app)

- Ultra-fast serving times, only ~2.6kb of CSS
- 99/100 Performance on Lighthouse
- 100/100 SEO on Lighthouse
- RSS and JSON feed
- Enhanced Markdown (Highlightjs, MathJax, ChartJs, FontAwesome/Bootstrap Icons)
- Optional Disqus comments
- Search bar with blog categorisation based on tags
- Custom 404 page
- SEO optimised (robots.txt, sitemap.xml, jekyll-seo-tag)

## Contents
- [Jekyll Academic](#jekyll-academic)
  - [Contents](#contents)
  - [Installation](#installation)
    - [Quick install](#quick-install)
    - [Longer installation process](#longer-installation-process)
  - [Usage](#usage)
  - [Contributing](#contributing)
  - [License](#license)

## Installation

### Quick install

```shell
$ curl -s -L https://raw.githubusercontent.com/yak-fumblepack/jekyll-academic/master/scripts/bundle-install.sh | bash
```

### Longer installation process

Add this to your Jekyll site's Gemfile:

```ruby
gem "jekyll-academic"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-academic
```

Then execute:

```shell
$ bundle install
```

or install it yourself as a Gem:

```shell
$ gem install jekyll-academic
```

OR 

```shell
$ git clone https://github.com/yak-fumblepack/jekyll-academic.git
```

```shell
$ bundle install
```

Then finally to view your site (default is [localhost:4000]()):

```shell
$ bundle exec jekyll serve
```

## Usage

To make it yours, edit the `_config.yml` file or refer to our [docs](https://jekyll-academic.netlify.app/docs) for further configuration.

Have fun building your amazing site!

## Contributing

Bugfixes and features are most welcome and appreciated. For features and bugfixes, please make the pull request onto the `dev` branch. If you're looking to improve the documentation, make the pull request onto `docs-pages`.

Is there a bug? Feel free to open an issue.

## Development 

Fork this repo

```shell
$ git clone https://github.com/yak-fumblepack/jekyll-academic.git/
$ cd jekyll-academic/
$ bundle install
$ bundle exec jekyll serve
```

And view it on [localhost:4000]()

Then make your amazing contributions and changes!

## License

This project is licensed under [MIT](https://opensource.org/licenses/MIT). See [LICENSE](https://github.com/yak-fumblepack/jekyll-academic/blob/master/LICENSE.txt) file for more details.