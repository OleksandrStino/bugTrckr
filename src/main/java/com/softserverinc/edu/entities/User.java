package com.softserverinc.edu.entities;

import com.softserverinc.edu.entities.enums.UserRole;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.hibernate.annotations.Proxy;

import javax.persistence.*;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private Long id;

    @Column(nullable = false, length = 25)
    private String firstName;

    @Column(nullable = false, length = 25)
    private String lastName;

    @Column(unique = true, nullable = false, length = 100)
    private String email;

    @Column
    private String password;

    @Column(nullable = false, length = 15)
    @Enumerated(EnumType.STRING)
    private UserRole role;

    @Column(length = 10000)
    private String description;

    //TODO:Lyutak add constrain that does not cause an error by userService.findOne(id). It conflicts with Release ProjectId constraint.

    /*@ManyToOne
    @JoinColumn(name="`projectId`", referencedColumnName = "`id`")
    private Project projectId;*/

    /**
     * form:input - confirmPassword
     */
    @Transient
    String confirmPassword;

    /**
     * For saveAndUpdate method
     */
    @Transient
    public boolean newuser;


    public User() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public UserRole getRole() {
        return role;
    }

    public void setRole(UserRole role) {
        this.role = role;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

   /* public Project getProjectId() {
        return projectId;
    }

    public void setProjectId(Project projectId) {
        this.projectId = projectId;
    }*/

    public boolean isNewuser() {
        return (this.id == null);
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }

    @Override
    public boolean equals(Object o) {
        return EqualsBuilder.reflectionEquals(this, o);
    }

    @Override
    public int hashCode() {
        return HashCodeBuilder.reflectionHashCode(this);
    }
}
