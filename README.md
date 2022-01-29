# Progetto-Tecnologie-Web
Progetto tecnologie web

# Popolare il DB 
Per poter popolare il database, creare il database _pokedb_ accertandosi di avere la codifica utf8mb4_general_ci, andare sulla pagina di [importazione](https://localhost/phpmyadmin/index.php?route=/database/import&db=pokedb) e trascinare il [file](resources/pokeDump.sql).




sito con png 450x450 https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png



https://stackoverflow.com/questions/2117046/how-to-show-live-preview-in-a-small-popup-of-linked-page-on-mouse-over-on-link/16625709 fa schifo ci ho provato

https://stackoverflow.com/questions/42376900/how-to-show-live-preview-in-a-small-popup-of-linked-page-on-mouse-click-on-link


https://colorlib.com/wp/template/


risorsa immagini pokemon secondaria

https://wiki.pokemoncentral.it/Ivysaur


SELECT DISTINCT p.identifier 
                    FROM pokemon p
                    where p.identifier not like '%-alola'
                    and p.identifier not like '%-galar'
                    and p.identifier not like 'minior%'
                    and p.identifier not like 'mimikyu%'
                    and p.identifier not like '%-mega'
                    and p.identifier not like '%-mega-%'
                    and p.identifier not like 'pikachu-%'
                    and p.identifier not like 'eevee-starter'
                    and p.identifier not like 'marowak-totem'
                    and p.id < 10008;

QUERY per selezionare i pokemon a cui va associato un prezzo con uno script o chesso io