package com.app.cyb.cybparent.mapper.recommendation;


import com.app.cyb.cybparent.entity.recommendation.Article;

import org.apache.ibatis.annotations.*;
import org.apache.ibatis.type.JdbcType;

import java.util.List;

@Mapper
public interface RecommendationMapper {


    @Select("select id,title,module_id from articles where user_id =#{user_id}")
    @Results(id = "article_recommendation",value = {
            @Result(column = "id",property = "id",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "title",property = "title",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "module_id",property = "module_id",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
    })
    List<Article> article_recommendation(@Param("user_id")Integer user_id);


}
