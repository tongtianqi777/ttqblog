package model.dao;

import model.beans.BlogsBean;

import java.util.List;

/**
 * Created by edwin on 7/23/14.
 */
public interface BlogDAO {
    void save(BlogsBean blogsBean);
    List<BlogsBean> all();
}
