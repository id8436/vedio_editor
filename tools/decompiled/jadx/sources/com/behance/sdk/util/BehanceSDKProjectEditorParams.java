package com.behance.sdk.util;

import android.app.Activity;
import android.graphics.BitmapFactory;
import com.behance.sdk.IBehanceSDKProjectPublishListener;
import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.dto.BehanceSDKTagDTO;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAbstract;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleImage;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleVideo;
import com.behance.sdk.enums.BehanceSDKCopyrightOption;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorParams implements Serializable {
    private String adobeUserId;
    private String behanceUserId;
    private boolean containsAdultContent;
    private BehanceSDKCopyrightOption copyrightOption;
    private List<BehanceSDKCreativeFieldDTO> creativeFields;
    private Class<? extends Activity> notificationHandlerActivityClass;
    private String projectDescription;
    private String projectId;
    private List<BehanceSDKEditProjectModuleAbstract> projectModules;
    private String projectTags;
    private String projectTitle;
    private List<BehanceSDKTagDTO> projectTools;
    private IBehanceSDKProjectPublishListener publishListener;

    public void addProjectModule(BehanceSDKEditProjectModuleAbstract behanceSDKEditProjectModuleAbstract) {
        if (this.projectModules == null) {
            this.projectModules = new ArrayList();
        }
        behanceSDKEditProjectModuleAbstract.setNewModule(true);
        this.projectModules.add(behanceSDKEditProjectModuleAbstract);
    }

    public Class<? extends Activity> getNotificationHandlerActivityClass() {
        return this.notificationHandlerActivityClass;
    }

    public IBehanceSDKProjectPublishListener getPublishListener() {
        return this.publishListener;
    }

    public String getBehanceUserId() {
        return this.behanceUserId;
    }

    public String getAdobeUserId() {
        return this.adobeUserId;
    }

    public String getProjectId() {
        return this.projectId;
    }

    public String getProjectTitle() {
        return this.projectTitle;
    }

    public String getProjectDescription() {
        return this.projectDescription;
    }

    public String getProjectTags() {
        return this.projectTags;
    }

    public BehanceSDKCopyrightOption getCopyrightOption() {
        return this.copyrightOption;
    }

    public boolean isContainsAdultContent() {
        return this.containsAdultContent;
    }

    public List<BehanceSDKEditProjectModuleAbstract> getProjectModules() {
        return this.projectModules;
    }

    public List<BehanceSDKCreativeFieldDTO> getCreativeFields() {
        return this.creativeFields;
    }

    public List<BehanceSDKTagDTO> getProjectTools() {
        return this.projectTools;
    }

    public class Builder {
        private final BehanceSDKProjectEditorParams params = new BehanceSDKProjectEditorParams();

        public Builder setNotificationHandlerActivityClass(Class<? extends Activity> cls) {
            this.params.notificationHandlerActivityClass = cls;
            return this;
        }

        public Builder setPublishListener(IBehanceSDKProjectPublishListener iBehanceSDKProjectPublishListener) {
            this.params.publishListener = iBehanceSDKProjectPublishListener;
            return this;
        }

        public Builder addProjectTool(BehanceSDKTagDTO behanceSDKTagDTO) {
            if (this.params.projectTools == null) {
                this.params.projectTools = new ArrayList();
            }
            this.params.projectTools.add(behanceSDKTagDTO);
            return this;
        }

        public Builder setProjectId(String str) {
            this.params.projectId = str;
            return this;
        }

        public Builder setBehanceUserId(String str) {
            this.params.behanceUserId = str;
            return this;
        }

        public Builder setAdobeUserId(String str) {
            this.params.adobeUserId = str;
            return this;
        }

        public Builder addImageModuleLocal(String str) {
            BehanceSDKEditProjectModuleImage behanceSDKEditProjectModuleImage = new BehanceSDKEditProjectModuleImage();
            behanceSDKEditProjectModuleImage.setPath(str);
            BitmapFactory.Options storedImageDetails = BehanceSDKProjectEditorFileUtils.getStoredImageDetails(str);
            behanceSDKEditProjectModuleImage.setHeight(storedImageDetails.outHeight);
            behanceSDKEditProjectModuleImage.setWidth(storedImageDetails.outWidth);
            behanceSDKEditProjectModuleImage.setFullBleed(behanceSDKEditProjectModuleImage.getWidth() >= 1400);
            this.params.addProjectModule(behanceSDKEditProjectModuleImage);
            return this;
        }

        public Builder addVideoModuleLocal(String str) {
            BehanceSDKEditProjectModuleVideo behanceSDKEditProjectModuleVideo = new BehanceSDKEditProjectModuleVideo();
            behanceSDKEditProjectModuleVideo.setPath(str);
            behanceSDKEditProjectModuleVideo.setWidth(-1);
            behanceSDKEditProjectModuleVideo.setHeight(-1);
            this.params.addProjectModule(behanceSDKEditProjectModuleVideo);
            return this;
        }

        public Builder setProjectTitle(String str) {
            this.params.projectTitle = str;
            return this;
        }

        public Builder setProjectDescription(String str) {
            this.params.projectDescription = str;
            return this;
        }

        public Builder setProjectTags(String str) {
            this.params.projectTags = str;
            return this;
        }

        public Builder setAdultContent(boolean z) {
            this.params.containsAdultContent = z;
            return this;
        }

        public Builder setCopyrighOption(BehanceSDKCopyrightOption behanceSDKCopyrightOption) {
            this.params.copyrightOption = behanceSDKCopyrightOption;
            return this;
        }

        public Builder addCreativeField(BehanceSDKCreativeFieldDTO behanceSDKCreativeFieldDTO) throws Exception {
            if (this.params.creativeFields != null) {
                if (this.params.creativeFields.size() >= 3) {
                    throw new Exception("Only 3 fields allowed");
                }
            } else {
                this.params.creativeFields = new ArrayList();
            }
            this.params.creativeFields.add(behanceSDKCreativeFieldDTO);
            return this;
        }

        public BehanceSDKProjectEditorParams build() {
            return this.params;
        }
    }
}
