package com.qcys.pojo;

/**
 * 本地事项报表
 */
public class Local {
    private long id;
    private String ClientName;
    private String ClientPhone;
    private String Metter;
    private String StartTime;
    private String EndTime;
    private String Remarks;
    private String ReleaseTime;
    private String ReleaseUser;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getClientName() {
        return ClientName;
    }

    public void setClientName(String clientName) {
        ClientName = clientName;
    }

    public String getClientPhone() {
        return ClientPhone;
    }

    public void setClientPhone(String clientPhone) {
        ClientPhone = clientPhone;
    }

    public String getMetter() {
        return Metter;
    }

    public void setMetter(String metter) {
        Metter = metter;
    }

    public String getStartTime() {
        return StartTime;
    }

    public void setStartTime(String startTime) {
        StartTime = startTime;
    }

    public String getEndTime() {
        return EndTime;
    }

    public void setEndTime(String endTime) {
        EndTime = endTime;
    }

    public String getRemarks() {
        return Remarks;
    }

    public void setRemarks(String remarks) {
        Remarks = remarks;
    }

    public String getReleaseTime() {
        return ReleaseTime;
    }

    public void setReleaseTime(String releaseTime) {
        ReleaseTime = releaseTime;
    }

    public String getReleaseUser() {
        return ReleaseUser;
    }

    public void setReleaseUser(String releaseUser) {
        ReleaseUser = releaseUser;
    }
}
