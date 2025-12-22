#import "@preview/tiefletter:0.2.1"

#tiefletter.select-language(tiefletter.languages.deutsch-at)

#show: tiefletter.document-preset.with(
  banner-image: image("header.svg"),
  footer-middle: [A template by Lena Tauchner],
)

= TiefLetter

TiefLetter is a collection of templates that can conceivably enable someone to create a matching set of documents using Typst.

These templates provide a clear entry point into creating invoices, offers, contracts, and more, even using automated systems.

*A note on using these templates: These are not a replacement for legal council. There is no liability taken by the author(s), and by using these templates, you alone are responsible for ensuring the legality of the documents, as defined in the [LICENSE](LICENSE):*

*THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.*

_Note: The classes are historically very overgrown. There's a lot of arguments, and I may have missed one or threehundred. Sorry._

== Usage

To use TiefLetter with the Typst web app, choose "Start from template" and select TiefLetter. You will also need to include or install the Cormorant Garamond and Cormorant SC Fonts, should you chose to not change the default font.

To import the package manually in your Typst project, use:

```typst
#import "@preview/tiefletter:0.2.1": invoice
```

=== Setup

Setting up a project is relatively straightforward: import and select a language.

TiefLetter uses a language selection system lovingly dubbed "TiefLang" (though that is not a seperate library (yet)), which allows a user to set a language once and have it reused, or change it later. Available languages in TiefLetter are currently listed in the exported `languages` dictionary, and are:

- english-at -- English documents with Austrian formatting and laws applied. Language code "en-at"
- english-de -- English documents with German formatting and laws applied. Language code "en-de"
- english-us -- English documents with USA formatting (there are no laws in use that exist in the US to my knowledge). Language code "en-us"
- deutsch-at -- German documents with Austrian formatting and laws applied. Language code "de-de"
- deutsch-de -- German documents with German formatting and laws applied. Language code "de-de"

To set a language, call the `select-language` method with either a language code or an element of the `languages` dictionary.

This also selects which laws and currency format will be used for your document.
