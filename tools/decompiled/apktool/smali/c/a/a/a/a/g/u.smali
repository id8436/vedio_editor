.class public final enum Lc/a/a/a/a/g/u;
.super Ljava/lang/Enum;
.source "SettingsCacheBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lc/a/a/a/a/g/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/a/a/a/a/g/u;

.field public static final enum b:Lc/a/a/a/a/g/u;

.field public static final enum c:Lc/a/a/a/a/g/u;

.field private static final synthetic d:[Lc/a/a/a/a/g/u;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lc/a/a/a/a/g/u;

    const-string/jumbo v1, "USE_CACHE"

    invoke-direct {v0, v1, v2}, Lc/a/a/a/a/g/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a/a/g/u;->a:Lc/a/a/a/a/g/u;

    .line 35
    new-instance v0, Lc/a/a/a/a/g/u;

    const-string/jumbo v1, "SKIP_CACHE_LOOKUP"

    invoke-direct {v0, v1, v3}, Lc/a/a/a/a/g/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a/a/g/u;->b:Lc/a/a/a/a/g/u;

    .line 40
    new-instance v0, Lc/a/a/a/a/g/u;

    const-string/jumbo v1, "IGNORE_CACHE_EXPIRATION"

    invoke-direct {v0, v1, v4}, Lc/a/a/a/a/g/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a/a/g/u;->c:Lc/a/a/a/a/g/u;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lc/a/a/a/a/g/u;

    sget-object v1, Lc/a/a/a/a/g/u;->a:Lc/a/a/a/a/g/u;

    aput-object v1, v0, v2

    sget-object v1, Lc/a/a/a/a/g/u;->b:Lc/a/a/a/a/g/u;

    aput-object v1, v0, v3

    sget-object v1, Lc/a/a/a/a/g/u;->c:Lc/a/a/a/a/g/u;

    aput-object v1, v0, v4

    sput-object v0, Lc/a/a/a/a/g/u;->d:[Lc/a/a/a/a/g/u;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/a/a/a/a/g/u;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lc/a/a/a/a/g/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lc/a/a/a/a/g/u;

    return-object v0
.end method

.method public static values()[Lc/a/a/a/a/g/u;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lc/a/a/a/a/g/u;->d:[Lc/a/a/a/a/g/u;

    invoke-virtual {v0}, [Lc/a/a/a/a/g/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/a/a/a/g/u;

    return-object v0
.end method
