package com.google.gdata.client.sites;

import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadCreateNewFolderMgr;
import com.google.gdata.client.Query;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class ContentQuery extends Query {
    private String ancestor;
    private Boolean includeDeleted;
    private Boolean includeDrafts;
    private String kind;
    private String parent;
    private String path;

    public ContentQuery(URL url) {
        super(url);
    }

    public String getAncestor() {
        return this.ancestor;
    }

    public void setAncestor(String str) {
        if (this.ancestor == null) {
            if (str == null) {
                return;
            }
        } else if (this.ancestor.equals(str)) {
            return;
        }
        this.ancestor = str;
        setStringCustomParameter("ancestor", str);
    }

    public Boolean getIncludeDeleted() {
        return this.includeDeleted;
    }

    public void setIncludeDeleted(Boolean bool) {
        if (this.includeDeleted == null) {
            if (bool == null) {
                return;
            }
        } else if (this.includeDeleted.equals(bool)) {
            return;
        }
        this.includeDeleted = bool;
        setStringCustomParameter("include-deleted", bool == null ? null : bool.toString());
    }

    public Boolean getIncludeDrafts() {
        return this.includeDrafts;
    }

    public void setIncludeDrafts(Boolean bool) {
        if (this.includeDrafts == null) {
            if (bool == null) {
                return;
            }
        } else if (this.includeDrafts.equals(bool)) {
            return;
        }
        this.includeDrafts = bool;
        setStringCustomParameter("include-drafts", bool == null ? null : bool.toString());
    }

    public String getKind() {
        return this.kind;
    }

    public void setKind(String str) {
        if (this.kind == null) {
            if (str == null) {
                return;
            }
        } else if (this.kind.equals(str)) {
            return;
        }
        this.kind = str;
        setStringCustomParameter("kind", str);
    }

    public String getParent() {
        return this.parent;
    }

    public void setParent(String str) {
        if (this.parent == null) {
            if (str == null) {
                return;
            }
        } else if (this.parent.equals(str)) {
            return;
        }
        this.parent = str;
        setStringCustomParameter(AdobeUploadCreateNewFolderMgr.PARENT_COLLECTION_KEY, str);
    }

    public String getPath() {
        return this.path;
    }

    public void setPath(String str) {
        if (this.path == null) {
            if (str == null) {
                return;
            }
        } else if (this.path.equals(str)) {
            return;
        }
        this.path = str;
        setStringCustomParameter("path", str);
    }
}
