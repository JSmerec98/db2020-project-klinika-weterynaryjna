package jan;

import java.sql.*;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/vet_clinic?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC");

            Scanner scan = new Scanner(System.in);
            System.out.println("Enter the name: ");
            String name = scan.next();
            System.out.println("Enter the surname: ");
            String surname = scan.next();

            String string = "SELECT owner.first_name, owner.last_name, animal.name, animal.sex, animal.birth_date, animal.species \n" +
                    "FROM animal INNER JOIN owner ON animal.owner_id = owner.owner_id \n" +
                    "WHERE owner.first_name = \"" + name + "\"" + " AND owner.last_name = \"" + surname + "\"";

            Statement statement = conn.createStatement();
            ResultSet result = statement.executeQuery(string);

            while (result.next()) {
                System.out.println(result.getString(1) + " " +
                        result.getString(2) + " " +
                        result.getString(3) + " " +
                        result.getString(4) + " " +
                        result.getDate(5) + " " +
                        result.getString(6));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
