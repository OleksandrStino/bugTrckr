package com.softserverinc.edu.entities;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import javax.persistence.*;
import java.util.Set;

@Entity
public class Label {

    @Id
    @GeneratedValue
    @Column(unique = true, nullable = false)
    private Long id;

    @Column(nullable = false, length = 32)
    private String title;

    @ManyToMany()
    @JoinTable(name = "LabelIssue",
            joinColumns = @JoinColumn(name = "labelId", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "IssueId", referencedColumnName = "id"))
    private Set<Issue> issues;

    @Column
    private boolean isDeleted;

    public Label() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Set<Issue> getIssues() {
        return issues;
    }

    public void setIssues(Set<Issue> issues) {
        this.issues = issues;
    }

    public boolean isDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(boolean isDeleted) {
        this.isDeleted = isDeleted;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;

        if (o == null || getClass() != o.getClass()) return false;

        Label label = (Label) o;

        return new EqualsBuilder()
                .append(id, label.id)
                .isEquals();
    }

    @Override
    public int hashCode() {
        return new HashCodeBuilder(17, 37)
                .append(id)
                .toHashCode();
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                .append("title", title)
                .append("id", id)
                .toString();
    }

}
