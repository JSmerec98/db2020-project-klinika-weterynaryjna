package project;

import model.AppointmentForOwner;
import model.AppointmentForVeterinarian;
import model.Datasource;
import model.DiagnosisForAnimal;

import java.sql.Date;
import java.sql.Time;
import java.util.List;

public class Main {

    public static void main(String[] args) {

        Datasource datasource = new Datasource();
        if (!datasource.open()) {
            System.out.println("Can't open datasource");
            return;
        }

//        List<Owner> owners = datasource.queryOwner(3);
//        if (owners == null) {
//            System.out.println("No owners!");
//            return;
//        }
//
//        for (Owner owner : owners) {
//            System.out.println(
//                    "ID: " + owner.getOwner_id() +
//                            "   Imię: " + owner.getFirst_name() +
//                            "   Nazwisko: " + owner.getLast_name() +
//                            "   Adres: " + owner.getAddress() +
//                            "   Numer telefonu: " + owner.getPhone_number());
//        }

//        List<Animal> animals = datasource.queryAnimal(1);
//        if (animals == null) {
//            System.out.println("No animals!");
//            return;
//        }

//        for (Animal animal : animals) {
//            System.out.println(
//                    "ID: " + animal.getAnimal_id() +
//                            " Imię: " + animal.getName() +
//                            " Płeć: " + animal.getSex() +
//                            " Data urodzenia: " + animal.getBirth_date() +
//                            " Gatunek: " + animal.getSpecies() +
//                            " Rasa: " + animal.getBreed() +
//                            " Kolor: " + animal.getColor() +
//                            " Futro: " + animal.getFur() +
//                            " ID właściciela: " + animal.getOwner_id()
//            );
//        }

        // 1
//        datasource.insertOwner("JAN","SMERECKI","OGRODOWA",123456789);

        // 2
//        datasource.deleteFromOwner(30);

        // 3
//        datasource.insertAnimal("Pesto", "Male", new Date((2019-1900),5,12), "Pies", "Kundel", "Zielony", "Brak", 1);

        // 4
//        datasource.deleteFromAnimal("Pesto", 1);

        // 5

//        Scanner scanner = new Scanner(System.in);
//
//        System.out.println("Wypisywanie zwierząt danego właściciela.");
//        System.out.print("Imię: ");
//        String ownerFirstName = scanner.nextLine();
//        System.out.print("Nazwisko: ");
//        String ownerLastName = scanner.nextLine();
//
//        List<Animal> animalList = datasource.queryAnimalsByOwner(ownerFirstName, ownerLastName, Datasource
//        .ORDER_BY_ASC);
//        if(animalList == null){
//            System.out.println("Couldn't find animals for the owner.");
//            return;
//        }
//
//        for(Animal animal : animalList){
//            System.out.println(animal.getName() + "\t" + animal.getSex() + "\t" + animal.getBirth_date() + "\t" +
//            animal.getSpecies());
//        }

        // 6
//        Animal animal = datasource.queryAnimalInformation("Adam", "Piątkowski", "Pesto");
//        System.out.println(
//                "ID: " + animal.getAnimal_id() +
//                        " Imię: " + animal.getName() +
//                        " Płeć: " + animal.getSex() +
//                        " Data urodzenia: " + animal.getBirth_date() +
//                        " Gatunek: " + animal.getSpecies() +
//                        " Rasa: " + animal.getBreed() +
//                        " Kolor: " + animal.getColor() +
//                        " Futro: " + animal.getFur() +
//                        " ID właściciela: " + animal.getOwner_id());

        // 7
//
//        Date date = new Date((2019-1900),12,12);
//        Time time = new Time(16+1,0,0);
//
//        datasource.insertAppointment(date,time,3,2);


//        List<Veterinarian> veterinarians = datasource.queryVeterinarian(1);
//        if (veterinarians == null) {
//            System.out.println("No owners!");
//            return;
//        }
//
//        for (Veterinarian veterinarian : veterinarians) {
//            System.out.println(
//                    "ID: " + veterinarian.getVeterinarian_id() +
//                            "   Imię: " + veterinarian.getFirst_name() +
//                            "   Nazwisko: " + veterinarian.getLast_name() +
//                            "   Adres: " + veterinarian.getAddress() +
//                            "   Numer telefonu: " + veterinarian.getPhone_number());
//        }

//        List<Appointment> appointments = datasource.queryAppointment(3);
//        if (appointments == null) {
//            System.out.println("No appointments!");
//            return;
//        }
//
//        for (Appointment appointment : appointments) {
//            System.out.println(
//                    "ID: " + appointment.getAppointment_id() +
//                            "   Data: " + appointment.getData() +
//                            "   Czas: " + appointment.getTime() +
//                            "   Zwierze ID: " + appointment.getAnimal_id() +
//                            "   Weterynarz ID: " + appointment.getVeterinarian_id());
//        }

        // 8

//        Date newDate = new Date((2020-1900),(2-1),24);
//        Time newTime = new Time(20+1,0,0);
//
//        Date date = new Date((2020-1900),(5-1),6);
//        Time time = new Time(16+1,0,0);
//
//        datasource.updateAppointment(newDate,newTime,date,time);

        // 9
//        List<AppointmentForOwner> appointmentForOwnerList = datasource.queryAppointmentForOwner("Warszawska");
//
//        for(AppointmentForOwner appointmentForOwner : appointmentForOwnerList) {
//            System.out.println(appointmentForOwner.toString());
//        }

        // 10
//        List<DiagnosisForAnimal> diagnosisForAnimals = datasource.queryDiagnosisForAnimal("Burek");
//
//        for(DiagnosisForAnimal diagnosisForAnimal : diagnosisForAnimals) {
//            System.out.println(diagnosisForAnimal.toString());
//        }

        // 11

//        Date date = new Date(2020-1900,7-1,1);
//
//        List<AppointmentForVeterinarian> appointmentForVeterinarians = datasource.queryAppointmentForVeterinarian("Kordian","Kowalski",date);
//
//        for(AppointmentForVeterinarian appointmentForVeterinarian : appointmentForVeterinarians) {
//            System.out.println(appointmentForVeterinarian.toString());
//        }

        // 12
//        datasource.insertAnimalDiagnosis("Nie ziewać ciągle!", 10, 3);

        // 13
//        datasource.insertDrugPlan(2, "Nie wychodzić na długie spacery. Podawać lekkostrawne posiłki.", 2);
    }
}
