.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;
.super Ljava/lang/Enum;
.source "AdobeAnalyticsEventParams.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;",
        ">;",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

.field public static final enum AdobeEventPropertyContentCategory:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

.field public static final enum AdobeEventPropertyContentExtension:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

.field public static final enum AdobeEventPropertyContentHeight:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

.field public static final enum AdobeEventPropertyContentId:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

.field public static final enum AdobeEventPropertyContentMimeType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

.field public static final enum AdobeEventPropertyContentName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

.field public static final enum AdobeEventPropertyContentSize:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

.field public static final enum AdobeEventPropertyContentStatus:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

.field public static final enum AdobeEventPropertyContentType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

.field public static final enum AdobeEventPropertyContentWidth:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

.field private static _map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;",
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

    .line 223
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    const-string/jumbo v2, "AdobeEventPropertyContentId"

    const-string/jumbo v3, "content.id"

    invoke-direct {v1, v2, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentId:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    .line 224
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    const-string/jumbo v2, "AdobeEventPropertyContentName"

    const-string/jumbo v3, "content.name"

    invoke-direct {v1, v2, v5, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    .line 225
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    const-string/jumbo v2, "AdobeEventPropertyContentType"

    const-string/jumbo v3, "content.type"

    invoke-direct {v1, v2, v6, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    .line 226
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    const-string/jumbo v2, "AdobeEventPropertyContentMimeType"

    const-string/jumbo v3, "content.mimetype"

    invoke-direct {v1, v2, v7, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentMimeType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    .line 227
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    const-string/jumbo v2, "AdobeEventPropertyContentStatus"

    const-string/jumbo v3, "content.status"

    invoke-direct {v1, v2, v8, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentStatus:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    .line 228
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    const-string/jumbo v2, "AdobeEventPropertyContentWidth"

    const/4 v3, 0x5

    const-string/jumbo v4, "content.width"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentWidth:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    .line 229
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    const-string/jumbo v2, "AdobeEventPropertyContentHeight"

    const/4 v3, 0x6

    const-string/jumbo v4, "content.height"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentHeight:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    .line 230
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    const-string/jumbo v2, "AdobeEventPropertyContentSize"

    const/4 v3, 0x7

    const-string/jumbo v4, "content.size"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentSize:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    .line 231
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    const-string/jumbo v2, "AdobeEventPropertyContentCategory"

    const/16 v3, 0x8

    const-string/jumbo v4, "content.category"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentCategory:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    .line 232
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    const-string/jumbo v2, "AdobeEventPropertyContentExtension"

    const/16 v3, 0x9

    const-string/jumbo v4, "content.extension"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentExtension:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    .line 221
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentId:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    aput-object v2, v1, v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    aput-object v2, v1, v5

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    aput-object v2, v1, v6

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentMimeType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    aput-object v2, v1, v7

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentStatus:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentWidth:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentHeight:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentSize:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentCategory:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentExtension:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    aput-object v3, v1, v2

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    .line 234
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->_map:Ljava/util/Map;

    .line 238
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->values()[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 239
    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->_map:Ljava/util/Map;

    iget-object v5, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->value:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
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
    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 247
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->value:Ljava/lang/String;

    .line 248
    return-void
.end method

.method static fromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->_map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;
    .locals 1

    .prologue
    .line 221
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->value:Ljava/lang/String;

    return-object v0
.end method
