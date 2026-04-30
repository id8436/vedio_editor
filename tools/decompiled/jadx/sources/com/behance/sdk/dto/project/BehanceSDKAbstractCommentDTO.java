package com.behance.sdk.dto.project;

import com.behance.sdk.dto.search.BehanceSDKUserDTO;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKAbstractCommentDTO implements Comparable<BehanceSDKAbstractCommentDTO> {
    private String content;
    private long createdDate;
    private String id;
    private BehanceSDKUserDTO user;

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public long getCreatedDate() {
        return this.createdDate;
    }

    public void setCreatedDate(long j) {
        this.createdDate = j;
    }

    public BehanceSDKUserDTO getUser() {
        return this.user;
    }

    public void setUser(BehanceSDKUserDTO behanceSDKUserDTO) {
        this.user = behanceSDKUserDTO;
    }

    @Override // java.lang.Comparable
    public int compareTo(BehanceSDKAbstractCommentDTO behanceSDKAbstractCommentDTO) {
        if (behanceSDKAbstractCommentDTO == null) {
            return 0;
        }
        if (this.createdDate < behanceSDKAbstractCommentDTO.getCreatedDate()) {
            return -1;
        }
        return this.createdDate > behanceSDKAbstractCommentDTO.getCreatedDate() ? 1 : 0;
    }
}
