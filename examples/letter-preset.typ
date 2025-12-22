#import "@preview/tiefletter:0.2.1"

#tiefletter.select-language(tiefletter.languages.deutsch-at)

#show: tiefletter.letter-preset.with(
  sender: (
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
  footer-left: [A template by Lena Tauchner!],
  header-left: [A letter from mom],
  addressee: (
    gender-marker: "o",
    full-name: "Muster GmbH",
    short-name: "Muster GmbH",
    address: "Examplegasse 5\n1020 Wien",
    signature: false,
  ),
)

Hello Muster GmbH,

I'm your mom, I got a new address, can you please wire me 20k so I can pay my bills? Thx k bye.

