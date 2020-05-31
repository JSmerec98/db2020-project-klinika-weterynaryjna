package model;

import java.sql.Date;
import java.sql.Time;

public class AppointmentForOwner {

    private String first_name;
    private String last_name;
    private String anmial;
    private Date date;
    private Time time;

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getAnmial() {
        return anmial;
    }

    public void setAnmial(String anmial) {
        this.anmial = anmial;
    }

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

    @Override
    public String toString() {
        return "Imie: " + this.getFirst_name() + " Naziwsko: " + this.getLast_name() +
                " Zwierze: " + this.getAnmial() + " Data: " + this.getDate() + " Godzina: " + this.getTime();
    }
}
