.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;
.super Ljava/lang/Enum;
.source "AdobeAnalyticsEventParams.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;",
        ">;",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

.field public static final enum AdobeEventPropertyConsumerAppStoreId:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

.field public static final enum AdobeEventPropertyConsumerClientId:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

.field public static final enum AdobeEventPropertyConsumerDevice:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

.field public static final enum AdobeEventPropertyConsumerName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

.field public static final enum AdobeEventPropertyConsumerOSVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

.field public static final enum AdobeEventPropertyConsumerPlatform:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

.field public static final enum AdobeEventPropertyConsumerVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

.field private static _map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 351
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    const-string/jumbo v2, "AdobeEventPropertyConsumerClientId"

    const-string/jumbo v3, "consumer.client_id"

    invoke-direct {v1, v2, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->AdobeEventPropertyConsumerClientId:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    .line 352
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    const-string/jumbo v2, "AdobeEventPropertyConsumerName"

    const-string/jumbo v3, "consumer.name"

    invoke-direct {v1, v2, v5, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->AdobeEventPropertyConsumerName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    .line 353
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    const-string/jumbo v2, "AdobeEventPropertyConsumerVersion"

    const-string/jumbo v3, "consumer.version"

    invoke-direct {v1, v2, v6, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->AdobeEventPropertyConsumerVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    .line 354
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    const-string/jumbo v2, "AdobeEventPropertyConsumerPlatform"

    const-string/jumbo v3, "consumer.platform"

    invoke-direct {v1, v2, v7, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->AdobeEventPropertyConsumerPlatform:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    .line 355
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    const-string/jumbo v2, "AdobeEventPropertyConsumerDevice"

    const-string/jumbo v3, "consumer.device"

    invoke-direct {v1, v2, v8, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->AdobeEventPropertyConsumerDevice:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    .line 356
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    const-string/jumbo v2, "AdobeEventPropertyConsumerOSVersion"

    const/4 v3, 0x5

    const-string/jumbo v4, "consumer.os_version"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->AdobeEventPropertyConsumerOSVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    .line 357
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    const-string/jumbo v2, "AdobeEventPropertyConsumerAppStoreId"

    const/4 v3, 0x6

    const-string/jumbo v4, "consumer.app_store_id"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->AdobeEventPropertyConsumerAppStoreId:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    .line 348
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->AdobeEventPropertyConsumerClientId:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    aput-object v2, v1, v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->AdobeEventPropertyConsumerName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    aput-object v2, v1, v5

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->AdobeEventPropertyConsumerVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    aput-object v2, v1, v6

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->AdobeEventPropertyConsumerPlatform:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    aput-object v2, v1, v7

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->AdobeEventPropertyConsumerDevice:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->AdobeEventPropertyConsumerOSVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->AdobeEventPropertyConsumerAppStoreId:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    aput-object v3, v1, v2

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    .line 359
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->_map:Ljava/util/Map;

    .line 363
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->values()[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 364
    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->_map:Ljava/util/Map;

    iget-object v5, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->value:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 371
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 372
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->value:Ljava/lang/String;

    .line 373
    return-void
.end method

.method static fromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->_map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;
    .locals 1

    .prologue
    .line 348
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;
    .locals 1

    .prologue
    .line 348
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Consumer;->value:Ljava/lang/String;

    return-object v0
.end method
