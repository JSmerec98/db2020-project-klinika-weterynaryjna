package model;

import java.sql.Date;
import java.sql.Time;

public class Appointment {

    private int appointment_id;
    private Date data;
    private Time time;
    private int veterinarian_id;
    private int animal_id;

    public int getAppointment_id() {
        return appointment_id;
    }

    public void setAppointment_id(int appointment_id) {
        this.appointment_id = appointment_id;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public Time getTime() {
        return time;
    }

    public void setTime(Time time) {
        this.time = time;
    }

    public int getVeterinarian_id() {
        return veterinarian_id;
    }

    public void setVeterinarian_id(int veterinarian_id) {
        this.veterinarian_id = veterinarian_id;
    }

    public int getAnimal_id() {
        return animal_id;
    }

    public void setAnimal_id(int animal_id) {
        this.animal_id = animal_id;
    }
}
