package murach.business;

import java.io.Serializable;

public class User implements Serializable {
    private String firstName;
    private String lastName;
    private String email;
    private String dob;
    private String hear;
    private String[] values;
    private String contact;

    public User() {
        firstName = "";
        lastName = "";
        email = "";
        dob = "";
        hear = "";
        values = new String[10];
        contact = "";
    }

    public User(String firstName, String lastName, String email, String dob, String hear, String[] values, String contact) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.dob = dob;
        this.hear = hear;
        this.values = values;
        this.contact = contact;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getHear() {
        return hear;
    }

    public String[] getValues() {
        return values;
    }

    public void setHear(String hear) {
        this.hear = hear;
    }

    public void setValues(String[] values) {
        this.values = values;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getContact() {
        return contact;
    }

    public String getValuesAsString() {
        if (values == null) {
            return "";
        }
        return String.join(", ", values);
    }
}
