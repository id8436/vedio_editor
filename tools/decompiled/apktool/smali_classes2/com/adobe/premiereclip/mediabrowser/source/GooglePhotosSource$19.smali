.class final Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$19;
.super Ljava/lang/Object;
.source "GooglePhotosSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$connectionStatusCode:I


# direct methods
.method constructor <init>(ILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 563
    iput p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$19;->val$connectionStatusCode:I

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$19;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 565
    iget v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$19;->val$connectionStatusCode:I

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/GooglePhotosSource$19;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x0

    .line 566
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 569
    return-void
.end method
