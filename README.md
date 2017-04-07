# Objectif

L'objectif du TP est de réaliser en binôme un convertisseur numérique vers texte en français.

Je vous invite à utiliser toutes les étapes du TDD pour réaliser ce TP.

Pour mémoire les étapes du TDD sont les suivantes :

* Binôme 1 écrit un test et vérifie qu'il est rouge
* Commit, push
* Binôme 2 fait l'implémentation pour faire passer le test au vert
* Commit et push
* Binôme 2 restructure le code pour qu'il soit simple (KISS et YAGNI) bien structuré (DRY) et lisible
* Commit et push
* Binôme 2 écrit un test et vérifie qu'il est rouge
* Commit, push
* Binôme 1 fait l'implémentation pour faire passer le test au vert
* Commit et push
* Binôme 1 restructure le code pour qu'il soit simple (KISS et YAGNI) bien structuré (DRY) et lisible
* Commit et push
* etc.

## Initialisation

### Gitlab

* Dans le gitlab de l'IUT, créez un nouveau projet privé nommé "kata-convert".
* Ajouter l'utilisateur "thomas.clavier" comme développeur.
* Ajouter votre binôme comme développeur

### Éclipse
* Sur le poste de "Binôme 1", dans Éclipse, créer un nouveau "Java Project" nommé "kata-convert".

### Git
Initialiser le répertoire du projet comme un projet git. 

    cd ~/workspace/kata-convert
    git init

Configurer le "remote" pour utiliser votre projet gitlab.

    git remote add origin https://git-iut.univ-lille1.fr/thomas.clavier/kata-convert.git


Configurer votre projet pour ignorer le répertoire `bin` ainsi que les fichiers d'Éclipse `.classpath`, `.project`, `.settings`

    echo bin/ > .gitignore
    echo .classpath >> .gitignore
    echo .project >> .gitignore
    echo .settings/ >> .gitignore

Commit, push

    git add .gitignore
    git commit -m "Ignore binaries and Eclipse files"

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

Commit, push

    git add src/fr/univlille1/iutinfo/convert/Convert.java
    git add src/fr/univlille1/iutinfo/convert/ConvertTest.java
    git commit -m "Add test 1 -> Un"
    git push -u origin master

Sur le poste de "Binôme 2", récupérer le code 

    cd workspace
    git clone https://git-iut.univ-lille1.fr/thomas.clavier/kata-convert.git

Dans Éclipse, créez un nouveau projet utilisant le répertoire fraichement cloné puis faire passer le test au vert

Commit, push
    
    git commit -am "Implement test 1 -> Un"

* Rendre le code le plus simple et le plus lisible possible
* Si vous avez modifié le code : commit, push

## Second test

* Écrire un test qui vérifie que l'appel à la méthode "numeric2french" avec le paramètre `3` retourne `Trois`
* Vérifier qu'il compile bien et qu'il est rouge
* Commit push
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

* 7830 => "Sept mille huit cent trente"

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
* 90,119€ => "Quatre-vingt-dix euro et douze cent"

Après cette étape, votre programme doit être capable de gérer les arrondis de cents.
