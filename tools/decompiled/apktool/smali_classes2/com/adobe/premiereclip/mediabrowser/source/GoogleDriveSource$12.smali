.class final Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$12;
.super Ljava/lang/Object;
.source "GoogleDriveSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$connectionStatusCode:I


# direct methods
.method constructor <init>(ILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 426
    iput p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$12;->val$connectionStatusCode:I

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$12;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 428
    iget v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$12;->val$connectionStatusCode:I

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GoogleDriveSource$12;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x0

    .line 429
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 432
    return-void
.end method
