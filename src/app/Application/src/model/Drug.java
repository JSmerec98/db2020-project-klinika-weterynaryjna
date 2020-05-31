package model;

public class Drug {

    public int drugId;
    public String drugName;

    public Drug() {
    }

    public Drug(int drugId, String drugName) {
        this.drugId = drugId;
        this.drugName = drugName;
    }

    public int getDrugId() {
        return drugId;
    }

    public void setDrugId(int drugId) {
        this.drugId = drugId;
    }

    public String getDrugName() {
        return drugName;
    }

    public void setDrugName(String drugName) {
        this.drugName = drugName;
    }
}
