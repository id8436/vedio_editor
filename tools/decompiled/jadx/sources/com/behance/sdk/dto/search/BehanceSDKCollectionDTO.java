package com.behance.sdk.dto.search;

import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCollectionDTO {
    public static final String ALL_TAGS_ID = "ALL_TAGS_ID";
    public static final int APPRECIATED_PROJECTS_COLLECTION_ID = -200;
    private long createdTime;
    private boolean currentUserFollowing;
    private int followersCount;
    private int id;
    private int itemCount;
    private List<BehanceSDKProjectDTO> latestProjects;
    private long modifiedTime;
    private List<BehanceSDKUserDTO> owners;
    private String privacy;
    private String title;
    private String url;

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public int getItemCount() {
        return this.itemCount;
    }

    public void setItemCount(int i) {
        this.itemCount = i;
    }

    public int getFollowersCount() {
        return this.followersCount;
    }

    public void setFollowersCount(int i) {
        this.followersCount = i;
    }

    public List<BehanceSDKUserDTO> getOwners() {
        return this.owners != null ? this.owners : Collections.emptyList();
    }

    public void setOwners(List<BehanceSDKUserDTO> list) {
        this.owners = list;
    }

    public void addOwner(BehanceSDKUserDTO behanceSDKUserDTO) {
        if (this.owners == null) {
            this.owners = new ArrayList();
        }
        this.owners.add(behanceSDKUserDTO);
    }

    public String getPrivacy() {
        return this.privacy;
    }

    public void setPrivacy(String str) {
        this.privacy = str;
    }

    public long getCreatedTime() {
        return this.createdTime;
    }

    public void setCreatedTime(long j) {
        this.createdTime = j;
    }

    public long getModifiedTime() {
        return this.modifiedTime;
    }

    public void setModifiedTime(long j) {
        this.modifiedTime = j;
    }

    public List<BehanceSDKProjectDTO> getLatestProjects() {
        return this.latestProjects != null ? this.latestProjects : Collections.emptyList();
    }

    public void setLatestProjects(List<BehanceSDKProjectDTO> list) {
        this.latestProjects = list;
    }

    public void addLatestProject(BehanceSDKProjectDTO behanceSDKProjectDTO) {
        if (this.latestProjects == null) {
            this.latestProjects = new ArrayList();
        }
        this.latestProjects.add(behanceSDKProjectDTO);
    }

    public boolean isCurrentUserFollowing() {
        return this.currentUserFollowing;
    }

    public void setCurrentUserFollowing(boolean z) {
        this.currentUserFollowing = z;
    }
}
