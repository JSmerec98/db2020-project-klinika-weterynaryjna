package model;

public class Veterinarian {

    private int veterinarian_id;
    private String first_name;
    private String last_name;
    private String address;
    private int phone_number;

    public int getVeterinarian_id() {
        return veterinarian_id;
    }

    public void setVeterinarian_id(int veterinarian_id) {
        this.veterinarian_id = veterinarian_id;
    }

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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(int phone_number) {
        this.phone_number = phone_number;
    }
}
