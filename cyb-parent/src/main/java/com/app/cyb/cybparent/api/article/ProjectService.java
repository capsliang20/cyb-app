package com.app.cyb.cybparent.api.article;
import com.app.cyb.cybparent.entity.article.Project;

import java.util.List;

public interface ProjectService {
    Integer insertProject(Project project);
    List<Integer> queryIdByUserId(Integer userId);
    Project queryProject(Integer id);
    Integer removeProject(Integer id);
}
