.class public Lcom/adobe/premiereclip/sharing/SaveToTwitterDialog;
.super Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;
.source "SaveToTwitterDialog.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V

    .line 13
    const v0, 0x7f0a0510

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SaveToTwitterDialog;->sharingString:Ljava/lang/String;

    .line 14
    const v0, 0x7f02031c

    iput v0, p0, Lcom/adobe/premiereclip/sharing/SaveToTwitterDialog;->logoDrawableID:I

    .line 15
    return-void
.end method
