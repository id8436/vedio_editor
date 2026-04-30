package com.behance.sdk.fragments.headless;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Environment;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import com.behance.sdk.BehanceSDKSocialAccountManager;
import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.dto.BehanceSDKImageDTO;
import com.behance.sdk.dto.BehanceSDKSocialAccountDTO;
import com.behance.sdk.dto.BehanceSDKTagDTO;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAbstract;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleImage;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleVideo;
import com.behance.sdk.dto.editor.BehanceSDKEditorProjectDTO;
import com.behance.sdk.dto.editor.BehanceSDKModulePrepareDTO;
import com.behance.sdk.dto.editor.BehanceSDKProjectPublishDTO;
import com.behance.sdk.dto.search.BehanceSDKTeamDTO;
import com.behance.sdk.dto.search.BehanceSDKUserDTO;
import com.behance.sdk.enums.BehanceSDKCopyrightOption;
import com.behance.sdk.enums.BehanceSDKSocialAccountType;
import com.behance.sdk.services.BehanceSDKProjectEditorService;
import com.behance.sdk.util.BehanceSDKFileUtils;
import com.behance.sdk.util.BehanceSDKGalleryUtils;
import com.behance.sdk.util.BehanceSDKProjectEditorParams;
import com.behance.sdk.util.BehanceSDKUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorHeadlessFragment extends Fragment {
    private ActivityCallbacks callbacks;
    private List<BehanceSDKImageDTO> coverAdditionalImages;
    private String coverPath;
    private CropAndSaveCallbacks cropAndSaveCallbacks;
    private Map<String, List<File>> files;
    private BehanceSDKEditorProjectDTO project;
    private BehanceSDKSocialAccountManager socialAccountManager;
    private boolean coverChosen = false;
    private boolean shareOnFacebook = false;
    private boolean shareOnTwitter = false;
    private int nextNewModuleId = -1;

    public interface ActivityCallbacks {
        BehanceSDKProjectEditorService getServiceInstance();

        void onModuleCountChanged(int i);

        void onPublishEligibilityChanged(boolean z);
    }

    public interface CropAndSaveCallbacks {
        void onCropAndSaveComplete();
    }

    public interface LoadFilesCallbacks {
        void onFilesLoaded(Map<String, List<File>> map, long j);
    }

    public BehanceSDKProjectEditorHeadlessFragment() {
        setRetainInstance(true);
        this.project = new BehanceSDKEditorProjectDTO();
        this.socialAccountManager = BehanceSDKSocialAccountManager.getInstance();
    }

    public List<BehanceSDKEditProjectModuleAbstract> getProjectModules() {
        return this.project.getModules();
    }

    public void setProjectModules(List<BehanceSDKEditProjectModuleAbstract> list) {
        this.project.setModules(list);
        if (this.callbacks != null) {
            this.callbacks.onModuleCountChanged(list.size());
        }
    }

    public void addProjectModule(BehanceSDKEditProjectModuleAbstract behanceSDKEditProjectModuleAbstract) {
        this.project.addModule(behanceSDKEditProjectModuleAbstract);
        if (this.callbacks != null) {
            this.callbacks.onModuleCountChanged(getProjectModules().size());
        }
    }

    public void moduleCountChanged() {
        if (this.callbacks != null) {
            this.callbacks.onModuleCountChanged(getProjectModules().size());
        }
    }

    public List<BehanceSDKImageDTO> getCoverAdditionalImages() {
        if (this.coverAdditionalImages == null) {
            this.coverAdditionalImages = new ArrayList();
        }
        return this.coverAdditionalImages;
    }

    public void addCoverAdditionalImages(BehanceSDKImageDTO behanceSDKImageDTO) {
        getCoverAdditionalImages().add(behanceSDKImageDTO);
    }

    public List<BehanceSDKImageDTO> getCoverImages() {
        ArrayList arrayList = new ArrayList();
        for (BehanceSDKEditProjectModuleAbstract behanceSDKEditProjectModuleAbstract : getProjectModules()) {
            if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleImage) {
                arrayList.add(new BehanceSDKImageDTO((BehanceSDKEditProjectModuleImage) behanceSDKEditProjectModuleAbstract));
            }
        }
        arrayList.addAll(getCoverAdditionalImages());
        if (arrayList.isEmpty()) {
            if (isCoverChosen()) {
                arrayList.add(new BehanceSDKImageDTO(getCoverPath(), 404, 316));
            } else if (getDraftCover() != null) {
                arrayList.add(new BehanceSDKImageDTO(getDraftCover(), 404, 316));
            }
        }
        return arrayList;
    }

    public String getDraftCover() {
        if (this.project.getCovers() == null) {
            return null;
        }
        return this.project.getCovers().getOriginalCoverImage();
    }

    public int getNextNewModuleId() {
        int i = this.nextNewModuleId;
        this.nextNewModuleId = i - 1;
        return i;
    }

    public void setCallbacks(ActivityCallbacks activityCallbacks) {
        this.callbacks = activityCallbacks;
    }

    public BehanceSDKCopyrightOption getCopyrightOption() {
        if (this.project.getCopyright() == null) {
            this.project.setCopyright(BehanceSDKCopyrightOption.BY_NC_ND);
        }
        return this.project.getCopyright();
    }

    public void setCopyrightOption(BehanceSDKCopyrightOption behanceSDKCopyrightOption) {
        this.project.setCopyright(behanceSDKCopyrightOption);
    }

    public boolean isAdultContent() {
        return this.project.isMatureContent();
    }

    public void setAdultContent(boolean z) {
        this.project.setMatureContent(z);
    }

    public boolean isCommentsDisabled() {
        return !this.project.isAllowComments();
    }

    public void setCommentsDisabled(boolean z) {
        this.project.setAllowComments(!z);
    }

    public String getTitle() {
        return this.project.getName() == null ? "" : this.project.getName();
    }

    public void setTitle(String str) {
        this.project.setName(str);
        if (this.callbacks != null) {
            this.callbacks.onPublishEligibilityChanged(isPublishEligible());
        }
    }

    public String getTags() {
        return BehanceSDKUtils.toCommaSeparatedString(this.project.getTags());
    }

    public void setTags(String str) {
        if (str != null) {
            if (str.isEmpty()) {
                this.project.setTags(new ArrayList());
            } else {
                this.project.setTags(Arrays.asList(str.split("\\s*,\\s*")));
            }
        }
        if (this.callbacks != null) {
            this.callbacks.onPublishEligibilityChanged(isPublishEligible());
        }
    }

    public String getDescription() {
        return this.project.getDescription() == null ? "" : this.project.getDescription();
    }

    public void setDescription(String str) {
        this.project.setDescription(str);
    }

    public List<BehanceSDKTagDTO> getTools() {
        return this.project.getTools();
    }

    public void setTools(List<BehanceSDKTagDTO> list) {
        this.project.setTools(list);
    }

    public void addTool(BehanceSDKTagDTO behanceSDKTagDTO) {
        this.project.addTool(behanceSDKTagDTO);
    }

    public void addTool(List<BehanceSDKTagDTO> list) {
        this.project.addTools(list);
    }

    public List<BehanceSDKTagDTO> getCompaniesSchools() {
        return this.project.getCompaniesSchools();
    }

    public void setCompaniesSchools(List<BehanceSDKTagDTO> list) {
        this.project.setCompaniesSchools(list);
    }

    public List<BehanceSDKUserDTO> getCoOwners() {
        return this.project.getOwners();
    }

    public void setCoOwners(List<BehanceSDKUserDTO> list) {
        this.project.setOwners(list);
    }

    public List<BehanceSDKUserDTO> getCredits() {
        return this.project.getCredits();
    }

    public void setCredits(List<BehanceSDKUserDTO> list) {
        this.project.setCredits(list);
    }

    public void saveCoverBitmap(@NonNull final Bitmap bitmap) {
        this.coverChosen = true;
        new Thread() { // from class: com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:37:0x007c A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Type inference failed for: r0v9, types: [com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment] */
            /* JADX WARN: Type inference failed for: r1v0 */
            /* JADX WARN: Type inference failed for: r1v3 */
            /* JADX WARN: Type inference failed for: r1v5, types: [com.behance.sdk.dto.editor.BehanceSDKModulePrepareDTO] */
            /* JADX WARN: Type inference failed for: r2v1 */
            /* JADX WARN: Type inference failed for: r2v2, types: [java.io.FileOutputStream] */
            /* JADX WARN: Type inference failed for: r2v3 */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // java.lang.Thread, java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() throws java.lang.Throwable {
                /*
                    r5 = this;
                    r4 = 100
                    r3 = 0
                    android.graphics.Bitmap r0 = r2
                    r1 = 808(0x328, float:1.132E-42)
                    r2 = 632(0x278, float:8.86E-43)
                    android.graphics.Bitmap r3 = android.graphics.Bitmap.createScaledBitmap(r0, r1, r2, r3)
                    android.graphics.Bitmap r0 = r2
                    r0.recycle()
                    r2 = 0
                    java.io.File r0 = new java.io.File     // Catch: java.lang.Exception -> L63 java.lang.Throwable -> L79
                    com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment r1 = com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment.this     // Catch: java.lang.Exception -> L63 java.lang.Throwable -> L79
                    java.lang.String r1 = r1.getCoverPath()     // Catch: java.lang.Exception -> L63 java.lang.Throwable -> L79
                    r0.<init>(r1)     // Catch: java.lang.Exception -> L63 java.lang.Throwable -> L79
                    java.io.File r1 = r0.getParentFile()     // Catch: java.lang.Exception -> L63 java.lang.Throwable -> L79
                    r1.mkdirs()     // Catch: java.lang.Exception -> L63 java.lang.Throwable -> L79
                    r0.createNewFile()     // Catch: java.lang.Exception -> L63 java.lang.Throwable -> L79
                    java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> L63 java.lang.Throwable -> L79
                    r1.<init>(r0)     // Catch: java.lang.Exception -> L63 java.lang.Throwable -> L79
                    android.graphics.Bitmap$CompressFormat r0 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L88
                    r2 = 100
                    r3.compress(r0, r2, r1)     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L88
                    if (r1 == 0) goto L39
                    r1.close()     // Catch: java.io.IOException -> L5e
                L39:
                    r3.recycle()
                    com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment r0 = com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment.this
                    com.behance.sdk.dto.editor.BehanceSDKModulePrepareDTO r1 = new com.behance.sdk.dto.editor.BehanceSDKModulePrepareDTO
                    com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment r2 = com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment.this
                    java.lang.String r2 = r2.getCoverPath()
                    r1.<init>(r4, r2)
                    r0.uploadFile(r1)
                    com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment r0 = com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment.this
                    com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment$CropAndSaveCallbacks r0 = com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment.access$100(r0)
                    if (r0 == 0) goto L5d
                    com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment r0 = com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment.this
                    com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment$CropAndSaveCallbacks r0 = com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment.access$100(r0)
                    r0.onCropAndSaveComplete()
                L5d:
                    return
                L5e:
                    r0 = move-exception
                    r0.printStackTrace()
                    goto L39
                L63:
                    r0 = move-exception
                    r1 = r2
                L65:
                    r0.printStackTrace()     // Catch: java.lang.Throwable -> L85
                    com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment r0 = com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment.this     // Catch: java.lang.Throwable -> L85
                    r2 = 0
                    com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment.access$002(r0, r2)     // Catch: java.lang.Throwable -> L85
                    if (r1 == 0) goto L39
                    r1.close()     // Catch: java.io.IOException -> L74
                    goto L39
                L74:
                    r0 = move-exception
                    r0.printStackTrace()
                    goto L39
                L79:
                    r0 = move-exception
                L7a:
                    if (r2 == 0) goto L7f
                    r2.close()     // Catch: java.io.IOException -> L80
                L7f:
                    throw r0
                L80:
                    r1 = move-exception
                    r1.printStackTrace()
                    goto L7f
                L85:
                    r0 = move-exception
                    r2 = r1
                    goto L7a
                L88:
                    r0 = move-exception
                    goto L65
                */
                throw new UnsupportedOperationException("Method not decompiled: com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment.AnonymousClass1.run():void");
            }
        }.start();
    }

    public void setCropAndSaveCallbacks(CropAndSaveCallbacks cropAndSaveCallbacks) {
        this.cropAndSaveCallbacks = cropAndSaveCallbacks;
    }

    public List<BehanceSDKTeamDTO> getTeams() {
        return this.project.getTeams();
    }

    public void setTeams(List<BehanceSDKTeamDTO> list) {
        this.project.setTeams(list);
    }

    public boolean isCoverChosen() {
        return this.coverChosen;
    }

    public void setProject(BehanceSDKEditorProjectDTO behanceSDKEditorProjectDTO) {
        this.project = behanceSDKEditorProjectDTO;
    }

    public boolean isShareOnTwitter() {
        return this.shareOnTwitter;
    }

    public void setShareOnTwitter(boolean z) {
        this.shareOnTwitter = z;
    }

    public boolean isShareOnFacebook() {
        return this.shareOnFacebook;
    }

    public void setShareOnFacebook(boolean z) {
        this.shareOnFacebook = z;
    }

    public List<BehanceSDKCreativeFieldDTO> getSelectedFields() {
        return this.project.getFields() == null ? new ArrayList() : this.project.getFields();
    }

    public void setSelectedFields(List<BehanceSDKCreativeFieldDTO> list) {
        this.project.setFields(list);
        if (this.callbacks != null) {
            this.callbacks.onPublishEligibilityChanged(isPublishEligible());
        }
    }

    public boolean publish(boolean z) {
        if (z && !isPublishEligible()) {
            return false;
        }
        BehanceSDKProjectPublishDTO behanceSDKProjectPublishDTO = new BehanceSDKProjectPublishDTO();
        behanceSDKProjectPublishDTO.setProject(this.project);
        behanceSDKProjectPublishDTO.setPublish(z);
        behanceSDKProjectPublishDTO.setShareFacebook(this.shareOnFacebook);
        behanceSDKProjectPublishDTO.setShareTwitter(this.shareOnTwitter);
        this.callbacks.getServiceInstance().publishProject(behanceSDKProjectPublishDTO);
        return true;
    }

    public void uploadFile(BehanceSDKModulePrepareDTO behanceSDKModulePrepareDTO) {
        if (this.callbacks != null && this.callbacks.getServiceInstance() != null) {
            this.callbacks.getServiceInstance().uploadFile(behanceSDKModulePrepareDTO);
        }
    }

    public void transformEmbed(BehanceSDKModulePrepareDTO behanceSDKModulePrepareDTO) {
        if (this.callbacks != null && this.callbacks.getServiceInstance() != null) {
            this.callbacks.getServiceInstance().transformEmbed(behanceSDKModulePrepareDTO);
        }
    }

    public String getCoverPath() {
        if (this.coverPath == null) {
            this.coverPath = BehanceSDKFileUtils.getAppStoragePath() + "cover-" + UUID.randomUUID() + ".png";
        }
        return this.coverPath;
    }

    public BehanceSDKSocialAccountDTO getFacebookAccount() {
        return this.socialAccountManager.getAccount(BehanceSDKSocialAccountType.FACEBOOK, getActivity());
    }

    public BehanceSDKSocialAccountDTO getTwitterAccount() {
        return this.socialAccountManager.getAccount(BehanceSDKSocialAccountType.TWITTER, getActivity());
    }

    public BehanceSDKSocialAccountManager getSocialAccountManager() {
        return this.socialAccountManager;
    }

    public void setProjectDetailsFromParams(BehanceSDKProjectEditorParams behanceSDKProjectEditorParams) {
        if (behanceSDKProjectEditorParams.getProjectTitle() != null) {
            setTitle(behanceSDKProjectEditorParams.getProjectTitle());
        }
        if (behanceSDKProjectEditorParams.getProjectDescription() != null) {
            setDescription(behanceSDKProjectEditorParams.getProjectDescription());
        }
        if (behanceSDKProjectEditorParams.getProjectTags() != null) {
            setTags(behanceSDKProjectEditorParams.getProjectTags());
        }
        if (behanceSDKProjectEditorParams.getProjectModules() != null) {
            for (BehanceSDKEditProjectModuleAbstract behanceSDKEditProjectModuleAbstract : behanceSDKProjectEditorParams.getProjectModules()) {
                String path = null;
                if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleImage) {
                    path = ((BehanceSDKEditProjectModuleImage) behanceSDKEditProjectModuleAbstract).getPath();
                } else if (behanceSDKEditProjectModuleAbstract instanceof BehanceSDKEditProjectModuleVideo) {
                    path = ((BehanceSDKEditProjectModuleVideo) behanceSDKEditProjectModuleAbstract).getPath();
                }
                if (path != null) {
                    uploadFile(new BehanceSDKModulePrepareDTO(getNextNewModuleId(), path));
                    addProjectModule(behanceSDKEditProjectModuleAbstract);
                }
            }
        }
        if (behanceSDKProjectEditorParams.getCopyrightOption() != null) {
            setCopyrightOption(behanceSDKProjectEditorParams.getCopyrightOption());
        }
        if (behanceSDKProjectEditorParams.getCreativeFields() != null) {
            setSelectedFields(behanceSDKProjectEditorParams.getCreativeFields());
        }
        if (behanceSDKProjectEditorParams.getProjectTools() != null) {
            this.project.addTools(behanceSDKProjectEditorParams.getProjectTools());
        }
    }

    public boolean isPublishEligible() {
        return (getTitle().isEmpty() || getProjectModules().isEmpty() || getSelectedFields().isEmpty()) ? false : true;
    }

    public void loadFiles(final LoadFilesCallbacks loadFilesCallbacks) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        AsyncTask.execute(new Runnable() { // from class: com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment.2
            @Override // java.lang.Runnable
            public void run() {
                BehanceSDKProjectEditorHeadlessFragment.this.files = BehanceSDKGalleryUtils.getGalleryFilePaths(Environment.getExternalStorageDirectory().getAbsolutePath());
                if (loadFilesCallbacks != null) {
                    loadFilesCallbacks.onFilesLoaded(BehanceSDKProjectEditorHeadlessFragment.this.files, System.currentTimeMillis() - jCurrentTimeMillis);
                }
            }
        });
    }

    public Map<String, List<File>> getFiles() {
        return this.files;
    }

    public int getBackgroundColor() {
        return this.project.getBackgroundColor();
    }

    public void setBackgroundColor(int i) {
        this.project.setBackgroundColor(i);
    }
}
