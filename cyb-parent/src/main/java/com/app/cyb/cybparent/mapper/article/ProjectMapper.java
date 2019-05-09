package com.app.cyb.cybparent.mapper.article;

import com.app.cyb.cybparent.entity.Demo;
import com.app.cyb.cybparent.entity.article.Project;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.type.JdbcType;

import java.util.Date;
import java.util.List;

@Mapper
public interface ProjectMapper {
    @Insert("insert into projects(image_address,company,website,establishtime,address,abstract,state,module_id,user_id,focus_rate,click_rate) " +
            "values (#{imageAddress},#{company},#{website},#{establishTime},#{address},#{abstr},#{state},#{moduleId},#{userId},#{focusRate},#{clickRate})")
    @Options(useGeneratedKeys = true,keyProperty = "id")
    Integer insertProject(Project project);

    @Select("select id from articles where user_id=#{userId}")
    @ResultType(List.class)
    List<Integer> queryIdByUserId(@Param("userId")Integer userId);

    @Select("select id,image_address,company,website,establishtime,address,abstract,state,module_id,user_id,focus_rate,click_rate from projects where id =#{id}")
    @Results(id = "demoObjMap",value = {
            @Result(column = "id",property = "id",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "image_address",property = "imageAddress",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "company",property = "company",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "website",property = "website",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "establishtime",property = "establishTime",jdbcType = JdbcType.DATE,javaType = Date.class),
            @Result(column = "address",property = "address",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "abstract",property = "abstr",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "state",property = "state",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "module_id",property = "moduleId",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "user_id",property = "userId",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "focus_rate",property = "focusRate",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "click_rate",property = "clickRate",jdbcType = JdbcType.INTEGER,javaType = Integer.class)
    })
    Project queryProject(@Param("id") Integer id);

    @Delete("delete from projects where id =#{id}")
    Integer removeProject(@Param("id") Integer id);
}
