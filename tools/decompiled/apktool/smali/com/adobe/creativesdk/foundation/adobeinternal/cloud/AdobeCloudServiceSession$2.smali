.class Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession$2;
.super Ljava/util/TimerTask;
.source "AdobeCloudServiceSession.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;->access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;)V

    .line 461
    return-void
.end method
