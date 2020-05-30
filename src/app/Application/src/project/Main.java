package project;

import model.Animal;
import model.Datasource;
import model.Owner;
import java.util.List;
import java.util.Scanner;

public class Main {

    // TODO: 30.05.2020 ZLICZENIE ZWIERZĄTEK

    public static void main(String[] args) {

        Datasource datasource = new Datasource();
        if(!datasource.open()){
            System.out.println("Can't open datasource");
            return;
        }

        List<Owner> owners = datasource.queryOwner(3);
        if(owners == null) {
            System.out.println("No owners!");
            return;
        }

        for(Owner owner: owners) {
            System.out.println(
                "ID: " + owner.getOwner_id() +
                "   Imię: " + owner.getFirst_name() +
                "   Nazwisko: " + owner.getLast_name() +
                "   Adres: " + owner.getAddress() +
                "   Numer telefonu: " + owner.getPhone_number());
        }

        // 1
//        datasource.insertOwner("JAN","SMERECKI","OGRODOWA",123456789);

        // 2
//        datasource.deleteFromOwner(30);

        // 3

        // 4

        // 5

//        Scanner scanner = new Scanner(System.in);
//
//        System.out.println("Wypisywanie zwierząt danego właściciela.");
//        System.out.print("Imię: ");
//        String ownerFirstName = scanner.nextLine();
//        System.out.print("Nazwisko: ");
//        String ownerLastName = scanner.nextLine();
//
//        List<Animal> animalList = datasource.queryAnimalsByOwner(ownerFirstName, ownerLastName, Datasource.ORDER_BY_ASC);
//        if(animalList == null){
//            System.out.println("Couldn't find animals for the owner.");
//            return;
//        }
//
//        for(Animal animal : animalList){
//            System.out.println(animal.getName() + "\t" + animal.getSex() + "\t" + animal.getBirth_date() + "\t" + animal.getSpecies());
//        }

        // 6

        // 7

        // 8

        // 9

        // 10

        // 11

        // 12

        // 13
    }
}
