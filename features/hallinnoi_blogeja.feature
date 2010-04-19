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
    Ja painan nappia "Tallenna"
    Niin ruudulla pitäisi näkyä "Blogi luotiin onnistuneesti"
    Ja ruudulla pitäisi näkyä "Alan wake"
    Ja ruudulla pitäisi näkyä "alan-wake"
  
  Tapaus: Poista blogi listasta
    Oletetaan että olen kirjautuneena sisään
    Ja että minulla on yksi blogi
    Ja että olen sivulla "/admin/blogs"
    Kun klikkaan linkkiä "Poista"
    Niin ruudulla pitäisi näkyä "Blogi poistettiin onnistuneesti"
    Ja kaikki blogit ovat poistettu