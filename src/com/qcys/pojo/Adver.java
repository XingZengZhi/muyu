package com.qcys.pojo;

/**
 *
 */

public class Adver {
    private Long AdverId;
    private String AdverAddress;
    private String AdverMarketPrice;
    private String AdverImage;
    private Integer AdverNumber;
    private String AdverDescribe;
    private String AdverSetUp;

    public String getAdverImage() {
        return AdverImage;
    }

    public void setAdverImage(String adverImage) {
        AdverImage = adverImage;
    }

    public Long getAdverId() {
        return AdverId;
    }

    public void setAdverId(Long adverId) {
        AdverId = adverId;
    }

    public String getAdverAddress() {
        return AdverAddress;
    }

    public void setAdverAddress(String adverAddress) {
        AdverAddress = adverAddress;
    }

    public String getAdverMarketPrice() {
        return AdverMarketPrice;
    }

    public void setAdverMarketPrice(String adverMarketPrice) {
        AdverMarketPrice = adverMarketPrice;
    }

    public Integer getAdverNumber() {
        return AdverNumber;
    }

    public void setAdverNumber(Integer adverNumber) {
        AdverNumber = adverNumber;
    }

    public String getAdverDescribe() {
        return AdverDescribe;
    }

    public void setAdverDescribe(String adverDescribe) {
        AdverDescribe = adverDescribe;
    }

    public String getAdverSetUp() {
        return AdverSetUp;
    }

    public void setAdverSetUp(String adverSetUp) {
        AdverSetUp = adverSetUp;
    }
}
