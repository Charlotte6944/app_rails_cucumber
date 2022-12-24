Feature: Tout client - Réserver un VTC

  Un client veut réserver un VTC de sorte à se déplacer d'un point A à un point B.

  Background:
    Given des clients existent:
      | firstName   | lastName |
      | Michael     | AZERHAD  |
      | Jean-Michel | DUPONT   |
      | Patrick     | THOMAS   |
    Given des VTC existent:
      | firstName | lastName |
      | Marc      | DUPUIS   |
      | Vincent   | RONNI    |

  Scenario Outline: solde suffisant
    Given je suis authentifié en tant que "<prénom_client>"
    And le solde de mon compte est de "<solde_avant>" euros TTC avec "<avoir_avant>" euros TTC d avoir
    When je tente de réserver le VTC "<prénom_vtc>" de "<point_départ>" à "<point_arrivée>"
    Then la réservation est effective
    And le solde de mon compte est de "<solde_après>" euros TTC avec "<avoir_après>" euros TTC d avoir
    Examples:
      | prénom_client | solde_avant | solde_après | avoir_avant | avoir_après | prénom_vtc | point_départ                                | point_arrivée                               |
      | Jean-Michel   | 35          | 5           | 10          | 10          | Marc       | 43 rue Archereau 75019 Paris                | 2 rue Clisson 75013 Paris                   |
      | Patrick       | 46          | 16          | 10          | 10          | Marc       | 5 rue Clisson 75013 Paris                   | 21 rue Laffitte 75009 Paris                 |
      | Michael       | 30          | 0           | 10          | 10          | Vincent    | 136 avenue de Flandre 75019 Paris           | 2 Avenue de Flandre 75019 Paris             |
      | Michael       | 50          | 10          | 10          | 0           | Vincent    | 2 Avenue de Flandre 75019 Paris             | 111 avenue Victor Hugo, 93300 Aubervilliers |
      | Michael       | 50          | 50          | 10          | 10          | Vincent    | 111 avenue Victor Hugo, 93300 Aubervilliers | 2 Avenue de Flandre 75019 Paris             |
