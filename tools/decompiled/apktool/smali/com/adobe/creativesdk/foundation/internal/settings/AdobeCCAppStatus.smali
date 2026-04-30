.class public Lcom/adobe/creativesdk/foundation/internal/settings/AdobeCCAppStatus;
.super Ljava/lang/Object;
.source "AdobeCCAppStatus.java"


# static fields
.field private static cachedClouds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/settings/AdobeCCAppStatus;->cachedClouds:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCachedClouds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/settings/AdobeCCAppStatus;->cachedClouds:Ljava/util/List;

    return-object v0
.end method

.method public static setCachedClouds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    sput-object p0, Lcom/adobe/creativesdk/foundation/internal/settings/AdobeCCAppStatus;->cachedClouds:Ljava/util/List;

    .line 19
    return-void
.end method
