.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditManager;
.super Ljava/lang/Object;
.source "AdobeMobileCreationEditManager.java"


# static fields
.field private static _session:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSession(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditOperation;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession;
    .locals 6

    .prologue
    .line 17
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditOperation;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditManager;->_session:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession;

    .line 18
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditManager;->_session:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession;

    return-object v0
.end method

.method public static getLastSesstion()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditManager;->_session:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession;

    return-object v0
.end method
