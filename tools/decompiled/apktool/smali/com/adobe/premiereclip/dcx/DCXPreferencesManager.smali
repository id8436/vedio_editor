.class public Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;
.super Ljava/lang/Object;
.source "DCXPreferencesManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DCXPreferencesManager"

.field public static final defaultBumperPath:Ljava/lang/String;

.field private static instance:Lcom/adobe/premiereclip/dcx/DCXPreferencesManager; = null

.field private static final kPremiereHrefRootPreferences:Ljava/lang/String; = "assets/adobe-premiereclip-preferences/"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/bumper/promo_roll.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->defaultBumperPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->instance:Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;

    invoke-direct {v0}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->instance:Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;

    .line 57
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->instance:Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;

    return-object v0
.end method

.method public static initAssets()V
    .locals 5

    .prologue
    .line 49
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->defaultBumperPath:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->defaultBumperPath:Ljava/lang/String;

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 50
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09002a

    sget-object v2, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->defaultBumperPath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/util/FileOps;->copyRawFileToStorage(Landroid/content/Context;ILjava/lang/String;)Z

    .line 51
    return-void
.end method

.method private resetStateForNodeWithPath(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 101
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    .line 102
    if-eqz v0, :cond_1

    .line 103
    invoke-static {v0, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setStateForPreferences(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 104
    if-eqz v2, :cond_1

    .line 105
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v3

    .line 106
    invoke-static {v3, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 107
    const-string/jumbo v0, "mediaRef"

    invoke-static {v3, v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->removeKeyInNodeProperties(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 108
    if-eqz v2, :cond_1

    .line 109
    const-string/jumbo v0, "/branding/bumper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    const-string/jumbo v0, "state"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string/jumbo v0, "is_default"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    invoke-static {v3, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 119
    :try_start_1
    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    :cond_1
    :goto_1
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    .line 121
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public hrefForCompositeID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "assets/adobe-premiereclip-preferences/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetPreferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-static {}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->getInstance()Lcom/adobe/sync/database/PreferenceCompositeLoader;

    move-result-object v0

    const-string/jumbo v1, "preferences"

    invoke-virtual {v0, v1, v2, v2}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    const-string/jumbo v1, "/branding/overlay"

    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->resetStateForNodeWithPath(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 86
    const-string/jumbo v1, "/branding/bumper"

    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->resetStateForNodeWithPath(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 87
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->removeUnusedMediaRefNodesInPreferences(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V

    .line 95
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->pushProjectToServer(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 97
    :cond_0
    return-void
.end method

.method public setupPreferences(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    .locals 4

    .prologue
    .line 67
    const-string/jumbo v0, "preferences"

    .line 68
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getPathToUserCompositionDirectory()Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string/jumbo v2, "preferences"

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    const-string/jumbo v0, "DCXPreferencesManager"

    const-string/jumbo v1, "Error - preferences project already present"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 77
    :cond_0
    invoke-static {v0, p1, v1, v2}, Lcom/adobe/premiereclip/dcx/DCXProjectFactory;->newPreferencesProjectWithName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 78
    const-string/jumbo v1, "DCXPreferencesManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "New preferences with projectID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
