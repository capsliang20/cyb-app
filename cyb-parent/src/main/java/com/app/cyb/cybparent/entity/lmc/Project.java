package com.app.cyb.cybparent.entity.lmc;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.solr.client.solrj.beans.Field;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Project {
    @Field
    private Integer id;
    @Field
    private String title;
    @Field
    private String abstr;
    @Field
    private String content;
    @Field
    private Integer click_rate;
}
