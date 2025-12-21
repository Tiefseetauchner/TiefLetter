#import "@preview/tiefletter:0.2.0"

#tiefletter.select-language(tiefletter.languages.deutsch-at)

#tiefletter.offer(
  offer-number: "2024-023",
  offer-date: "2024-05-04",
  offer-valid-until: "2024-05-20",
  seller: (
    name: "Tiefseetauchner",
    address: "Schottenring 12\n1010 Wien",
    uid: "ATU00000000",
    is-kleinunternehmer: true,
    tel: "+43 123 456 789",
    email: "hello@example.com",
    signature: true,
  ),
  footer-middle: [FN 12345\nHG Wien],
  footer-right: [Bank: Beispielbank],
  banner-image: image("header.svg"),
  client: (
    gender-marker: "f",
    full-name: "Beispiel Kundin",
    short-name: "Maria Musterfrau",
    address: "Beispielstraße 11\n1020 Wien",
    signature: false,
  ),
  items: (
    (quantity: 1, description: "Brand Workshop", unit-price: 500.0, vat-rate: 20),
    (quantity: 2, description: "UX Review Session", unit-price: 150.0, vat-rate: 10),
  ),
  offer-text: [Wir schlagen ein kurzes Kickoff, Workshops zur Zieldefinition sowie einen UX-Review vor, basierend auf dem aktuellen Produktstand.

    Die Umsetzung kann modular beauftragt werden, je nach Bedarf.],
  after-table-text: [Alle Preise verstehen sich zuzüglich USt., sofern nicht anders angegeben.],
  pre-payment-amount: 30,
  proforma-invoice: true,
)
