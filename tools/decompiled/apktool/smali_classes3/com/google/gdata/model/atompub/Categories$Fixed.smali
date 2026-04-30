.class public final enum Lcom/google/gdata/model/atompub/Categories$Fixed;
.super Ljava/lang/Enum;
.source "Categories.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/model/atompub/Categories$Fixed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/model/atompub/Categories$Fixed;

.field public static final enum NO:Lcom/google/gdata/model/atompub/Categories$Fixed;

.field private static final VALUE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/atompub/Categories$Fixed;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum YES:Lcom/google/gdata/model/atompub/Categories$Fixed;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 44
    new-instance v1, Lcom/google/gdata/model/atompub/Categories$Fixed;

    const-string/jumbo v2, "NO"

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/model/atompub/Categories$Fixed;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/gdata/model/atompub/Categories$Fixed;->NO:Lcom/google/gdata/model/atompub/Categories$Fixed;

    .line 47
    new-instance v1, Lcom/google/gdata/model/atompub/Categories$Fixed;

    const-string/jumbo v2, "YES"

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/model/atompub/Categories$Fixed;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/gdata/model/atompub/Categories$Fixed;->YES:Lcom/google/gdata/model/atompub/Categories$Fixed;

    .line 41
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/gdata/model/atompub/Categories$Fixed;

    sget-object v2, Lcom/google/gdata/model/atompub/Categories$Fixed;->NO:Lcom/google/gdata/model/atompub/Categories$Fixed;

    aput-object v2, v1, v0

    sget-object v2, Lcom/google/gdata/model/atompub/Categories$Fixed;->YES:Lcom/google/gdata/model/atompub/Categories$Fixed;

    aput-object v2, v1, v3

    sput-object v1, Lcom/google/gdata/model/atompub/Categories$Fixed;->$VALUES:[Lcom/google/gdata/model/atompub/Categories$Fixed;

    .line 58
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/google/gdata/model/atompub/Categories$Fixed;->VALUE_MAP:Ljava/util/Map;

    .line 60
    invoke-static {}, Lcom/google/gdata/model/atompub/Categories$Fixed;->values()[Lcom/google/gdata/model/atompub/Categories$Fixed;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 61
    sget-object v4, Lcom/google/gdata/model/atompub/Categories$Fixed;->VALUE_MAP:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/gdata/model/atompub/Categories$Fixed;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/gdata/model/atompub/Categories$Fixed;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/gdata/model/atompub/Categories$Fixed;->VALUE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atompub/Categories$Fixed;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/model/atompub/Categories$Fixed;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/google/gdata/model/atompub/Categories$Fixed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atompub/Categories$Fixed;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/model/atompub/Categories$Fixed;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/gdata/model/atompub/Categories$Fixed;->$VALUES:[Lcom/google/gdata/model/atompub/Categories$Fixed;

    invoke-virtual {v0}, [Lcom/google/gdata/model/atompub/Categories$Fixed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/model/atompub/Categories$Fixed;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/gdata/model/atompub/Categories$Fixed;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
