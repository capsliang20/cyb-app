package com.app.cyb.cybparent.api.article;
import com.app.cyb.cybparent.entity.article.Project;
import java.util.Date;
import java.util.List;

public interface ProjectService {
    Integer insertProject(Project project);
    List<Project> queryByUserId(Integer userId);
    Project queryProject(Integer id);
    Integer removeProject(Integer id);
    Integer updateProject(Project project);
}
