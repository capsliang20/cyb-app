package com.app.cyb.cybparent.mapper.article;

import com.app.cyb.cybparent.entity.Demo;
import com.app.cyb.cybparent.entity.article.Article;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.type.JdbcType;
import java.util.List;

@Mapper
public interface ArticleMapper {
    @Insert("insert into articles (title,content,user_id) values (#{title},#{content},#{userId})")
    @Options(useGeneratedKeys = true,keyProperty = "id")
    Integer insertArticle(Article article);

    @Select("select id from articles where title=#{title}")
    @ResultType(List.class)
    List<Integer> queryIdByTitle(@Param("title") String title);

    @Select("select id,title,content,user_id,click_rate,module_id,follow_rate from articles where user_id=#{userId}")
    /*@Results(id = "demoObjMap",value = {
            @Result(column = "id",property = "id",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "title",property = "title",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "content",property = "content",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "user_id",property = "userId",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "click_rate",property = "clickRate",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "module_id",property = "moduleId",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "follow_rate",property = "followRate",jdbcType = JdbcType.INTEGER,javaType = Integer.class)
    })*/
    @ResultType(List.class)
    List<Article> queryByUserId(@Param("userId")Integer userId);

    @Select("select id,title,content,user_id,click_rate,module_id,follow_rate from articles where module_id=#{moduleId}")
//    @Results(id = "demoObjMap",value = {
//            @Result(column = "id",property = "id",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
//            @Result(column = "title",property = "title",jdbcType = JdbcType.VARCHAR,javaType = String.class),
//            @Result(column = "content",property = "content",jdbcType = JdbcType.VARCHAR,javaType = String.class),
//            @Result(column = "user_id",property = "userId",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
//            @Result(column = "click_rate",property = "clickRate",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
//            @Result(column = "module_id",property = "moduleId",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
//            @Result(column = "follow_rate",property = "followRate",jdbcType = JdbcType.INTEGER,javaType = Integer.class)
//    })
    //@ResultMap(value = "demoObjMap")
    @ResultType(List.class)
    List<Article> queryByModuleId(@Param("moduleId")Integer moduleId);

    @Select("select id,title,content,user_id,click_rate,module_id,follow_rate from articles where id =#{id}")
    @Results(id = "demoObjMap",value = {
            @Result(column = "id",property = "id",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "title",property = "title",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "content",property = "content",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "user_id",property = "userId",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "click_rate",property = "clickRate",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "module_id",property = "moduleId",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "follow_rate",property = "followRate",jdbcType = JdbcType.INTEGER,javaType = Integer.class)
    })
    Article queryArticle(@Param("id") Integer id);

    @Update("update articles set content =#{content},title =#{title},module_id =#{moduleId} where id =#{id}")
    Integer updateArticle(Article article);

    @Delete("delete from articles where id =#{id}")
    Integer removeArticle(@Param("id") Integer id);
}
