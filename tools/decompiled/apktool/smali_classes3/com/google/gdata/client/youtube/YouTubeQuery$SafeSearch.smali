.class public final enum Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;
.super Ljava/lang/Enum;
.source "YouTubeQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

.field public static final enum MODERATE:Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

.field public static final enum NONE:Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

.field private static PARAMETER_TO_SAFESEARCH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum STRICT:Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 156
    new-instance v1, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    const-string/jumbo v2, "NONE"

    const-string/jumbo v3, "none"

    invoke-direct {v1, v2, v0, v3}, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->NONE:Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    .line 157
    new-instance v1, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    const-string/jumbo v2, "MODERATE"

    const-string/jumbo v3, "moderate"

    invoke-direct {v1, v2, v4, v3}, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->MODERATE:Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    .line 158
    new-instance v1, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    const-string/jumbo v2, "STRICT"

    const-string/jumbo v3, "strict"

    invoke-direct {v1, v2, v5, v3}, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->STRICT:Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    .line 155
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    sget-object v2, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->NONE:Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    aput-object v2, v1, v0

    sget-object v2, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->MODERATE:Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->STRICT:Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    aput-object v2, v1, v5

    sput-object v1, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->$VALUES:[Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    .line 185
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 186
    invoke-static {}, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->values()[Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 187
    invoke-virtual {v4}, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->toParameterValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->PARAMETER_TO_SAFESEARCH:Ljava/util/Map;

    .line 190
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
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 163
    iput-object p3, p0, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->value:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public static fromParameterValue(Ljava/lang/String;)Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;
    .locals 3

    .prologue
    .line 172
    if-nez p0, :cond_1

    .line 173
    const/4 v0, 0x0

    .line 180
    :cond_0
    return-object v0

    .line 175
    :cond_1
    sget-object v0, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->PARAMETER_TO_SAFESEARCH:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    .line 176
    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot convert safeSearch value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;
    .locals 1

    .prologue
    .line 155
    const-class v0, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->$VALUES:[Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    invoke-virtual {v0}, [Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;

    return-object v0
.end method


# virtual methods
.method public toParameterValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/gdata/client/youtube/YouTubeQuery$SafeSearch;->value:Ljava/lang/String;

    return-object v0
.end method
