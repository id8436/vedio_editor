.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;
.super Ljava/lang/Enum;
.source "AdobeAnalyticsMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;

.field public static final enum ADOBE_ANALYTICS_MODE_PRODUCTION:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;

.field public static final enum ADOBE_ANALYTICS_MODE_TEST:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;

    const-string/jumbo v1, "ADOBE_ANALYTICS_MODE_TEST"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;->ADOBE_ANALYTICS_MODE_TEST:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;

    .line 27
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;

    const-string/jumbo v1, "ADOBE_ANALYTICS_MODE_PRODUCTION"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;->ADOBE_ANALYTICS_MODE_PRODUCTION:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;->ADOBE_ANALYTICS_MODE_TEST:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;->ADOBE_ANALYTICS_MODE_PRODUCTION:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;

    return-object v0
.end method
