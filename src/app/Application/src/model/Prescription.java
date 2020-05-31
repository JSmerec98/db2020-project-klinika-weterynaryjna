package model;

public class Prescription {

    public int prescriptionId;
    public int veterinarianId;
    public int drugPlanId;

    public Prescription() {
    }

    public Prescription(int prescriptionId, int veterinarianId, int drugPlanId) {
        this.prescriptionId = prescriptionId;
        this.veterinarianId = veterinarianId;
        this.drugPlanId = drugPlanId;
    }

    public int getPrescriptionId() {
        return prescriptionId;
    }

    public void setPrescriptionId(int prescriptionId) {
        this.prescriptionId = prescriptionId;
    }

    public int getVeterinarianId() {
        return veterinarianId;
    }

    public void setVeterinarianId(int veterinarianId) {
        this.veterinarianId = veterinarianId;
    }

    public int getDrugPlanId() {
        return drugPlanId;
    }

    public void setDrugPlanId(int drugPlanId) {
        this.drugPlanId = drugPlanId;
    }
}
