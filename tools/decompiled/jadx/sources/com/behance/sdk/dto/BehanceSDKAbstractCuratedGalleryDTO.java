package com.behance.sdk.dto;

import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKAbstractCuratedGalleryDTO {
    private String domain;
    private boolean following;
    private String iconUrl;
    private int id;
    private String key;
    private String name;
    private List<BehanceSDKProjectDTO> projectList;
    private BehanceSDKGalleryRibbonDTO ribbonDTO;
    private String url;

    public BehanceSDKGalleryRibbonDTO getRibbonDTO() {
        return this.ribbonDTO;
    }

    public void setRibbonDTO(BehanceSDKGalleryRibbonDTO behanceSDKGalleryRibbonDTO) {
        this.ribbonDTO = behanceSDKGalleryRibbonDTO;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String getDomain() {
        return this.domain;
    }

    public void setDomain(String str) {
        this.domain = str;
    }

    public String getIconUrl() {
        return this.iconUrl;
    }

    public void setIconUrl(String str) {
        this.iconUrl = str;
    }

    public String getKey() {
        return this.key;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public boolean isFollowing() {
        return this.following;
    }

    public void setFollowing(boolean z) {
        this.following = z;
    }

    public List<BehanceSDKProjectDTO> getProjectList() {
        return this.projectList;
    }

    public void setProjectList(List<BehanceSDKProjectDTO> list) {
        this.projectList = list;
    }
}
