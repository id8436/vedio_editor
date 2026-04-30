.class public Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetInternal;
.super Ljava/lang/Object;
.source "AdobeAssetInternal.java"


# instance fields
.field protected mCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetInternal;->mCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    return-object v0
.end method
