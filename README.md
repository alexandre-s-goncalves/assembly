# Cours d’Assembly pour PIC – Leçons WRKits

Ce dépôt contient des codes, des exemples et du matériel issus du **Cours d’Assembly pour PIC** présenté sur la chaîne [WRKits](https://www.youtube.com/@canalwrkits).

## À propos du cours

Les leçons font partie de la liste de lecture [Cours d’Assembly pour PIC – WRKits](https://www.youtube.com/watch?v=4vua8Fxbs1A&list=PLZ8dBTV2_5HQd6f4IaoO50L6oToxQMFYt), composée de 80 vidéos (cours terminé). Le cours couvre des concepts fondamentaux jusqu’aux applications pratiques de la programmation en Assembly pour microcontrôleurs PIC.

## Qu’est-ce que l’Assembly ?

L’Assembly est un langage de programmation bas niveau, proche du langage machine, qui permet un contrôle direct du matériel. Comme il est spécifique à chaque architecture de processeur, il est largement utilisé dans le développement de systèmes embarqués où il faut optimiser les ressources et obtenir une performance maximale.

## L’Assembly dans les microcontrôleurs

Dans les microcontrôleurs, comme ceux de la famille PIC, l’Assembly permet d’accéder et de manipuler précisément les registres, les ports d’entrée/sortie et les périphériques. C’est essentiel pour les applications qui exigent un contrôle rigoureux du temps, de la consommation d’énergie et de l’utilisation efficace des ressources matérielles. Apprendre l’Assembly est fondamental pour comprendre le fonctionnement interne des microcontrôleurs et développer des applications embarquées robustes.

## Structure du dépôt

- `classe01/` : Matériel et codes de la première leçon.
  - `pic16f84a.inc` : Fichier d’inclusion pour le PIC16F84A.
  - `source_file_01.asm` : Code source en Assembly.
  - Fichiers générés par l’assemblage et la simulation.
  - `simulateurProteus/` : Fichiers de simulation pour Proteus.

## Comment utiliser

1. Téléchargez ou clonez ce dépôt.
2. Ouvrez les fichiers `.asm` dans un éditeur compatible.
3. Utilisez un assembleur pour compiler les codes (ex. : **MPLAB IDE v8.92**).
4. Pour la simulation, ouvrez les fichiers du dossier `simulateurProteus` avec **Proteus 7.8 SP2**.

> **Remarque :** Les exemples de ce dépôt ont été développés et testés avec MPLAB IDE v8.92 et Proteus 7.8 SP2. Il est recommandé d’utiliser ces versions pour assurer une compatibilité totale.

## Références

- [Chaîne WRKits sur YouTube](https://www.youtube.com/@canalwrkits)
- [Liste de lecture du Cours d’Assembly pour PIC (80 leçons)](https://www.youtube.com/watch?v=4vua8Fxbs1A&list=PLZ8dBTV2_5HQd6f4IaoO50L6oToxQMFYt)

---

Ce dépôt regroupe le matériel du cours d’Assembly pour microcontrôleurs PIC, tel que publié sur la chaîne WRKits.