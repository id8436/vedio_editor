.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;
.super Ljava/lang/Object;
.source "AdobeAssetViewEditActivityConfiguration.java"


# static fields
.field public static final ADOBE_CLOUD_KEY:Ljava/lang/String; = "ADOBE_CLOUD"

.field public static final EDIT_ACTIVITY_CONFIGURATION_KEY:Ljava/lang/String; = "EDIT_ACTIVITY_CONFIGURATION"

.field public static final EDIT_ACTIVITY_OPERATION_MODE_KEY:Ljava/lang/String; = "EDIT_ACTIVITY_OPERATION_MODE"

.field public static final EDIT_PROGRESS_KEY:Ljava/lang/String; = "EDIT_PROGRESS_KEY"

.field public static final MULTI_SELECT_EDIT_TARGET_HREF_KEY:Ljava/lang/String; = "MULTI_SELECT_EDIT_TARGET_HREF"


# instance fields
.field private _cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field private _configuration:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityOperationMode;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;->_configuration:Ljava/util/HashMap;

    .line 22
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;->_configuration:Ljava/util/HashMap;

    const-string/jumbo v1, "EDIT_ACTIVITY_OPERATION_MODE"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public static getConfigurationFromBundle(Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;
    .locals 3

    .prologue
    .line 38
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;

    const-string/jumbo v0, "EDIT_ACTIVITY_OPERATION_MODE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityOperationMode;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityOperationMode;)V

    .line 39
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;->getEditActivityOperationMode()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityOperationMode;

    move-result-object v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityOperationMode;->ADOBE_ASSET_VIEW_EDIT_ACTIVITY_OPERATION_MODE_MULTI_SELECT_EDIT:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityOperationMode;

    if-ne v0, v2, :cond_0

    .line 41
    const-string/jumbo v0, "MULTI_SELECT_EDIT_TARGET_HREF"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;->setMultiSelectEditTargetHref(Ljava/lang/String;)V

    .line 43
    :cond_0
    const-string/jumbo v0, "ADOBE_CLOUD"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 44
    if-eqz v0, :cond_1

    .line 45
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getMatchingCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 47
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    return-object v0
.end method

.method public getEditActivityOperationMode()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityOperationMode;
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;->_configuration:Ljava/util/HashMap;

    const-string/jumbo v1, "EDIT_ACTIVITY_OPERATION_MODE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityOperationMode;

    return-object v0
.end method

.method public getSourceHref()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;->_configuration:Ljava/util/HashMap;

    const-string/jumbo v1, "MULTI_SELECT_EDIT_TARGET_HREF"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 58
    return-void
.end method

.method public setMultiSelectEditTargetHref(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;->_configuration:Ljava/util/HashMap;

    const-string/jumbo v1, "MULTI_SELECT_EDIT_TARGET_HREF"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method
