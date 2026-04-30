.class public Lcom/adobe/premiereclip/downloadmanager/CCDownloadDialog;
.super Lcom/adobe/premiereclip/sharing/SaveToGalleryDialog;
.source "CCDownloadDialog.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/sharing/SaveToGalleryDialog;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V

    .line 32
    const v0, 0x7f0202e7

    iput v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadDialog;->logoDrawableID:I

    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a039c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadDialog;->prepareString:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public goToSavedState()V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadDialog;->dismiss()V

    .line 39
    return-void
.end method
