# hugo-shb-theme

Hugo theme of [www.sunderner-heimatbund.de](https://www.sunderner-heimatbund.de)
used by [`sunderner-heimatbund/website`](https://github.com/sunderner-heimatbund/website).

> [!NOTE]
> This theme is tailored to the aforementioned website and will likely break if
> adapted to other Hugo projects.

## Installation

To install this theme via Hugo modules, run

```bash
hugo mod get github.com/sunderner-heimatbund/hugo-shb-theme
```

<details><summary>Local Development</summary>
<p>

To develop this repository and an importing one simultaneously, it's far easier
to clone both locally, and then use either one of these methods:

1. In the importing module, first install this theme as described above, then
   use Go's [`replace`](https://go.dev/ref/mod#go-mod-file-replace) directive.
2. Use a [Hugo workspace](https://gohugo.io/hugo-modules/use-modules/#workspace)
   file `hugo.work` in the importing repository.

</p>
</details>

### Configuration

### Page Frontmatter

**Pages**:

- `author` (string): Author of the post, shown in the post meta information.
  Must exactly match `data/authors.yml`.

### Site Parameters

The red asterisk <font color="tomato">*</font> indicates a required parameter.

<table>
<tr>
    <th>Name</th>
    <th>Type</th>
    <th>Description</th>
</tr>

<tr>
    <td><font color="tomato">*</font><code>logo</code></td>
    <td>string</td>
    <td>Path to an image of the website's logo</td>
</tr>

<tr>
    <td><font color="tomato">*</font><code>author.name</code></td>
    <td>string</td>
    <td>Name of the website owner</td>
</tr>

<tr>
    <td><font color="tomato">*</font><code>author.copyright</code></td>
    <td>string</td>
    <td>Copyright notice shown in the footer</td>
</tr>

</table >

## License

This theme is licensed under the [MIT License](LICENSE) by Sunderner Heimatbund
e.V. Please note that content and images used in this theme may be subject
to different licenses.
