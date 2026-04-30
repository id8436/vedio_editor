.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;
.super Ljava/lang/Object;
.source "AdobeOneUpViewerController.java"


# static fields
.field public static final ADOBE_ONE_UP_VIEW_ASSET_CONFIGURATION_KEY:Ljava/lang/String; = "ADOBE_ONE_UP_VIEW_ASSET_CONFIGURATION"

.field public static final ADOBE_ONE_UP_VIEW_LIBRARY_CONFIGURATION_KEY:Ljava/lang/String; = "ADOBE_ONE_UP_VIEW_LIBRARY_CONFIGURATION"

.field public static final ADOBE_ONE_UP_VIEW_MOBILE_CREATION_CONFIGURATION_KEY:Ljava/lang/String; = "ADOBE_ONE_UP_VIEW_MOBILE_CREATION_CONFIGURATION"

.field public static final ADOBE_ONE_UP_VIEW_PHOTO_CONFIGURATION_KEY:Ljava/lang/String; = "ADOBE_ONE_UP_VIEW_PHOTO_CONFIGURATION"


# instance fields
.field protected configurations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerBaseConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private fileProviderAuthority:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;->configurations:Ljava/util/HashMap;

    .line 36
    return-void
.end method


# virtual methods
.method public getConfiguration(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerBaseConfiguration;
    .locals 1

    .prologue
    .line 40
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;->configurations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerBaseConfiguration;

    goto :goto_0
.end method

.method public getFileProviderAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;->fileProviderAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public setFileProviderAuthority(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;->fileProviderAuthority:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setFilesViewerConfiguration(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;->configurations:Ljava/util/HashMap;

    const-string/jumbo v1, "ADOBE_ONE_UP_VIEW_ASSET_CONFIGURATION"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public setLibraryViewerConfiguration(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerLibraryConfiguration;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;->configurations:Ljava/util/HashMap;

    const-string/jumbo v1, "ADOBE_ONE_UP_VIEW_LIBRARY_CONFIGURATION"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public setMobileCreationViewerConfiguration(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerMobileCreationConfiguration;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;->configurations:Ljava/util/HashMap;

    const-string/jumbo v1, "ADOBE_ONE_UP_VIEW_MOBILE_CREATION_CONFIGURATION"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public setPhotoViewerConfiguration(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;->configurations:Ljava/util/HashMap;

    const-string/jumbo v1, "ADOBE_ONE_UP_VIEW_PHOTO_CONFIGURATION"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method
