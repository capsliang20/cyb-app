package com.app.cyb.cybparent.mapper;



import com.app.cyb.cybparent.entity.Demo;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.type.JdbcType;


@Mapper
public interface DemoMapper {
    @Insert("insert into demo (name,phone_number,email) values (#{name},#{phoneNumber},#{email})")
    @Options(useGeneratedKeys = true,keyProperty = "id")
    Integer insertDemo(Demo demo);

    @Select("select id,name,phone_number,email from demo where id =#{id}")
    @Results(id = "demoObjMap",value = {
            @Result(column = "id",property = "id",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "name",property = "name",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "phone_number",property = "phoneNumber",jdbcType = JdbcType.BIGINT,javaType = Long.class),
            @Result(column = "email",property = "email",jdbcType = JdbcType.VARCHAR,javaType = String.class)
    })
    Demo selectDemo(@Param("id") Integer id);

    @Update("update demo set name=#{name},phone_number=#{phoneNumber},email=#{email} where id =#{id}")
    Integer updateDemo(Demo demo);

    @Delete("delete from demo where id =#{id}")
    Integer deleteDemo(@Param("id") Integer id);
}
