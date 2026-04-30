package com.behance.sdk.dto.search;

import android.util.SparseArray;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import com.behance.sdk.util.BehanceSDKSerializableSparseArray;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKUserDTO implements Serializable {
    private static final int INITIAL_SIZE_FOR_COLLECTION = 3;
    public static final int PROFILE_IMAGE_SIZE_100 = 100;
    public static final int PROFILE_IMAGE_SIZE_115 = 115;
    public static final int PROFILE_IMAGE_SIZE_138 = 138;
    public static final int PROFILE_IMAGE_SIZE_230 = 230;
    public static final int PROFILE_IMAGE_SIZE_276 = 276;
    public static final int PROFILE_IMAGE_SIZE_50 = 50;
    private int appreciationsCount;
    private String city;
    private int commentsCount;
    private String company;
    private String country;
    private List<BehanceSDKCollectionDTO> createdCollections;
    private long createdOn;
    private List<BehanceSDKUserDetailsSectionDTO> detailsSections;
    private String displayName;
    private String emailId;
    private List<BehanceSDKFeaturedDTO> featuredDetails;
    private List<String> fields;
    private String fieldsDisplayString;
    private String firstName;
    private List<BehanceSDKCollectionDTO> followedCollections;
    private int followersCount;
    private int followingCount;
    private int id;
    private boolean isCurrentUserFollowing;
    private boolean isEnterprise = false;
    private String lastName;
    private String locationDisplayString;
    private String occupation;
    private BehanceSDKSerializableSparseArray<BehanceSDKImageDTO> profileImagesArray;
    private String profileUrl;
    private List<BehanceSDKProjectDTO> projects;
    private String state;
    private String twitterHandle;
    private String userName;
    private int viewsCount;
    private List<BehanceSDKWebLinkDTO> webLinks;
    private List<BehanceSDKUserWorkExpDTO> workExperiences;

    public String getFirstName() {
        return this.firstName;
    }

    public void setFirstName(String str) {
        this.firstName = str;
    }

    public String getLastName() {
        return this.lastName;
    }

    public void setLastName(String str) {
        this.lastName = str;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public String getProfileUrl() {
        return this.profileUrl;
    }

    public void setProfileUrl(String str) {
        this.profileUrl = str;
    }

    public String getDisplayName() {
        return (this.displayName == null || this.displayName.length() <= 0) ? getFirstName() + " " + getLastName() : this.displayName;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public String getEmailId() {
        return this.emailId;
    }

    public void setEmailId(String str) {
        this.emailId = str;
    }

    public List<String> getFields() {
        return this.fields != null ? this.fields : Collections.emptyList();
    }

    public String getFieldsDisplayString() {
        String str;
        if (this.fieldsDisplayString == null) {
            String strSubstring = "";
            if (this.fields != null) {
                Iterator<String> it = this.fields.iterator();
                while (true) {
                    str = strSubstring;
                    if (!it.hasNext()) {
                        break;
                    }
                    strSubstring = str + ", " + it.next();
                }
                strSubstring = str.substring(2);
            }
            this.fieldsDisplayString = strSubstring;
        }
        return this.fieldsDisplayString;
    }

    public void addField(String str) {
        if (this.fields == null) {
            this.fields = new ArrayList(3);
        }
        this.fields.add(str);
    }

    private SparseArray<BehanceSDKImageDTO> getProfileImages() {
        if (this.profileImagesArray == null) {
            this.profileImagesArray = new BehanceSDKSerializableSparseArray<>(3);
        }
        return this.profileImagesArray;
    }

    public void addImage(int i, String str) {
        if (this.profileImagesArray == null) {
            this.profileImagesArray = new BehanceSDKSerializableSparseArray<>(3);
        }
        this.profileImagesArray.put(i, BehanceSDKImageDTO.getNewInstance(str));
    }

    public BehanceSDKImageDTO findProfileImageInIncreasingSizeOrder(int i) {
        BehanceSDKImageDTO behanceSDKImageDTO = getProfileImages().get(i);
        if (behanceSDKImageDTO == null && i <= 50) {
            behanceSDKImageDTO = getProfileImages().get(50);
        }
        if (behanceSDKImageDTO == null && i <= 115) {
            behanceSDKImageDTO = getProfileImages().get(115);
        }
        if (behanceSDKImageDTO == null) {
            return getProfileImages().get(138);
        }
        return behanceSDKImageDTO;
    }

    public BehanceSDKImageDTO findProfileImageInDecreasingSizeOrder(int i) {
        BehanceSDKImageDTO behanceSDKImageDTO = getProfileImages().get(i);
        if (behanceSDKImageDTO == null && i > 138) {
            behanceSDKImageDTO = getProfileImages().get(138);
        }
        if (behanceSDKImageDTO == null && i > 115) {
            behanceSDKImageDTO = getProfileImages().get(115);
        }
        if (behanceSDKImageDTO == null) {
            return getProfileImages().get(138);
        }
        return behanceSDKImageDTO;
    }

    public String getCity() {
        return this.city;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String str) {
        this.state = str;
    }

    public String getCountry() {
        return this.country;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public String getCompany() {
        return this.company;
    }

    public void setCompany(String str) {
        this.company = str;
    }

    public String getOccupation() {
        return this.occupation;
    }

    public void setOccupation(String str) {
        this.occupation = str;
    }

    public long getCreatedOn() {
        return this.createdOn;
    }

    public void setCreatedOn(long j) {
        this.createdOn = j;
    }

    public String getLocationDisplayString() {
        if (this.locationDisplayString == null) {
            this.locationDisplayString = getCity() + ", " + getCountry();
        }
        return this.locationDisplayString;
    }

    public List<BehanceSDKFeaturedDTO> getFeaturedDetails() {
        return this.featuredDetails != null ? this.featuredDetails : Collections.emptyList();
    }

    public void addFeaturedDetail(BehanceSDKFeaturedDTO behanceSDKFeaturedDTO) {
        if (this.featuredDetails == null) {
            this.featuredDetails = new ArrayList();
        }
        this.featuredDetails.add(behanceSDKFeaturedDTO);
    }

    public List<BehanceSDKProjectDTO> getProjects() {
        return this.projects != null ? this.projects : Collections.emptyList();
    }

    public void setProjects(List<BehanceSDKProjectDTO> list) {
        this.projects = list;
    }

    public List<BehanceSDKCollectionDTO> getCreatedCollections() {
        return this.createdCollections != null ? this.createdCollections : Collections.emptyList();
    }

    public void setCreatedCollections(List<BehanceSDKCollectionDTO> list) {
        this.createdCollections = list;
    }

    public int getFollowingCount() {
        return this.followingCount;
    }

    public void setFollowingCount(int i) {
        this.followingCount = i;
    }

    public int getFollowersCount() {
        return this.followersCount;
    }

    public void setFollowersCount(int i) {
        this.followersCount = i;
    }

    public int getAppreciationsCount() {
        return this.appreciationsCount;
    }

    public void setAppreciationsCount(int i) {
        this.appreciationsCount = i;
    }

    public int getCommentsCount() {
        return this.commentsCount;
    }

    public void setCommentsCount(int i) {
        this.commentsCount = i;
    }

    public int getViewsCount() {
        return this.viewsCount;
    }

    public void setViewsCount(int i) {
        this.viewsCount = i;
    }

    public boolean isCurrentUserFollowing() {
        return this.isCurrentUserFollowing;
    }

    public void setCurrentUserFollowing(boolean z) {
        this.isCurrentUserFollowing = z;
    }

    public String getTwitterHandle() {
        return this.twitterHandle;
    }

    public void setTwitterHandle(String str) {
        this.twitterHandle = str;
    }

    public List<BehanceSDKWebLinkDTO> getWebLinks() {
        return this.webLinks != null ? this.webLinks : Collections.emptyList();
    }

    public void setWebLinks(List<BehanceSDKWebLinkDTO> list) {
        this.webLinks = list;
    }

    public void addWebLink(BehanceSDKWebLinkDTO behanceSDKWebLinkDTO) {
        if (this.webLinks == null) {
            this.webLinks = new ArrayList();
        }
        this.webLinks.add(behanceSDKWebLinkDTO);
    }

    public List<BehanceSDKUserDetailsSectionDTO> getDetailsSections() {
        return this.detailsSections != null ? this.detailsSections : Collections.emptyList();
    }

    public void setDetailsSections(List<BehanceSDKUserDetailsSectionDTO> list) {
        this.detailsSections = list;
    }

    public void addDetailsSection(BehanceSDKUserDetailsSectionDTO behanceSDKUserDetailsSectionDTO) {
        if (this.detailsSections == null) {
            this.detailsSections = new ArrayList();
        }
        this.detailsSections.add(behanceSDKUserDetailsSectionDTO);
    }

    public List<BehanceSDKUserWorkExpDTO> getWorkExperiences() {
        return this.workExperiences != null ? this.workExperiences : Collections.emptyList();
    }

    public void setWorkExperiences(List<BehanceSDKUserWorkExpDTO> list) {
        this.workExperiences = list;
    }

    public void addWorkExperience(BehanceSDKUserWorkExpDTO behanceSDKUserWorkExpDTO) {
        if (this.workExperiences == null) {
            this.workExperiences = new ArrayList();
        }
        this.workExperiences.add(behanceSDKUserWorkExpDTO);
    }

    public List<BehanceSDKCollectionDTO> getFollowedCollections() {
        return this.followedCollections != null ? this.followedCollections : Collections.emptyList();
    }

    public void setFollowedCollections(List<BehanceSDKCollectionDTO> list) {
        this.followedCollections = list;
    }

    public boolean isEnterpriseUser() {
        return this.isEnterprise;
    }

    public void setUserAsEnterprise(boolean z) {
        this.isEnterprise = z;
    }
}
