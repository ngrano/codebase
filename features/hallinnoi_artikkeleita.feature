# language: fi
Ominaisuus: Hallinnoi artikkeleita
  Jotta ihmiset voisivat lukea blogien artikkeleita
  Blogaajana
  Haluan että artikkeleita voi hallinnoida
  
  Tapaus: Uusi artikkeli
    Oletetaan että olen kirjautuneena sisään
    Ja että minulla on blogi "Pelit"
    Ja että olen lisäämässä uutta artikkelia "Pelit"-blogiin
    Kun syötän kenttään "post_title" arvon "Alan wake julkaistaan keväällä 2010"
    Ja syötän kenttään "post_body" arvon "Alan wake..."
    Ja painan "Tallenna"
    Niin minun pitäisi nähdä "Artikkeli luotiin onnistuneesti"
    Ja minun pitäisi nähdä "Alan wake julkaistaan keväällä 2010"
    Ja minun pitäisi nähdä "Alan wake..."
  
  Tapaus: Artikkeli on jo olemassa
    Oletetaan että olen kirjautuneena sisään
    Ja että minulla on blogi "Pelit"
    Ja että blogissa "Pelit" on artikkeli "Gears of war 3 julkaistaan vuonna 2011"
    Ja että olen lisäämässä uutta artikkelia "Pelit"-blogiin
    Kun syötän kenttään "post_title" arvon "Gears of war 3 julkaistaan vuonna 2011"
    Ja syötän kenttään "post_body" arvon "GOW3 2010!"
    Ja painan "Tallenna"
    Niin minun ei pitäisi nähdä "Artikkeli luotiin onnistuneesti"
    