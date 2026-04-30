.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;
.super Ljava/lang/Enum;
.source "AdobeAnalyticsEventParams.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;",
        ">;",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

.field public static final enum AdobeEventPropertyComponentName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

.field public static final enum AdobeEventPropertyComponentVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

.field public static final enum AdobeEventPropertyFrameworkName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

.field public static final enum AdobeEventPropertyFrameworkVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

.field public static final enum AdobeEventPropertyServiceAPIName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

.field public static final enum AdobeEventPropertyServiceAPIVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

.field public static final enum AdobeEventPropertyServiceName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

.field public static final enum AdobeEventPropertyServiceVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

.field private static _map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;",
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

    .line 313
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    const-string/jumbo v2, "AdobeEventPropertyFrameworkName"

    const-string/jumbo v3, "env.fw.name"

    invoke-direct {v1, v2, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyFrameworkName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    .line 314
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    const-string/jumbo v2, "AdobeEventPropertyFrameworkVersion"

    const-string/jumbo v3, "env.fw.version"

    invoke-direct {v1, v2, v5, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyFrameworkVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    .line 315
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    const-string/jumbo v2, "AdobeEventPropertyComponentName"

    const-string/jumbo v3, "env.com.name"

    invoke-direct {v1, v2, v6, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyComponentName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    .line 316
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    const-string/jumbo v2, "AdobeEventPropertyComponentVersion"

    const-string/jumbo v3, "env.com.version"

    invoke-direct {v1, v2, v7, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyComponentVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    .line 317
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    const-string/jumbo v2, "AdobeEventPropertyServiceName"

    const-string/jumbo v3, "env.svc.name"

    invoke-direct {v1, v2, v8, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyServiceName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    .line 318
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    const-string/jumbo v2, "AdobeEventPropertyServiceVersion"

    const/4 v3, 0x5

    const-string/jumbo v4, "env.svc.version"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyServiceVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    .line 319
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    const-string/jumbo v2, "AdobeEventPropertyServiceAPIName"

    const/4 v3, 0x6

    const-string/jumbo v4, "env.api.name"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyServiceAPIName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    .line 320
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    const-string/jumbo v2, "AdobeEventPropertyServiceAPIVersion"

    const/4 v3, 0x7

    const-string/jumbo v4, "env.api.version"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyServiceAPIVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    .line 312
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyFrameworkName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    aput-object v2, v1, v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyFrameworkVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    aput-object v2, v1, v5

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyComponentName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    aput-object v2, v1, v6

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyComponentVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    aput-object v2, v1, v7

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyServiceName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyServiceVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyServiceAPIName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyServiceAPIVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    aput-object v3, v1, v2

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    .line 322
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->_map:Ljava/util/Map;

    .line 326
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->values()[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 327
    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->_map:Ljava/util/Map;

    iget-object v5, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->value:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
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
    .line 334
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 335
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->value:Ljava/lang/String;

    .line 336
    return-void
.end method

.method static fromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;
    .locals 1

    .prologue
    .line 339
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->_map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;
    .locals 1

    .prologue
    .line 312
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;
    .locals 1

    .prologue
    .line 312
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->value:Ljava/lang/String;

    return-object v0
.end method
