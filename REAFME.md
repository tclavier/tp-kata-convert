# Objectif

L'objectif du TP est de réaliser un convertisseur numérique vers texte en français.

Je vous invite à utiliser toutes les étapes du TDD pour réaliser ce TP.

Pour mémoire les étapes du TDD sont les suivantes :

* Écrire un test
* Vérifier qu'il est rouge
* Commit
* Faire l'implémentation pour faire passer le test au vert
* Commit et push
* Restructurer le code pour qu'il soit simple (KISS et YAGNI) bien structuré (DRY) et lisible
* Commit et push

## Initialisation

### Gitlab

* Dans le gitlab de l'IUT, créez un nouveau projet privé nommé "kata-convert".
* Ajouter l'utilisateur "thomas.clavier" comme développeur.

### Éclipse
* Dans Éclipse, créer un nouveau "Java Project" nommé "kata-convert".
* Initialiser le répertoire du projet comme un projet git.

### Git
* Configurer le "remote" pour utiliser votre projet gitlab.
* Configurer votre projet pour ignorer le répertoire `bin`
* Commit, push

## Premier test

* Créer le package "fr.univlille1.iutinfo.convert"
* Créer une classe "Convert" avec une méthode statique "numeric2french" qui retourne un String et qui prend un String en paramètre.
* Créer la classe "ConvertTest"

Vous devriez avoir quelque chose du style :

```java
package fr.univlille1.iutinfo.convert;

public class Convert {

	public static String numeric2french(String number) {
		return null;
	}
}
```

* Écrire le premier test qui vérifie que l'appel à la méthode "numeric2french" avec le paramètre `1` retourne "Un". Il vous faudra ajouter "JUnit 4" dans le classpath.

Vous devriez avoir quelque chose comme :

```java
package fr.univlille1.iutinfo.convert;

import org.junit.Assert;
import org.junit.Test;

public class ConvertTest {

  @Test
  public void numeric2french_should_return_unit_in_french() {
    Assert.assertEquals("Un", Convert.numeric2french("1"));
  }

}
```

* Lancer les tests en cliquant sur la classe "ConvertTest" puis "Run As" et enfin "Junit Test"

Vous devriez obtenir l'erreur suivante :
```
java.lang.AssertionError: expected:<Un> but was:<null>
```

* Commit
* Faire passer le test au vert
* Commit, push
* Rendre le code le plus simple et le plus lisible possible
* Si vous avez modifié le code : commit, push

## Second test

* Écrire un test qui vérifie que l'appel à la méthode "numeric2french" avec le paramètre `3` retourne `Trois`
* Vérifier qu'il compile bien et qu'il est rouge
* Commit
* Faire passer le test au vert
* Commit, push
* Rendre le code le plus simple et le plus lisible possible
* Commit, push

## Tests suivants

Dérouler le cycle TDD avec les tests suivants :

* 0 => "Zéro"

Après cette étape, votre programme doit être capable de fonctionner avec toutes les unités de 0 à 9.

* 12 => "Douze"
* 16 => "Seize"

Après cette étape, votre programme doit être capable de fonctionner jusqu'à 16

* 18 => "Dix-huit"

Après cette étape, votre programme doit être capable de fonctionner jusqu'à 19

* 20 => "Vingt"
* 21 => "Vingt et un"
* 29 => "Vingt-neuf"

Après cette étape, votre programme doit être capable de fonctionner jusqu'à 29

* 32 => "Trente-deux"

Après cette étape, votre programme doit être capable de fonctionner jusqu'à 39

* 45 => "Quarante-cinq"

Après cette étape, votre programme doit être capable de fonctionner jusqu'à 49

* 64 => "Soixante-quatre"

Après cette étape, votre programme doit être capable de fonctionner jusqu'à 69

* 71 => "Soixante et onze"

Après cette étape, votre programme doit être capable de fonctionner jusqu'à 79

* 81 => "Quatre-vingt-un"

Après cette étape, votre programme doit être capable de fonctionner jusqu'à 81

* 93 => "Quatre-vingt-treize"

Après cette étape, votre programme doit être capable de fonctionner jusqu'à 99

* 100 => "Cent"
* 156 => "Cent cinquante-six"

Après cette étape, votre programme doit être capable de fonctionner jusqu'à 199

* 280 => "Deux cent quatre-vingt"

Après cette étape, votre programme doit être capable de fonctionner jusqu'à 999

* 1370 => "Mille trois cent soixante-dix"

Après cette étape, votre programme doit être capable de fonctionner jusqu'à 1999

* 7830 => "Sept mille huigt cent trente"

Après cette étape, votre programme doit être capable de fonctionner jusqu'à 9999

* 123456 => "Cent vingt-trois mille quatre cent cinquante-six"

Après cette étape, votre programme doit être capable de fonctionner jusqu'à 999999

* 14,41 => "Quatorze virgule quarante et un"
* 1478,8741 => "Mille quatre cent soixante-dix-huit virgule huit mille sept cent quarante et un"

Après cette étape, votre programme doit être capable de fonctionner jusqu'à 999999,999999

* 56,01€ => "Cinquante-six euro et un cent"
* 25,11€ => "Vingt-cinq euro et onze cent"

Après cette étape, votre programme doit être capable de fonctionner jusqu'à 999999,99 €

* 40,1€ => "Quarante euro et dix cent"

Après cette étape, votre programme doit être capable de gérer le cas des zéros non significatifs de droite ont été supprimés.

* 90,111€ => "Quatre-vingt-dix euro et onze cent"

Après cette étape, votre programme doit être capable de gérer les arondis de cents.
