package com.app.cyb.cybparent.entity.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.solr.client.solrj.beans.Field;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    @Field
    private Integer id;
    @Field
    private String name;
    @Field
    private String account;
    private String password;
    private String introduction;
    private String imageAddress;
}
