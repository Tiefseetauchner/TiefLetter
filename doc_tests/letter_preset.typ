#import "meta.teco.typ": test-languages
#import "../lib.typ": letter-preset, select-language

#for (idx, lang) in test-languages.enumerate() {
  select-language(lang)
  show: letter-preset.with(
    sender: (
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
    addressee: (
      gender-marker: "m",
      full-name: "Max Mustermann",
      short-name: "Max Mustermann",
      address: "Musterstraße 3\n1150 Wien",
      signature: false,
    ),
    header-left: [Projekt: LP-2024-05],
    header-right: [05.05.2024],
  )

  [
    Wir bestätigen den Erhalt Ihrer Anfrage und melden uns mit einem detaillierten Angebot binnen zwei Werktagen.

    Für Rückfragen stehen wir jederzeit zur Verfügung.
  ]

  if idx + 1 < test-languages.len() { pagebreak() }
}
