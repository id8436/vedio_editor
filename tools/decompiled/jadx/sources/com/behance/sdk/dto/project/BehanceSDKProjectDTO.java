package com.behance.sdk.dto.project;

import com.behance.sdk.dto.search.BehanceSDKUserDTO;
import com.behance.sdk.util.BehanceSDKFileUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectDTO implements Serializable {
    public static final String LAYOUT_HTML_FILE_NAME = "layout.html";
    public static final String MATURE_CONTENT_ACCESS_ALLOWED = "allowed";
    public static final String MATURE_CONTENT_ACCESS_RESTRICTED_AGE = "restricted-age";
    public static final String MATURE_CONTENT_ACCESS_RESTRICTED_LOGGED_OUT = "logged-out";
    public static final String MATURE_CONTENT_ACCESS_RESTRICTED_SAFE_BROWSING = "restricted-safe";
    public static final String PUBLIC_PROJECT = "public";
    private static final long serialVersionUID = 401439769574614616L;
    private boolean allowComments;
    private boolean appreciatedByUser;
    private long appreciatedByUserOn;
    private int canvasWidth;
    private BehanceSDKProjectCopyrightDTO copyright;
    private BehanceSDKProjectCoversDTO covers;
    private long createdDate;
    private String custom_css;
    private String description;
    private List<BehanceSDKProjectFeaturedDTO> features;
    private List<String> fields;
    private String html;
    private String id;
    private boolean isVisible = true;
    private String layoutHTMLPath;
    private String matureAccess;
    private boolean matureContent;
    private long modifiedDate;
    private List<BehanceSDKAbstractProjectModuleDTO> modules;
    private String name;
    private List<BehanceSDKUserDTO> owners;
    private String privacy;
    private BehanceSDKProjectStylesDTO projectStyles;
    private String projectUrl;
    private boolean publicProject;
    private long publishedDate;
    private String shortUrl;
    private BehanceSDKProjectStatsDTO stats;
    private List<String> tags;
    private List<BehanceSDKProjectToolDTO> tools;

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
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

    public List<String> getFields() {
        return this.fields != null ? this.fields : Collections.emptyList();
    }

    public void setFields(List<String> list) {
        this.fields = list;
    }

    public void addField(String str) {
        if (this.fields == null) {
            this.fields = new ArrayList();
        }
        this.fields.add(str);
    }

    public String getProjectUrl() {
        return this.projectUrl;
    }

    public void setUrl(String str) {
        this.projectUrl = str;
    }

    public String getPrivacy() {
        return this.privacy;
    }

    public void setPrivacy(String str) {
        this.privacy = str;
        setPublicProject("public".equalsIgnoreCase(str));
    }

    public boolean isMatureContent() {
        return this.matureContent;
    }

    public void setMatureContent(boolean z) {
        this.matureContent = z;
    }

    public String getMatureAccess() {
        if (this.matureAccess == null) {
            this.matureAccess = MATURE_CONTENT_ACCESS_RESTRICTED_SAFE_BROWSING;
        }
        return this.matureAccess;
    }

    public void setMatureAccess(String str) {
        this.matureAccess = str;
    }

    public long getCreatedDate() {
        return this.createdDate;
    }

    public void setCreatedDate(long j) {
        this.createdDate = j;
    }

    public long getModifiedDate() {
        return this.modifiedDate;
    }

    public void setModifiedDate(long j) {
        this.modifiedDate = j;
    }

    public long getPublishedDate() {
        return this.publishedDate;
    }

    public void setPublishedDate(long j) {
        this.publishedDate = j;
    }

    public BehanceSDKProjectStatsDTO getStats() {
        if (this.stats == null) {
            this.stats = new BehanceSDKProjectStatsDTO();
        }
        return this.stats;
    }

    public void setStats(BehanceSDKProjectStatsDTO behanceSDKProjectStatsDTO) {
        this.stats = behanceSDKProjectStatsDTO;
    }

    public BehanceSDKProjectCoversDTO getCovers() {
        if (this.covers == null) {
            this.covers = new BehanceSDKProjectCoversDTO();
        }
        return this.covers;
    }

    public void setCovers(BehanceSDKProjectCoversDTO behanceSDKProjectCoversDTO) {
        this.covers = behanceSDKProjectCoversDTO;
    }

    public List<BehanceSDKAbstractProjectModuleDTO> getModules() {
        return this.modules != null ? this.modules : Collections.emptyList();
    }

    public void setModules(List<BehanceSDKAbstractProjectModuleDTO> list) {
        this.modules = list;
    }

    public void addModule(BehanceSDKAbstractProjectModuleDTO behanceSDKAbstractProjectModuleDTO) {
        if (this.modules == null) {
            this.modules = new ArrayList();
        }
        this.modules.add(behanceSDKAbstractProjectModuleDTO);
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public String getCustomCSS() {
        return this.custom_css;
    }

    public void setCustomCSS(String str) {
        this.custom_css = str;
    }

    public String getHTML() {
        return this.html;
    }

    public void setHTML(String str) {
        this.html = str;
    }

    public boolean isVisible() {
        return this.isVisible;
    }

    public void setVisible(boolean z) {
        this.isVisible = z;
    }

    public String getShortUrl() {
        return this.shortUrl;
    }

    public void setShortUrl(String str) {
        this.shortUrl = str;
    }

    public boolean isPublicProject() {
        if (getPrivacy() != null) {
            return this.publicProject;
        }
        return true;
    }

    public void setPublicProject(boolean z) {
        this.publicProject = z;
    }

    public List<BehanceSDKProjectFeaturedDTO> getFeatures() {
        return this.features != null ? this.features : Collections.emptyList();
    }

    public void setFeatures(List<BehanceSDKProjectFeaturedDTO> list) {
        this.features = list;
    }

    public void addFeature(BehanceSDKProjectFeaturedDTO behanceSDKProjectFeaturedDTO) {
        if (this.features == null) {
            this.features = new ArrayList();
        }
        this.features.add(behanceSDKProjectFeaturedDTO);
    }

    public List<String> getTags() {
        if (this.tags == null) {
            this.tags = Collections.emptyList();
        }
        return this.tags;
    }

    public void setTags(List<String> list) {
        this.tags = list;
    }

    public void addTag(String str) {
        if (this.tags == null) {
            this.tags = new ArrayList();
        }
        this.tags.add(str);
    }

    public BehanceSDKProjectCopyrightDTO getCopyright() {
        if (this.copyright == null) {
            this.copyright = new BehanceSDKProjectCopyrightDTO();
        }
        return this.copyright;
    }

    public void setCopyright(BehanceSDKProjectCopyrightDTO behanceSDKProjectCopyrightDTO) {
        this.copyright = behanceSDKProjectCopyrightDTO;
    }

    public String getLayoutHTMLPath() {
        if (this.layoutHTMLPath == null || this.layoutHTMLPath.length() == 0) {
            this.layoutHTMLPath = BehanceSDKFileUtils.getNetworkAppProjectHTMLStoragePath(this.id);
        }
        return this.layoutHTMLPath;
    }

    public long getAppreciatedByUserOn() {
        return this.appreciatedByUserOn;
    }

    public void setAppreciatedByUserOn(long j) {
        this.appreciatedByUserOn = j;
    }

    public boolean isAppreciatedByUser() {
        return this.appreciatedByUser;
    }

    public void setAppreciatedByUser(boolean z) {
        this.appreciatedByUser = z;
    }

    public BehanceSDKProjectStylesDTO getProjectStyles() {
        return this.projectStyles;
    }

    public void setProjectStyles(BehanceSDKProjectStylesDTO behanceSDKProjectStylesDTO) {
        this.projectStyles = behanceSDKProjectStylesDTO;
    }

    public int getCanvasWidth() {
        return this.canvasWidth;
    }

    public void setCanvasWidth(int i) {
        this.canvasWidth = i;
    }

    public boolean isAllowComments() {
        return this.allowComments;
    }

    public void setAllowComments(boolean z) {
        this.allowComments = z;
    }

    public List<BehanceSDKProjectToolDTO> getTools() {
        return this.tools;
    }

    public void setTools(List<BehanceSDKProjectToolDTO> list) {
        this.tools = list;
    }
}
