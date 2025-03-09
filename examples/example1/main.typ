#import "@local/tlseinp-report:0.1.0"

#show: tlseinp-report.basic.with(
  title: "Example 1",
  subtitle: "Toulouse INP Template",
  page-header: "Example 1 - Toulouse INP template",
  author: "Alea Randy",
  group: none,
  year: "2024",
  class: "FISA SN 2A",
  formation-image: tlseinp-report.formation.N7,
) 

#context {
  outline(target: selector(heading).before(locate(<appendix>)), indent: auto)
}

#tlseinp-report.figures()
#tlseinp-report.figures(kind: list, heading-name: "Table of listings")

#pagebreak()

= Introduction

You can suggest some features in this #link("githublinkici")[github repository].

#lorem(20)

#lorem(20)

= Features
== List

#lorem(20)

- One
- Two
- Three

+ One
+ Two
+ Three

=== Hello

#lorem(20)

==== Hey

#lorem(20)

===== How are you ?

This template allows only 5 levels.

== Customized items


@code is an example of `code integration` with figure.

#figure(caption: [Hello world], kind: list,
```java
public static void main(String[] args) {
  System.out.println("Hello world !");
}
```
)<code>

#pagebreak()

@logo is an example of `image integration` #footnote[https://typst.app/app] <fn> with image @fn.
#figure(caption: [N7 logo], tlseinp-report.formation.N7)<logo>

= Summary

Thanks for using !

#tlseinp-report.deliverables(
  (
    "tests.pdf": "file showing our tests",
    "wow.pdf": "Wow !",
  )
)

= Appendices <appendix>
#tlseinp-report.appendices(include "annexe.typ")