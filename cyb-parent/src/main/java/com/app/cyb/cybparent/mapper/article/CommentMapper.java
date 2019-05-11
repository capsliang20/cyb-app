package com.app.cyb.cybparent.mapper.article;

import com.app.cyb.cybparent.entity.Demo;
import com.app.cyb.cybparent.entity.article.Comment;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.type.JdbcType;

import java.util.Date;
import java.util.List;

@Mapper
public interface CommentMapper {
    @Insert("insert into article_comments (user_id,article_id,type,article_comment_id,content,time) values (#{userId},#{articleId},#{type},#{articleCommentId},#{content},#{time})")
    @Options(useGeneratedKeys = true,keyProperty = "id")
    Integer insertComment(Comment comment);

    @Select("select id,article_id,type,article_comment_id,content,time from article_comments where id =#{id}")
    @Results(id = "commentMap1",value = {
            @Result(column = "id",property = "id",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "article_id",property = "articleId",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "type",property = "type",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "article_comment_id",property = "articleCommentId",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "content",property = "content",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "time",property = "time",jdbcType = JdbcType.DATE,javaType = Date.class)
    })
//    @ResultType(List.class)
    Comment commentById(@Param("id") Integer id);

    @Select("select id,user_id,article_id,type,article_comment_id,content,time from article_comment where article_id =#{articleId}")
    @Results(id = "commentMap",value = {
            @Result(column = "id",property = "id",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "user_id",property = "userId",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "article_id",property = "articleId",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "type",property = "type",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "article_comment_id",property = "articleCommentId",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "content",property = "content",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "time",property = "time",jdbcType = JdbcType.DATE,javaType = Date.class)
    })
//    @ResultType(List.class)
    List<Comment> queryComment(@Param("articleId") Integer articleId);



}
