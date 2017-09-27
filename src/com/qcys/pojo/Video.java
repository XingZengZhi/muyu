package com.qcys.pojo;

public class Video {
	private long VideoId;
	private String VideoName;
	private String VideoSrc;
	private String VideoTime;
	private long VideoUserId;
	private	Integer VideoCate;
	private Integer AuditStatus;
	private Integer SubmitStatus;

	public long getVideoId() {
		return VideoId;
	}

	public void setVideoId(long videoId) {
		VideoId = videoId;
	}

	public String getVideoName() {
		return VideoName;
	}

	public void setVideoName(String videoName) {
		VideoName = videoName;
	}

	public String getVideoSrc() {
		return VideoSrc;
	}

	public void setVideoSrc(String videoSrc) {
		VideoSrc = videoSrc;
	}

	public String getVideoTime() {
		return VideoTime;
	}

	public void setVideoTime(String videoTime) {
		VideoTime = videoTime;
	}

	public long getVideoUserId() {
		return VideoUserId;
	}

	public void setVideoUserId(long videoUserId) {
		VideoUserId = videoUserId;
	}

	public Integer getVideoCate() {
		return VideoCate;
	}

	public void setVideoCate(Integer videoCate) {
		VideoCate = videoCate;
	}

	public Integer getAuditStatus() {
		return AuditStatus;
	}

	public void setAuditStatus(Integer auditStatus) {
		AuditStatus = auditStatus;
	}

	public Integer getSubmitStatus() {
		return SubmitStatus;
	}

	public void setSubmitStatus(Integer submitStatus) {
		SubmitStatus = submitStatus;
	}
}
