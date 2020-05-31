package model;

public class DrugPlan {

    public int drugAnimalId;
    public String advices;
    public int drugId;
    public int diagnosisId;

    public DrugPlan() {
    }

    public DrugPlan(int drugAnimalId, String advices, int drugId, int diagnosisId) {
        this.drugAnimalId = drugAnimalId;
        this.advices = advices;
        this.drugId = drugId;
        this.diagnosisId = diagnosisId;
    }

    public int getDrugAnimalId() {
        return drugAnimalId;
    }

    public void setDrugAnimalId(int drugAnimalId) {
        this.drugAnimalId = drugAnimalId;
    }

    public String getAdvices() {
        return advices;
    }

    public void setAdvices(String advices) {
        this.advices = advices;
    }

    public int getDrugId() {
        return drugId;
    }

    public void setDrugId(int drugId) {
        this.drugId = drugId;
    }

    public int getDiagnosisId() {
        return diagnosisId;
    }

    public void setDiagnosisId(int diagnosisId) {
        this.diagnosisId = diagnosisId;
    }
}
