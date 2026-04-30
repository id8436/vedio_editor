.class public Lcom/behance/sdk/logger/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/behance/sdk/logger/Logger;

    invoke-direct {v0, p0}, Lcom/behance/sdk/logger/Logger;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
