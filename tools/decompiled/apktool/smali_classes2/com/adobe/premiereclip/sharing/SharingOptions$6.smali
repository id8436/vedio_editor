.class Lcom/adobe/premiereclip/sharing/SharingOptions$6;
.super Ljava/lang/Object;
.source "SharingOptions.java"

# interfaces
.implements Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/SharingOptions;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$6;->this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 411
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Premiere Pro"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didCancelVideoUploadToPremiereProAfterSyncAlert(Ljava/lang/String;)V

    .line 412
    return-void
.end method
