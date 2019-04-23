package com.app.cyb.cybparent.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.solr.client.solrj.beans.Field;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Demo {
    @Field
    private Integer demo_id;
    @Field
    private String name;
    @Field
    private String phoneNumber;
    @Field
    private String email;
}
