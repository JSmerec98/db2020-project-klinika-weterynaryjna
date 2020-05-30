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

    public static final String TABLE_ANIMAL = "animal";
    public static final String COLUMN_ANIMAL_ID = "animal_id";
    public static final String COLUMN_ANIMAL_NAME = "name";
    public static final String COLUMN_ANIMAL_SEX = "sex";
    public static final String COLUMN_ANIMAL_BIRTH_DATE = "birth_date";
    public static final String COLUMN_ANIMAL_SPECIES = "species";
    public static final String COLUMN_ANIMAL_BREED = "breed";
    public static final String COLUMN_ANIMAL_COLOR = "color";
    public static final String COLUMN_ANIMAL_FUR = "fur";
    public static final String COLUMN_ANIMAL_OWNER_ID = "owner_id";

    public static final int ORDER_BY_NONE = 1;
    public static final int ORDER_BY_ASC = 2;
    public static final int ORDER_BY_DESC = 3;

    public static final String INSERT_OWNER = "INSERT INTO " + TABLE_OWNER +
            '(' + COLUMN_OWNER_FIRST_NAME + ',' + COLUMN_OWNER_LAST_NAME + ',' + COLUMN_OWNER_ADDRESS + ',' + COLUMN_OWNER_PHONE + ") VALUES(?,?,?,?)";

    public static final String DELETE_OWNER = "DELETE FROM " + TABLE_OWNER + " WHERE " + COLUMN_OWNER_ID + " = ?";

    public static final String INSERT_ANIMAL = "INSERT INTO " + TABLE_ANIMAL +
            '(' + COLUMN_ANIMAL_NAME + ", " + COLUMN_ANIMAL_SEX + ", " + COLUMN_ANIMAL_BIRTH_DATE + ", " + COLUMN_ANIMAL_SPECIES + ", " +
            COLUMN_ANIMAL_BREED + ", " + COLUMN_ANIMAL_COLOR + ", " + COLUMN_ANIMAL_FUR + ", " + COLUMN_ANIMAL_OWNER_ID + ") VALUES(?,?,?,?,?,?,?,?)";

    public static final String DELETE_ANIMAL = "DELETE FROM " + TABLE_ANIMAL + " WHERE " + COLUMN_ANIMAL_NAME + " = ?" +
            " AND " + COLUMN_ANIMAL_OWNER_ID + " = ?";

    public static final String QUERY_ANIMALS_BY_OWNER_START =
            "SELECT " + TABLE_ANIMAL + "." + COLUMN_ANIMAL_NAME + ", " + TABLE_ANIMAL + "." + COLUMN_ANIMAL_SEX + ", " +
                    TABLE_ANIMAL + "." + COLUMN_ANIMAL_BIRTH_DATE + ", " + TABLE_ANIMAL + "." + COLUMN_ANIMAL_SPECIES +
                    " FROM " + TABLE_ANIMAL + " INNER JOIN " + TABLE_OWNER + " ON " +
                    TABLE_ANIMAL + "." + COLUMN_ANIMAL_OWNER_ID + " = " + TABLE_OWNER + "." + COLUMN_OWNER_ID +
                    " WHERE " + TABLE_OWNER + "." + COLUMN_OWNER_FIRST_NAME + " = \"";

    public static final String QUERY_ANIMALS_BY_OWNER_SORT =
            " ORDER BY " + TABLE_ANIMAL + "." + COLUMN_ANIMAL_NAME + " ";

    public static final String QUERY_ANIMAL_INFORMATION_START =
            "SELECT " + TABLE_ANIMAL + "." + "*" + " FROM " + TABLE_ANIMAL + " INNER JOIN " + TABLE_OWNER + " ON " +
                    TABLE_ANIMAL + "." + COLUMN_ANIMAL_OWNER_ID + " = " + TABLE_OWNER + "." + COLUMN_OWNER_ID +
                    " WHERE " + TABLE_OWNER + "." + COLUMN_OWNER_FIRST_NAME + " = \"";

    private PreparedStatement insertIntoOwner;
    private PreparedStatement deleteFromOwner;
    private PreparedStatement insertIntoAnimal;
    private PreparedStatement deleteFromAnimal;

    public boolean open() {
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost/vet_clinic?useUnicode=true" +
                    "&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC");
            insertIntoOwner = conn.prepareStatement(INSERT_OWNER, Statement.RETURN_GENERATED_KEYS);
            deleteFromOwner = conn.prepareStatement(DELETE_OWNER);
            insertIntoAnimal = conn.prepareStatement(INSERT_ANIMAL);
            deleteFromAnimal = conn.prepareStatement(DELETE_ANIMAL);

            return true;
        } catch (SQLException e) {
            System.out.println("Couldn't open connection: " + e.getMessage());
            return false;
        }
    }

    public void close() {
        try {
            if (insertIntoOwner != null) {
                insertIntoOwner.close();
            }
            if (deleteFromOwner != null) {
                deleteFromOwner.close();
            }
            if (insertIntoAnimal != null) {
                insertIntoAnimal.close();
            }
            if (deleteFromAnimal != null) {
                deleteFromAnimal.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            System.out.println("Couldn't close connection: " + e.getMessage());
        }
    }

    public List<Owner> queryOwner(int sortOrder) {

        StringBuilder sb = new StringBuilder("SELECT * FROM ");
        sb.append(TABLE_OWNER);
        if (sortOrder != ORDER_BY_NONE) {
            sb.append(" ORDER BY ");
            sb.append(COLUMN_OWNER_LAST_NAME);

            if (sortOrder == ORDER_BY_DESC) {
                sb.append(" DESC");
            } else {
                sb.append(" ASC");
            }
        }

        System.out.println("SQL Statement = " + sb.toString());

        try (Statement statement = conn.createStatement();
             ResultSet results = statement.executeQuery(sb.toString())) {

            List<Owner> owners = new ArrayList<>();
            while (results.next()) {
                Owner owner = new Owner();
                owner.setOwner_id(results.getInt(1));
                owner.setFirst_name(results.getString(2));
                owner.setLast_name(results.getString(3));
                owner.setAddress(results.getString(4));
                owner.setPhone_number(results.getInt(5));
                owners.add(owner);
            }

            return owners;

        } catch (SQLException e) {
            System.out.println("Query failed: " + e.getMessage());
            return null;
        }
    }

    public void insertOwner(String name, String surname, String address, int phone) {
        try {
            insertIntoOwner.setString(1, name);
            insertIntoOwner.setString(2, surname);
            insertIntoOwner.setString(3, address);
            insertIntoOwner.setInt(4, phone);

            insertIntoOwner.executeUpdate();
            System.out.println("Insert ok!");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void deleteFromOwner(int id) {
        try {
            deleteFromOwner.setInt(1, id);
            deleteFromOwner.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public List<Animal> queryAnimal(int sortOrder) {

        StringBuilder sb = new StringBuilder("SELECT * FROM ");
        sb.append(TABLE_ANIMAL);
        if (sortOrder != ORDER_BY_NONE) {
            sb.append(" ORDER BY ");
            sb.append(COLUMN_ANIMAL_NAME);

            if (sortOrder == ORDER_BY_DESC) {
                sb.append(" DESC");
            } else {
                sb.append(" ASC");
            }
        }

        System.out.println("SQL Statement = " + sb.toString());

        try (Statement statement = conn.createStatement();
             ResultSet results = statement.executeQuery(sb.toString())) {

            List<Animal> animals = new ArrayList<>();
            while (results.next()) {
                Animal animal = new Animal();
                animal.setAnimal_id(results.getInt(1));
                animal.setName(results.getString(2));
                animal.setSex(results.getString(3));
                animal.setBirth_date(results.getDate(4));
                animal.setSpecies(results.getString(5));
                animal.setBreed(results.getString(6));
                animal.setColor(results.getString(7));
                animal.setFur(results.getString(8));
                animal.setOwner_id(results.getInt(9));
                animals.add(animal);
            }
            return animals;

        } catch (SQLException e) {
            System.out.println("Query failed: " + e.getMessage());
            return null;
        }
    }

    public void insertAnimal(String name, String sex, Date birthDate, String species, String breed, String color,
                             String fur, int ownerId) {
        try {
            List<Owner> owners = this.queryOwner(1);
            boolean isOwner = false;

            for (Owner owner : owners) {
                if (owner.owner_id == ownerId) {
                    isOwner = true;
                    break;
                }
            }

            if (isOwner) {
                insertIntoAnimal.setString(1, name);
                insertIntoAnimal.setString(2, sex);
                insertIntoAnimal.setDate(3, birthDate);
                insertIntoAnimal.setString(4, species);
                insertIntoAnimal.setString(5, breed);
                insertIntoAnimal.setString(6, color);
                insertIntoAnimal.setString(7, fur);
                insertIntoAnimal.setInt(8, ownerId);

                insertIntoAnimal.executeUpdate();
            } else {
                System.out.println("Couldn't find the owner with ID: " + ownerId);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void deleteFromAnimal(String name, int ownerId) {
        try {
            deleteFromAnimal.setString(1, name);
            deleteFromAnimal.setInt(2, ownerId);
            deleteFromAnimal.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public List<Animal> queryAnimalsByOwner(String ownerFirstName, String ownerLastName, int sortOrder) {

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
             ResultSet resultSet = statement.executeQuery(sb.toString())) {

            List<Animal> animals = new ArrayList<>();
            while (resultSet.next()) {

                Animal animal = new Animal();
                animal.setName(resultSet.getString(1));
                animal.setSex(resultSet.getString(2));
                animal.setBirth_date(resultSet.getDate(3));
                animal.setSpecies(resultSet.getString(4));

                animals.add(animal);
            }

            return animals;

        } catch (SQLException e) {
            System.out.println("Query failed: " + e.getMessage());
            return null;
        }
    }

    public Animal queryAnimalInformation(String ownerName, String ownerSurname, String animalName) {

        StringBuilder sb = new StringBuilder(QUERY_ANIMAL_INFORMATION_START);
        sb.append(ownerName);
        sb.append("\"");
        sb.append(" AND " + TABLE_OWNER + "." + COLUMN_OWNER_LAST_NAME + " = \"");
        sb.append(ownerSurname);
        sb.append("\"");
        sb.append(" AND " + TABLE_ANIMAL + "." + COLUMN_ANIMAL_NAME + " = \"");
        sb.append(animalName);
        sb.append("\"");

        System.out.println("SQL Statement = " + sb.toString());

        try (Statement statement = conn.createStatement();
             ResultSet resultSet = statement.executeQuery(sb.toString())) {

            Animal animal = new Animal();
            while (resultSet.next()) {

                animal.setAnimal_id(resultSet.getInt(1));
                animal.setName(resultSet.getString(2));
                animal.setSex(resultSet.getString(3));
                animal.setBirth_date(resultSet.getDate(4));
                animal.setSpecies(resultSet.getString(5));
                animal.setBreed(resultSet.getString(6));
                animal.setColor(resultSet.getString(7));
                animal.setFur(resultSet.getString(8));
                animal.setOwner_id(resultSet.getInt(9));
            }

            return animal;

        } catch (SQLException e) {
            System.out.println("Query failed: " + e.getMessage());
            return null;
        }
    }
}
