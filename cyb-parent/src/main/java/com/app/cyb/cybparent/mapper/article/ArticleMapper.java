package com.app.cyb.cybparent.mapper.article;

import com.app.cyb.cybparent.entity.Demo;
import com.app.cyb.cybparent.entity.article.Article;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.type.JdbcType;
import java.util.List;

@Mapper
public interface ArticleMapper {
    @Insert("insert into articles (title,content,user_id,module_id,click_rate,follow_rate,module_name) values (#{title},#{content},#{userId},0,0,0,#{moduleName})")
    @Options(useGeneratedKeys = true,keyProperty = "id")
    Integer insertArticle(Article article);

    @Select("select id from articles where title=#{title}")
    @ResultType(List.class)
    List<Integer> queryIdByTitle(@Param("title") String title);

    @Select("select id,title,content,user_id,click_rate,module_name,follow_rate from articles where user_id=#{userId}")
    @Results(id = "articleMap",value = {
            @Result(column = "id",property = "id",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "title",property = "title",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "content",property = "content",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "user_id",property = "userId",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "click_rate",property = "clickRate",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "module_name",property = "moduleName",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "follow_rate",property = "followRate",jdbcType = JdbcType.INTEGER,javaType = Integer.class)
    })
    //@ResultType(List.class)
    List<Article> queryByUserId(@Param("userId")Integer userId);

    @Select("select id from article_comments where article_id =#{articleId}")
    @ResultType(List.class)
    List<Integer> commentIdByArticleId(@Param("articleId") Integer articleId);

    @Select("select id,title,content,user_id,click_rate,module_name,follow_rate from articles where module_name=#{moduleName}")
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
    @ResultMap("articleMap")
    List<Article> queryByModuleName(@Param("moduleName")String moduleName);

    @Select("select id,title,content,user_id,click_rate,module_name,follow_rate from articles where id =#{id}")
    @ResultMap("articleMap")
    Article queryArticle(@Param("id") Integer id);

    @Select("select name from modules where id =#{id}")
    String moduleName(Integer moduleId);

    @Update("update articles set content =#{content},title =#{title},module_name =#{moduleName},follow_rate =#{followRate},click_rate =#{clickRate} where id =#{id}")
    Integer updateArticle(Article article);

    @Delete("delete from articles where id =#{id}")
    Integer removeArticle(@Param("id") Integer id);

}
