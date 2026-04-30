.class public Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsManager;
.super Ljava/lang/Object;
.source "AdobeAnalyticsManager.java"


# static fields
.field private static _sharedInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsManager;->_sharedInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsManager;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsManager;->_sharedInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsManager;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsManager;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsManager;->_sharedInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsManager;

    .line 35
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsManager;->_sharedInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsManager;

    return-object v0
.end method


# virtual methods
.method public disableAnalyticsReporting()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->disableAnalyticsReporting()V

    .line 55
    return-void
.end method

.method public enableAnalyticsReporting()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->enableAnalyticsReporting()V

    .line 52
    return-void
.end method

.method public enableAnalyticsReporting(Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->enableAnalyticsReporting()V

    .line 48
    return-void
.end method
