.class public final enum Lcom/d/a/a/e;
.super Ljava/lang/Enum;
.source "JsonFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/d/a/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/d/a/a/e;

.field public static final enum b:Lcom/d/a/a/e;

.field public static final enum c:Lcom/d/a/a/e;

.field public static final enum d:Lcom/d/a/a/e;

.field private static final synthetic f:[Lcom/d/a/a/e;


# instance fields
.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 76
    new-instance v0, Lcom/d/a/a/e;

    const-string/jumbo v1, "INTERN_FIELD_NAMES"

    invoke-direct {v0, v1, v3, v2}, Lcom/d/a/a/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/e;->a:Lcom/d/a/a/e;

    .line 86
    new-instance v0, Lcom/d/a/a/e;

    const-string/jumbo v1, "CANONICALIZE_FIELD_NAMES"

    invoke-direct {v0, v1, v2, v2}, Lcom/d/a/a/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/e;->b:Lcom/d/a/a/e;

    .line 102
    new-instance v0, Lcom/d/a/a/e;

    const-string/jumbo v1, "FAIL_ON_SYMBOL_HASH_OVERFLOW"

    invoke-direct {v0, v1, v4, v2}, Lcom/d/a/a/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/e;->c:Lcom/d/a/a/e;

    .line 117
    new-instance v0, Lcom/d/a/a/e;

    const-string/jumbo v1, "USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING"

    invoke-direct {v0, v1, v5, v2}, Lcom/d/a/a/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/e;->d:Lcom/d/a/a/e;

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/d/a/a/e;

    sget-object v1, Lcom/d/a/a/e;->a:Lcom/d/a/a/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/d/a/a/e;->b:Lcom/d/a/a/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/d/a/a/e;->c:Lcom/d/a/a/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/d/a/a/e;->d:Lcom/d/a/a/e;

    aput-object v1, v0, v5

    sput-object v0, Lcom/d/a/a/e;->f:[Lcom/d/a/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/d/a/a/e;->e:Z

    return-void
.end method

.method public static a()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-static {}, Lcom/d/a/a/e;->values()[Lcom/d/a/a/e;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 133
    invoke-virtual {v4}, Lcom/d/a/a/e;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/d/a/a/e;->c()I

    move-result v4

    or-int/2addr v0, v4

    .line 132
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_1
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/d/a/a/e;
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/d/a/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/d/a/a/e;

    return-object v0
.end method

.method public static values()[Lcom/d/a/a/e;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/d/a/a/e;->f:[Lcom/d/a/a/e;

    invoke-virtual {v0}, [Lcom/d/a/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/d/a/a/e;

    return-object v0
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/d/a/a/e;->c()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/d/a/a/e;->e:Z

    return v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/d/a/a/e;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
