package com.app.cyb.cybparent.mapper.recommendation;


import com.app.cyb.cybparent.entity.recommendation.Article;

import org.apache.ibatis.annotations.*;
import org.apache.ibatis.type.JdbcType;

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

    @Select("select article_id from article_recommendations where user_id =#{user_id}")
    @ResultType(List.class)
    List<Integer>  articleidByUserID(@Param("user_id") Integer user_id);

    @Select("select name from modules where id =#{id}")
    @ResultType(String.class)
    String  moduleNameByID(@Param("id") Integer id);

}
