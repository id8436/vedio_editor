.class public Lcom/adobe/premiereclip/sharing/SaveToYouTubeDialog;
.super Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;
.source "SaveToYouTubeDialog.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V

    .line 30
    const v0, 0x7f0a0511

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SaveToYouTubeDialog;->sharingString:Ljava/lang/String;

    .line 31
    const v0, 0x7f0202ef

    iput v0, p0, Lcom/adobe/premiereclip/sharing/SaveToYouTubeDialog;->logoDrawableID:I

    .line 32
    return-void
.end method
