.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;
.super Ljava/lang/Enum;
.source "AdobeAnalyticsEventParams.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;",
        ">;",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

.field public static final enum AdobeETSContentTypeCCFile:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

.field public static final enum AdobeETSContentTypeLocalFile:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

.field public static final enum AdobeETSContentTypePSDLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

.field public static final enum AdobeETSContentTypeTypekitFont:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

.field public static final enum AdobeETSContentTypeTypekitFontFamily:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

.field public static final enum AdobeETSContentTypeTypekitFontFamilyMetadata:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

.field private static _map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;",
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

    .line 186
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    const-string/jumbo v2, "AdobeETSContentTypeCCFile"

    const-string/jumbo v3, "cc_file"

    invoke-direct {v1, v2, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->AdobeETSContentTypeCCFile:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    .line 187
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    const-string/jumbo v2, "AdobeETSContentTypeLocalFile"

    const-string/jumbo v3, "local_file"

    invoke-direct {v1, v2, v5, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->AdobeETSContentTypeLocalFile:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    .line 188
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    const-string/jumbo v2, "AdobeETSContentTypePSDLayer"

    const-string/jumbo v3, "psd_layer"

    invoke-direct {v1, v2, v6, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->AdobeETSContentTypePSDLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    .line 189
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    const-string/jumbo v2, "AdobeETSContentTypeTypekitFont"

    const-string/jumbo v3, "typekit_font"

    invoke-direct {v1, v2, v7, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->AdobeETSContentTypeTypekitFont:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    .line 190
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    const-string/jumbo v2, "AdobeETSContentTypeTypekitFontFamily"

    const-string/jumbo v3, "typekit_font_family"

    invoke-direct {v1, v2, v8, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->AdobeETSContentTypeTypekitFontFamily:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    .line 191
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    const-string/jumbo v2, "AdobeETSContentTypeTypekitFontFamilyMetadata"

    const/4 v3, 0x5

    const-string/jumbo v4, "typekit_font_family_metadata"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->AdobeETSContentTypeTypekitFontFamilyMetadata:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    .line 185
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->AdobeETSContentTypeCCFile:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    aput-object v2, v1, v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->AdobeETSContentTypeLocalFile:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->AdobeETSContentTypePSDLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->AdobeETSContentTypeTypekitFont:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->AdobeETSContentTypeTypekitFontFamily:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->AdobeETSContentTypeTypekitFontFamilyMetadata:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    aput-object v3, v1, v2

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    .line 193
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->_map:Ljava/util/Map;

    .line 197
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->values()[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 198
    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->_map:Ljava/util/Map;

    iget-object v5, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->value:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
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
    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 206
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->value:Ljava/lang/String;

    .line 207
    return-void
.end method

.method static fromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->_map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;
    .locals 1

    .prologue
    .line 185
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$ContentType;->value:Ljava/lang/String;

    return-object v0
.end method
