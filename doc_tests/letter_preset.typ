#import "meta.teco.typ": test-languages, select-test-language
#import "../lib.typ": letter-preset

#let translations = (
  closing: [Mit freundlichen Grüßen,],
)

#for (idx, lang) in test-languages.enumerate() {
  select-test-language(lang)
  letter-preset(
    translations,
    lang: lang,
    seller: (
      name: "Tiefseetauchner",
      address: "Schottenring 12\n1010 Wien",
      uid: "ATU00000000",
      is-kleinunternehmer: false,
      tel: "+43 123 456 789",
      email: "hello@example.com",
      signature: false,
    ),
    footer-middle: [FN 12345\nHG Wien],
    footer-right: [Bank: Beispielbank],
    banner-image: image("../template/header.svg"),
    client: (
      gender-marker: "m",
      full-name: "Max Mustermann",
      short-name: "Max Mustermann",
      address: "Musterstraße 3\n1150 Wien",
      signature: false,
    ),
    header-left: [Projekt: LP-2024-05],
    header-right: [05.05.2024],
    content: t => [
      Wir bestätigen den Erhalt Ihrer Anfrage und melden uns mit einem detaillierten Angebot binnen zwei Werktagen.

      Für Rückfragen stehen wir jederzeit zur Verfügung.
    ],
  )

  if idx + 1 < test-languages.len() { pagebreak() }
}
