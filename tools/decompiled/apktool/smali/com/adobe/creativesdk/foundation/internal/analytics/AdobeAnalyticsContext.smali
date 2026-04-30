.class public Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsContext;
.super Ljava/lang/Object;
.source "AdobeAnalyticsContext.java"


# instance fields
.field private _assetCloudId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsContext;->_assetCloudId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAssetCloudId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsContext;->_assetCloudId:Ljava/lang/String;

    return-object v0
.end method

.method public setAssetCloudId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsContext;->_assetCloudId:Ljava/lang/String;

    .line 16
    return-void
.end method
