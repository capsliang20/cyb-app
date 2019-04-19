package com.app.cyb.cybparent.util;

import com.app.cyb.cybparent.entity.Demo;
import com.app.cyb.cybparent.entity.ReturnType;
import com.app.cyb.cybparent.entity.user.User;
import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrServerException;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;

public class AddToSolr {

    @Autowired
    private static SolrClient solrClient;

    public static void add(Demo demo){
        try{
        solrClient.addBean("abc",demo);
        solrClient.commit("abc");
        }catch (SolrServerException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public static void add(User user){
        try{
            solrClient.addBean("user",user);
            solrClient.commit("user");
        }catch (SolrServerException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static ReturnType delete(int id){
        try {
            solrClient.deleteById("user", id);
            solrClient.commit("user");
            return ReturnType.ok("删除索引成功！");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ReturnType.failure("删除索引失败！");
    }

    public static ReturnType update(User user){
        try{
            solrClient.addBean("user",user);
            solrClient.commit("user");
            return ReturnType.ok("修改索引成功！");
        }catch (Exception e) {
            e.printStackTrace();
        }
        return ReturnType.failure("修改索引失败！");
    }
}
