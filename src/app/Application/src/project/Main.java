package project;

import model.Animal;
import model.Datasource;

import java.util.List;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Datasource datasource = new Datasource();
        if(!datasource.open()){
            System.out.println("Can't open datasource");
            return;
        }

        Scanner scanner = new Scanner(System.in);

        // FUNKCJONALNOŚĆ NR 5

        System.out.println("Wypisywanie zwierząt danego właściciela.");
        System.out.print("Imię: ");
        String ownerFirstName = scanner.nextLine();
        System.out.print("Nazwisko: ");
        String ownerLastName = scanner.nextLine();

        List<Animal> animalList = datasource.queryAnimalsByOwner(ownerFirstName, ownerLastName, Datasource.ORDER_BY_ASC);
        if(animalList == null){
            System.out.println("Couldn't find animals for the owner.");
            return;
        }

        for(Animal animal : animalList){
            System.out.println(animal.getName() + "\t" + animal.getSex() + "\t" + animal.getBirth_date() + "\t" + animal.getSpecies());
        }


//        try {
//            Scanner scan = new Scanner(System.in);
//            System.out.println("Enter the name: ");
//            String name = scan.next();
//            System.out.println("Enter the surname: ");
//            String surname = scan.next();
//
//            String string = "SELECT owner.first_name, owner.last_name, animal.name, animal.sex, animal.birth_date, animal.species \n" +
//                    "FROM animal INNER JOIN owner ON animal.owner_id = owner.owner_id \n" +
//                    "WHERE owner.first_name = \"" + name + "\"" + " AND owner.last_name = \"" + surname + "\"";
//
//            Statement statement = conn.createStatement();
//            ResultSet result = statement.executeQuery(string);
//
//            while (result.next()) {
//                System.out.println(result.getString(1) + " " +
//                        result.getString(2) + " " +
//                        result.getString(3) + " " +
//                        result.getString(4) + " " +
//                        result.getDate(5) + " " +
//                        result.getString(6));
//            }
//        } catch (SQLException e) {
//            System.out.println(e.getMessage());
//        }
    }
}
