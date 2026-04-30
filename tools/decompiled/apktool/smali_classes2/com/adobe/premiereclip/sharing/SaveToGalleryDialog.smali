.class public Lcom/adobe/premiereclip/sharing/SaveToGalleryDialog;
.super Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;
.source "SaveToGalleryDialog.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/sharing/SaveToGalleryDialog;->mProgressStatus:I

    .line 32
    const v0, 0x7f0a046b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SaveToGalleryDialog;->prepareString:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method protected getProgressFromPrepareProgress(I)I
    .locals 0

    .prologue
    .line 37
    return p1
.end method

.method protected goToSavingState()V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/SaveToGalleryDialog;->goToSavedState()V

    .line 43
    return-void
.end method
