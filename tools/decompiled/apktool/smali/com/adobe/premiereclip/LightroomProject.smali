.class public Lcom/adobe/premiereclip/LightroomProject;
.super Landroid/app/IntentService;
.source "LightroomProject.java"


# instance fields
.field private collectionAssetsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;"
        }
    .end annotation
.end field

.field private logTag:Ljava/lang/String;

.field final maxAssetAllowed:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "lightroomproject"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 53
    const-string/jumbo v0, "LightRoomProject"

    iput-object v0, p0, Lcom/adobe/premiereclip/LightroomProject;->logTag:Ljava/lang/String;

    .line 54
    const/16 v0, 0x64

    iput v0, p0, Lcom/adobe/premiereclip/LightroomProject;->maxAssetAllowed:I

    .line 58
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const v5, 0x10008000

    const/4 v4, 0x1

    .line 62
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/TourViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    const-string/jumbo v1, "LightroomProject"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/LightroomProject;->startActivity(Landroid/content/Intent;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 71
    if-eqz p1, :cond_0

    .line 72
    const-string/jumbo v2, "com.adobe.premiereclip.ADOBE_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    const-string/jumbo v0, "com.adobe.premiereclip.PROJECT_NAME"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string/jumbo v2, "com.adobe.premiereclip.COLLECTION_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/adobe/premiereclip/MainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    const-string/jumbo v3, "LightRoomProject"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    const-string/jumbo v3, "ProjectName"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string/jumbo v0, "albumId"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/LightroomProject;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const-string/jumbo v1, "LightroomClipIdNotSame"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/LightroomProject;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
