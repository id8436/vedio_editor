.class public Lcom/adobe/premiereclip/sharing/PublishToCCVDialog;
.super Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;
.source "PublishToCCVDialog.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V

    .line 32
    const v0, 0x7f0a0512

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishToCCVDialog;->sharingString:Ljava/lang/String;

    .line 33
    const v0, 0x7f0a051a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishToCCVDialog;->publishedString:Ljava/lang/String;

    .line 34
    const v0, 0x7f0202e7

    iput v0, p0, Lcom/adobe/premiereclip/sharing/PublishToCCVDialog;->logoDrawableID:I

    .line 35
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowCCVExportProgressView()V

    .line 41
    return-void
.end method
