package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Datasource {

    Connection conn;

    public static final String TABLE_OWNER = "owner";
    public static final String COLUMN_OWNER_ID = "owner_id";
    public static final String COLUMN_OWNER_FIRST_NAME = "first_name";
    public static final String COLUMN_OWNER_LAST_NAME = "last_name";
    public static final String COLUMN_OWNER_ADDRESS = "address";
    public static final String COLUMN_OWNER_PHONE = "phone_number";
//    public static final int INDEX_OWNER_ID = 1;
//    public static final int INDEX_OWNER_FIRST_NAME = 2;
//    public static final int INDEX_OWNER_LAST_NAME = 3;
//    public static final int INDEX_OWNER_ADDRESS = 4;
//    public static final int INDEX_OWNER_PHONE_NUMBER = 5;

    public static final String TABLE_ANIMAL = "animal";
    public static final String COLUMN_ANIMAL_NAME = "name";
    public static final String COLUMN_ANIMAL_SEX = "sex";
    public static final String COLUMN_ANIMAL_BIRTH_DATE = "birth_date";
    public static final String COLUMN_ANIMAL_SPECIES = "species";
    public static final String COLUMN_ANIMAL_COLOR = "color";
    public static final String COLUMN_ANIMAL_FUR = "fur";
    public static final String COLUMN_ANIMAL_OWNER_ID = "owner_id";
//    public static final int INDEX_ANIMAL_ID = 1;
//    public static final int INDEX_ANIMAL_NAME = 2;
//    public static final int INDEX_ANIMAL_SEX = 3;
//    public static final int INDEX_ANIMAL_BIRTH_DATE = 4;
//    public static final int INDEX_ANIMAL_SPECIES = 5;
//    public static final int INDEX_ANIMAL_COLOR = 6;
//    public static final int INDEX_ANIMAL_FUR = 7;

    public static final int ORDER_BY_NONE = 1;
    public static final int ORDER_BY_ASC = 2;
    public static final int ORDER_BY_DESC = 3;


//    SELECT owner.first_name, owner.last_name, animal.name, animal.sex, animal.birth_date, animal.species
//    FROM animal INNER JOIN owner ON animal.owner_id = owner.owner_id
//    WHERE owner.first_name = 'Barbara' AND owner.last_name = 'Warszawska';

    public static final String QUERY_ANIMALS_BY_OWNER_START =
            "SELECT "  + TABLE_ANIMAL + "." + COLUMN_ANIMAL_NAME + ", " + TABLE_ANIMAL + "." + COLUMN_ANIMAL_SEX + ", " +
                    TABLE_ANIMAL + "." + COLUMN_ANIMAL_BIRTH_DATE + ", " + TABLE_ANIMAL + "." + COLUMN_ANIMAL_SPECIES +
                    " FROM " + TABLE_ANIMAL + " INNER JOIN " + TABLE_OWNER + " ON " +
                    TABLE_ANIMAL + "." + COLUMN_ANIMAL_OWNER_ID + " = " + TABLE_OWNER + "." + COLUMN_OWNER_ID +
                    " WHERE " + TABLE_OWNER + "." + COLUMN_OWNER_FIRST_NAME + " = \"";

    public static final String QUERY_ANIMALS_BY_OWNER_SORT =
            " ORDER BY " + TABLE_ANIMAL + "." + COLUMN_ANIMAL_NAME + " ";

    public List<Animal> queryAnimalsByOwner(String ownerFirstName, String ownerLastName, int sortOrder){

        StringBuilder sb = new StringBuilder(QUERY_ANIMALS_BY_OWNER_START);
        sb.append(ownerFirstName);
        sb.append("\"");
        sb.append(" AND " + TABLE_OWNER + "." + COLUMN_OWNER_LAST_NAME + " = \"");
        sb.append(ownerLastName);
        sb.append("\"");

        if (sortOrder != ORDER_BY_NONE) {
            sb.append(QUERY_ANIMALS_BY_OWNER_SORT);
            if (sortOrder == ORDER_BY_DESC) {
                sb.append("DESC");
            } else {
                sb.append("ASC");
            }
        }

        System.out.println("SQL Statement = " + sb.toString());

        try (Statement statement = conn.createStatement();
             ResultSet resultSet = statement.executeQuery(sb.toString())){

            List<Animal> animals = new ArrayList<>();
            while(resultSet.next()){

                Animal animal = new Animal();
                animal.setName(resultSet.getString(1));
                animal.setSex(resultSet.getString(2));
                animal.setBirth_date(resultSet.getDate(3));
                animal.setSpecies(resultSet.getString(4));

                animals.add(animal);
            }

            return animals;

        } catch (SQLException e){
            System.out.println("Query failed: " + e.getMessage());
            return null;
        }

    }

    public boolean open() {
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost/vet_clinic?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC");
            return true;
        } catch (SQLException e) {
            System.out.println("Couldn't open connection: " + e.getMessage());
            return false;
        }
    }

    public void close() {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            System.out.println("Couldn't close connection: " + e.getMessage());
        }
    }

}
