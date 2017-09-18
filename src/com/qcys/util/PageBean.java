package com.qcys.util;

/**
 * Created by 94404 on 2017/8/13.
 */
public class PageBean {
    private Integer curPage;//当前页
    private Integer pageCount;//总页数
    private Integer rowCount;//总行数
    private Integer pageSize = 16;//每页显示的条数

    public PageBean(Integer rows){
        setRowCount(rows);
        if(this.rowCount % this.pageSize == 0){
            this.pageCount = this.rowCount % this.pageSize;
        }else if(rows < this.pageSize){
            this.pageCount = 1;
        }else{
            this.pageCount = this.rowCount / this.pageSize + 1;
        }
    }

    public Integer getCurPage() {
        return curPage;
    }

    public void setCurPage(Integer curPage) {
        this.curPage = curPage;
    }

    public Integer getPageCount() {
        return pageCount;
    }

    public void setPageCount(Integer pageCount) {
        this.pageCount = pageCount;
    }

    public Integer getRowCount() {
        return rowCount;
    }

    public void setRowCount(Integer rowCount) {
        this.rowCount = rowCount;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }
}
