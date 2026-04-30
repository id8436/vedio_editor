.class public Lcom/adobe/premiereclip/CreatingLRProjectDialog;
.super Lcom/adobe/premiereclip/sharing/SaveToGalleryDialog;
.source "CreatingLRProjectDialog.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/sharing/SaveToGalleryDialog;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V

    .line 31
    const v0, 0x7f0202e7

    iput v0, p0, Lcom/adobe/premiereclip/CreatingLRProjectDialog;->logoDrawableID:I

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/CreatingLRProjectDialog;->prepareString:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public goToSavedState()V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/adobe/premiereclip/CreatingLRProjectDialog;->dismiss()V

    .line 38
    return-void
.end method
