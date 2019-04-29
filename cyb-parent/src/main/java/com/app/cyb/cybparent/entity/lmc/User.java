package com.app.cyb.cybparent.entity.lmc;

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
    @Field
    private String introduction;
    @Field
    private String image;
}
