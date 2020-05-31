package model;

public class AnimalDiagnosis {

    public int animalDiagnosisId;
    public String regimen;
    public int appointmentId;
    public int diagnosisId;

    public AnimalDiagnosis() {
    }

    public AnimalDiagnosis(int animalDiagnosisId, String regimen, int appointmentId, int diagnosisId) {
        this.animalDiagnosisId = animalDiagnosisId;
        this.regimen = regimen;
        this.appointmentId = appointmentId;
        this.diagnosisId = diagnosisId;
    }

    public int getAnimalDiagnosisId() {
        return animalDiagnosisId;
    }

    public void setAnimalDiagnosisId(int animalDiagnosisId) {
        this.animalDiagnosisId = animalDiagnosisId;
    }

    public String getRegimen() {
        return regimen;
    }

    public void setRegimen(String regimen) {
        this.regimen = regimen;
    }

    public int getAppointmentId() {
        return appointmentId;
    }

    public void setAppointmentId(int appointmentId) {
        this.appointmentId = appointmentId;
    }

    public int getDiagnosisId() {
        return diagnosisId;
    }

    public void setDiagnosisId(int diagnosisId) {
        this.diagnosisId = diagnosisId;
    }
}
