.class Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$7;
.super Ljava/lang/Object;
.source "YouTubeSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

.field final synthetic val$connectionStatusCode:I


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;I)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$7;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    iput p2, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$7;->val$connectionStatusCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 384
    iget v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$7;->val$connectionStatusCode:I

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$7;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    const/4 v2, 0x0

    .line 385
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 388
    return-void
.end method
