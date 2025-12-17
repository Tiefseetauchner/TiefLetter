#import "meta.teco.typ": test-languages
#import "../lib.typ": document-preset, select-language

#for (idx, lang) in test-languages.enumerate() {
  select-language(lang)
  document-preset(
    banner-image: image("../template/header.svg"),
    footer-left: [Footer left 1\
      Footer left 2],
    footer-middle: [Footer middle 1\
      Footer middle 2],
    footer-right: [Footer right 1\
      Footer right 2],
  )[
    = Document (#lang)

    This document outlines nothing. It is just a test
  ]

  if idx + 1 < test-languages.len() { pagebreak() }
}
