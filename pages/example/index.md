---
layout: page
title: Example page
---

This is an example page.  It has a special name `index.md` so it will get
automatically loaded with a request for the folder.  I like making one folder
for each page since that becomes a natural place to store related resources such
as images.  But you can also have [another page](something-else) within the same
folder.

## Subheading

These pages use a language called Markdown.  There are a lot of Markdown guides
on the Web, but I'll do a quick demo here.  [Click on this internal
link](#code-example) to go straight to example of how to format code.

Here is how you make **bold** and *italicized* text.  You can also do italics
_like this_, and you ~~can't~~ can strike out text.  To underline text, which
isn't really a good idea on websites, you can <ins>use HTML tags</ins>.
Note that to start a new paragraph you need TWO blank lines; if you want an
explicit line<br> break you can use a `<br>` tag.

| other features | supported? |
| -------------- | ---------- |
| tables         | Yes!       |
| images         | Yes, I need to add an example here. Not sure how to do thumbnails. |

You can use custom styles
<span style="background-color: pink; padding: 0 6px 2px 6px;">right in the
document</span> or put them
<span class="example-page-special1">in assets/custom.scss</span>.

### Sub-sub heading

#### Level 4 heading

##### Level 5 heading

###### Level 6 heading

* Start of an unordered list
* Another item in the list

1. Ordered list item one
3. Ordered list item two (note that the numbers *you* type get ignored).
   * Sublists
   * work
   * too
     1. And also
     2. sub-sub-lists!

> Quotations are formatted like this.<br>
> -Paul

## <a name="code-example"></a>Code example

```ruby
def hello_world(x)
  puts "You can insert code like this and get"
  puts "syntax highlighting for a variety of languages."
end
```

````
You can even type Markdown inside of Markdown!
Just type it like this, using as many backquote characters as you need:

```
This will be formatted as a code example.

* This is how you make a list
* Etc.
```
````
