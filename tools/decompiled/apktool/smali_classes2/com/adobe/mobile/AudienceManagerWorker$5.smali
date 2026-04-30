.class final Lcom/adobe/mobile/AudienceManagerWorker$5;
.super Ljava/lang/Object;
.source "AudienceManagerWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-static {v0}, Lcom/adobe/mobile/AudienceManagerWorker;->access$500(Ljava/lang/String;)V

    .line 219
    invoke-static {v0}, Lcom/adobe/mobile/AudienceManagerWorker;->access$600(Ljava/util/Map;)V

    .line 220
    return-void
.end method
