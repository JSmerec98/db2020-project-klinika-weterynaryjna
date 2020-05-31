package model;

import java.sql.Date;
import java.sql.Time;

public class AppointmentForVeterinarian {

    private Date date;
    private Time time;
    private String owner_first_name;
    private String owner_last_name;
    private String animal_name;
    private String animal_species;
    private String animal_breed;
    private String veterinarian_first_name;
    private String veterinarian_last_name;

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Time getTime() {
        return time;
    }

    public void setTime(Time time) {
        this.time = time;
    }

    public String getOwner_first_name() {
        return owner_first_name;
    }

    public void setOwner_first_name(String owner_first_name) {
        this.owner_first_name = owner_first_name;
    }

    public String getOwner_last_name() {
        return owner_last_name;
    }

    public void setOwner_last_name(String owner_last_name) {
        this.owner_last_name = owner_last_name;
    }

    public String getAnimal_name() {
        return animal_name;
    }

    public void setAnimal_name(String animal_name) {
        this.animal_name = animal_name;
    }

    public String getAnimal_species() {
        return animal_species;
    }

    public void setAnimal_species(String animal_species) {
        this.animal_species = animal_species;
    }

    public String getAnimal_breed() {
        return animal_breed;
    }

    public void setAnimal_breed(String animal_breed) {
        this.animal_breed = animal_breed;
    }

    public String getVeterinarian_first_name() {
        return veterinarian_first_name;
    }

    public void setVeterinarian_first_name(String veterinarian_first_name) {
        this.veterinarian_first_name = veterinarian_first_name;
    }

    public String getVeterinarian_last_name() {
        return veterinarian_last_name;
    }

    public void setVeterinarian_last_name(String veterinarian_last_name) {
        this.veterinarian_last_name = veterinarian_last_name;
    }

    @Override
    public String toString() {
        return "Data: " + this.getDate() + " Godzina: " + this.getTime() + " Właściciel: " + this.getOwner_first_name() + " " + this.getOwner_last_name() +
        " Zwierzę: " + this.getAnimal_name() + ", " + this.getAnimal_species() + ", " + this.getAnimal_breed() + " Weterynarz: " +
        this.getVeterinarian_first_name() + " " + this.getVeterinarian_last_name();
    }
}
