package com.softserverinc.edu.services;

import com.softserverinc.edu.entities.Issue;
import com.softserverinc.edu.entities.Project;
import com.softserverinc.edu.entities.ProjectRelease;
import com.softserverinc.edu.entities.enums.ReleaseStatus;
import com.softserverinc.edu.repositories.ProjectReleaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ProjectReleaseService {

    @Autowired
    private ProjectReleaseRepository projectReleaseRepository;

    public ProjectRelease findById(Long id) {
        return projectReleaseRepository.findOne(id);
    }

    public List<ProjectRelease> findByProject(Project project) {
        return projectReleaseRepository.findByProject(project);
    }

    public ProjectRelease findByIssues(Issue issue) {
        return projectReleaseRepository.findByIssues(issue);
    }

    public List<ProjectRelease> findByVersion(String version) {
        return projectReleaseRepository.findByVersion(version);
    }

    public List<ProjectRelease> findByReleaseStatus(ReleaseStatus releaseStatus) {
        return projectReleaseRepository.findByReleaseStatus(releaseStatus);
    }

    public List<ProjectRelease> findAll() {
        return projectReleaseRepository.findAll();
    }

    @Transactional
    public ProjectRelease save(ProjectRelease projectRelease) {
        return projectReleaseRepository.saveAndFlush(projectRelease);
    }

    @Transactional
    public void delete(Long id) {
        projectReleaseRepository.delete(id);
    }

    @Transactional
    public ProjectRelease update(ProjectRelease projectRelease) {
        return projectReleaseRepository.saveAndFlush(projectRelease);
    }

}
