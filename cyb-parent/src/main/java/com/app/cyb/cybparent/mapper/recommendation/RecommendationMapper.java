package com.app.cyb.cybparent.mapper.recommendation;


import com.app.cyb.cybparent.entity.recommendation.Article;
import com.app.cyb.cybparent.entity.recommendation.Project;

import com.app.cyb.cybparent.entity.recommendation.User;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.type.JdbcType;

import java.util.Date;
import java.util.List;

@Mapper
public interface RecommendationMapper {


    @Select("select id,title,module_id from articles where id =#{article_id}")
    @Results(id = "article_recommendation",value = {
            @Result(column = "id",property = "id",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "title",property = "title",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "module_id",property = "module_id",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
    })
    Article articleByID(@Param("article_id")Integer article_id);

    @Select("select id,image_address,company,establishtime,module_id from projects where id =#{project_id}")
    @Results(id = "project_recommendation",value = {
            @Result(column = "id",property = "id",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "image_address",property = "image_address",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "company",property = "company",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "establishtime",property = "establishtime",jdbcType = JdbcType.DATE,javaType = Date.class),
            @Result(column = "module_id",property = "module_id",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
    })
    Project projectByID(@Param("project_id")Integer project_id);

    @Select("select id,image_address,name,introduction from user where id =#{user_id}")
    @Results(id = "user_recommendation",value = {
            @Result(column = "id",property = "id",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "image_address",property = "image_address",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "name",property = "name",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "introduction",property = "introduction",jdbcType = JdbcType.VARCHAR,javaType = String.class),
    })
    User userByID(@Param("user_id")Integer user_id);

    @Select("select article_id from article_recommendations where user_id =#{user_id}")
    @ResultType(List.class)
    List<Integer>  articleIDByUserID(@Param("user_id") Integer user_id);

    @Select("select project_id from project_recommendations where user_id =#{user_id}")
    @ResultType(List.class)
    List<Integer>  projectIDByUserID(@Param("user_id") Integer user_id);

    @Select("select userid_rmd from user_recommendations where user_id=#{user_id}")
    @ResultType(List.class)
    List<Integer> useridRmdByUserid(@Param("user_id") Integer user_id);

    @Select("select name from modules where id =#{id}")
    @ResultType(String.class)
    String  moduleNameByID(@Param("id") Integer id);

}
