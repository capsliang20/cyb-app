package com.app.cyb.cybparent.service.article;

import com.app.cyb.cybparent.api.article.ProjectService;
import com.app.cyb.cybparent.entity.article.Project;
import com.app.cyb.cybparent.mapper.article.ProjectMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

public class ProjectServicelmpl implements ProjectService{
    @Resource
    ProjectMapper projectMapper;

    @Override
    public Integer insertProject(Project projcet){
        return projectMapper.insertProject(projcet);
    };

    @Override
    public Project queryProject(Integer projectId){
        return projectMapper.queryProject(projectId);
    };

    @Override
    public List<Integer> queryIdByUserId(Integer userId){
        return projectMapper.queryIdByUserId(userId);
    };

    @Override
    public Integer updateProject(Project project){
        return projectMapper.updateProject(project);
    };

    @Override
    public Integer removeProject(Integer projectId){
        return projectMapper.removeProject(projectId);
    };
}
