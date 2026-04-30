package com.behance.sdk.dto.editor;

import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.dto.BehanceSDKTagDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectCoversDTO;
import com.behance.sdk.dto.search.BehanceSDKTeamDTO;
import com.behance.sdk.dto.search.BehanceSDKUserDTO;
import com.behance.sdk.enums.BehanceSDKCopyrightOption;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKEditorProjectDTO implements Serializable {
    private boolean allowComments = true;
    private int backgroundColor = -1;
    private List<BehanceSDKTagDTO> companiesSchools;
    private BehanceSDKCopyrightOption copyright;
    private BehanceSDKProjectCoversDTO covers;
    private List<BehanceSDKUserDTO> credits;
    private String description;
    private List<BehanceSDKCreativeFieldDTO> fields;
    private String id;
    private boolean matureContent;
    private List<BehanceSDKEditProjectModuleAbstract> modules;
    private String name;
    private List<BehanceSDKUserDTO> owners;
    private List<String> tags;
    private List<BehanceSDKTeamDTO> teams;
    private List<BehanceSDKTagDTO> tools;

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

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public boolean isMatureContent() {
        return this.matureContent;
    }

    public void setMatureContent(boolean z) {
        this.matureContent = z;
    }

    public boolean isAllowComments() {
        return this.allowComments;
    }

    public void setAllowComments(boolean z) {
        this.allowComments = z;
    }

    public List<BehanceSDKCreativeFieldDTO> getFields() {
        if (this.fields == null) {
            this.fields = new ArrayList();
        }
        return this.fields;
    }

    public void setFields(List<BehanceSDKCreativeFieldDTO> list) {
        this.fields = list;
    }

    public void addField(BehanceSDKCreativeFieldDTO behanceSDKCreativeFieldDTO) {
        getFields().add(behanceSDKCreativeFieldDTO);
    }

    public List<BehanceSDKUserDTO> getOwners() {
        if (this.owners == null) {
            this.owners = new ArrayList();
        }
        return this.owners;
    }

    public void setOwners(List<BehanceSDKUserDTO> list) {
        this.owners = list;
    }

    public void addOwner(BehanceSDKUserDTO behanceSDKUserDTO) {
        getOwners().add(behanceSDKUserDTO);
    }

    public List<BehanceSDKEditProjectModuleAbstract> getModules() {
        if (this.modules == null) {
            this.modules = new ArrayList();
        }
        return this.modules;
    }

    public void setModules(List<BehanceSDKEditProjectModuleAbstract> list) {
        this.modules = list;
    }

    public void addModule(BehanceSDKEditProjectModuleAbstract behanceSDKEditProjectModuleAbstract) {
        getModules().add(behanceSDKEditProjectModuleAbstract);
    }

    public List<BehanceSDKTagDTO> getTools() {
        if (this.tools == null) {
            this.tools = new ArrayList();
        }
        return this.tools;
    }

    public void setTools(List<BehanceSDKTagDTO> list) {
        this.tools = list;
    }

    public void addTool(BehanceSDKTagDTO behanceSDKTagDTO) {
        getTools().add(behanceSDKTagDTO);
    }

    public void addTools(List<BehanceSDKTagDTO> list) {
        getTools().addAll(list);
    }

    public List<String> getTags() {
        if (this.tags == null) {
            this.tags = new ArrayList();
        }
        return this.tags;
    }

    public void setTags(List<String> list) {
        this.tags = list;
    }

    public void addTag(String str) {
        getTags().add(str);
    }

    public BehanceSDKProjectCoversDTO getCovers() {
        return this.covers;
    }

    public void setCovers(BehanceSDKProjectCoversDTO behanceSDKProjectCoversDTO) {
        this.covers = behanceSDKProjectCoversDTO;
    }

    public BehanceSDKCopyrightOption getCopyright() {
        return this.copyright;
    }

    public void setCopyright(BehanceSDKCopyrightOption behanceSDKCopyrightOption) {
        this.copyright = behanceSDKCopyrightOption;
    }

    public List<BehanceSDKTagDTO> getCompaniesSchools() {
        return this.companiesSchools;
    }

    public void setCompaniesSchools(List<BehanceSDKTagDTO> list) {
        this.companiesSchools = list;
    }

    public List<BehanceSDKUserDTO> getCredits() {
        return this.credits;
    }

    public void setCredits(List<BehanceSDKUserDTO> list) {
        this.credits = list;
    }

    public List<BehanceSDKTeamDTO> getTeams() {
        return this.teams;
    }

    public void setTeams(List<BehanceSDKTeamDTO> list) {
        this.teams = list;
    }

    public int getBackgroundColor() {
        return this.backgroundColor;
    }

    public void setBackgroundColor(int i) {
        this.backgroundColor = i;
    }
}
