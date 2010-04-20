# language: fi
Ominaisuus: Hallinnoi blogeja
  Jotta ihmiset voisivat lukea blogeja
  Blogaajana
  Haluan että blogeja voi hallinnoida
  
  Tapaus: Uusi blogi
    Oletetaan että olen kirjautuneena sisään
    Ja että olen sivulla "/admin/blogs/new"
    Kun syötän kenttään "blog_name" arvon "Alan wake"
    Ja syötän kenttään "blog_alias" arvon "alan-wake"
    Ja painan "Tallenna"
    Niin minun pitäisi nähdä "Blogi luotiin onnistuneesti"
    Ja minun pitäisi nähdä "Alan wake"
    Ja minun pitäisi nähdä "alan-wake"
  
  Tapaus: Poista blogi listasta
    Oletetaan että olen kirjautuneena sisään
    Ja että minulla on yksi blogi
    Ja että olen sivulla "/admin/blogs"
    Kun klikkaan linkkiä "Poista"
    Niin minun pitäisi nähdä "Blogi poistettiin onnistuneesti"
    Ja kaikki blogit ovat poistettu
  
  Tapaus: Blogien listaus linkkeinä navigaatiossa
    Oletetaan että minulla on blogit ohjelmointi, pelit
    Kun menen sivulle "/"
    Niin minun pitäisi nähdä "Ohjelmointi" valitsimen "nav ul" sisällä
    Ja minun pitäisi nähdä "Pelit" valitsimen "nav ul" sisällä
    