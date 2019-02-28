package com.app.cyb.cybparent.mapper.user;

import com.app.cyb.cybparent.entity.Demo;
import com.app.cyb.cybparent.entity.user.User;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.type.JdbcType;

@Mapper
public interface UserMapper {
    @Insert("insert into user (name,account,password) values (#{name},#{account},#{password})")
    @Options(useGeneratedKeys = true,keyProperty = "id")
    Integer createUser(User demo);

    @Select("select id,name,account,password from demo where id =#{id}")
    @Results(id = "demoObjMap",value = {
            @Result(column = "id",property = "id",jdbcType = JdbcType.INTEGER,javaType = Integer.class),
            @Result(column = "name",property = "name",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "account",property = "account",jdbcType = JdbcType.VARCHAR,javaType = String.class),
            @Result(column = "password",property = "password",jdbcType = JdbcType.VARCHAR,javaType = String.class)
    })
    User queryUser(@Param("id") Integer id);

    @Update("update user set password =#{password} where id =#{id}")
    Integer updatePassword(@Param("id") Integer id,@Param("password")String password);

    @Delete("delete from user where id =#{id}")
    Integer removeUser(@Param("id") Integer id);
}
