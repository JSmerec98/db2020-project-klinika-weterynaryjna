package model;

public class Diagnosis {

    public int diagnosisId;
    public String name;
    public String description;

    public Diagnosis() {
    }

    public Diagnosis(int diagnosisId, String name, String description) {
        this.diagnosisId = diagnosisId;
        this.name = name;
        this.description = description;
    }

    public int getDiagnosisId() {
        return diagnosisId;
    }

    public void setDiagnosisId(int diagnosisId) {
        this.diagnosisId = diagnosisId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
