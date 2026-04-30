.class final Lcom/adobe/mobile/Config$12;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 239
    invoke-static {}, Lcom/adobe/mobile/Lifecycle;->stop()V

    .line 240
    return-void
.end method
