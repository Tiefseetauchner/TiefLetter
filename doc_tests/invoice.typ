#import "meta.teco.typ": test-languages, select-test-language
#import "../lib.typ": invoice

#for (idx, lang) in test-languages.enumerate() {
  select-test-language(lang)
  invoice(
    invoice-number: "2024-0001",
    invoice-date: "2024-05-04",
    delivery-date: "2024-05-02",
    seller: (
      name: "Tiefseetauchner",
      address: "Schottenring 12\n1010 Wien",
      uid: "ATU00000000",
      is-kleinunternehmer: false,
      tel: "+43 123 456 789",
      email: "hello@example.com",
      signature: true,
    ),
    footer-middle: [FN 12345\nHG Wien],
    footer-right: [Bank: Beispielbank],
    banner-image: image("../template/header.svg"),
    client: (
      gender-marker: "o",
      full-name: "Muster GmbH",
      short-name: "Muster GmbH",
      address: "Examplegasse 5\n1020 Wien",
      signature: false,
    ),
    items: (
      (quantity: 2, description: "Design Sprint", unit-price: 400.0),
      (quantity: 1, description: "Implementation Package", unit-price: 300.0, vat-rate: 10),
      (quantity: 3, description: "Support Hour", unit-price: 75.0),
    ),
    after-table-text: [Delivery within 7 days after payment receipt.],
    payment-due-date: "2024-05-18",
    iban: "AT021200012345678901",
    bic: "TESTATW1",
    lang: lang,
  )

  if idx + 1 < test-languages.len() { pagebreak() }
}
